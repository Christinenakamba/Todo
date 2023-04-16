package com.example.Todo.Controller;

import com.example.Todo.Model.Task;
import com.example.Todo.Model.User;
import com.example.Todo.Repository.TaskRepository;
import com.example.Todo.Repository.UserRepository;
import com.example.Todo.Service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("/todo")
public class TaskController {
    @Autowired
    private TaskService taskService;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private TaskRepository taskRepository;

    @GetMapping("/showTask")
      public String showTask(){
        return "addTask";
    }
    @PostMapping("/saveTask")
     public String saveTask(Task task, Principal principal){
        String loggedUser= principal.getName();
        User user =userRepository.findByUsername(loggedUser);
        //create Task
        task.setStatus("pending");
        task.setCreatedOn("13/04/23");
        task.setUser(user);
        taskService.saveTask(task);
        return "redirect:/showTask";

    }
    @GetMapping("/getTask")
    public String GetAllTasks(Principal principal,ModelMap modelMap){
        String loggedUser= principal.getName();
        User user =userRepository.findByUsername(loggedUser);
        List<Task> task = taskRepository.findAll();
        modelMap.addAttribute("task",task);
            return "redirect:/showTask";

    }


}
