package com.example.Todo.Controller;

import com.example.Todo.Dto.UserDto;
import com.example.Todo.Model.User;
import com.example.Todo.Repository.UserRepository;
import com.example.Todo.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/registerForm")
    public String showRegister(){
        return"registration";
    }
    @GetMapping("/login")
    public String showLogin(){
        return "login";
    }
    @PostMapping("/register")
    public String registerUser(@ModelAttribute("user")UserDto userDto,
                               BindingResult result){

        User existingUser = userRepository.findByUsername(userDto.getUsername());
        if(existingUser != null && existingUser.getUsername() != null && !existingUser.getUsername().isEmpty()){
            result.recordFieldValue("username", null,
                 "username already taken"   );
        }
        userService.saveUser(userDto);
        return "redirect:/login";

    }

    @GetMapping("/home")
    public String Task(Principal principal, ModelMap modelMap){
        String loggedUser= principal.getName();
        User user =userRepository.findByUsername(loggedUser);
        modelMap.addAttribute("user",user);
        return "index";
    }
}
