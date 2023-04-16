package com.example.Todo.Service;

import com.example.Todo.Dto.UserDto;
import com.example.Todo.Model.User;

public interface UserService {
  void saveUser(UserDto userDto);
  User findByUsername(String username);
}
