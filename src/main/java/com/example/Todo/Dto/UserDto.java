package com.example.Todo.Dto;

import jakarta.persistence.Column;
import jakarta.validation.constraints.NotEmpty;

public class UserDto {
    @NotEmpty
    private String username;
    @NotEmpty
    private String firstName;
    @NotEmpty
    private String lastName;
    @NotEmpty
    private String password;
}
