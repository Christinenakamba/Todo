package com.example.Todo.Service;

import com.example.Todo.Model.Task;

import java.util.List;

public interface TaskService {
    Task saveTask(Task task);
    Task updateTask(Task task);
    void deleteTask(Long id);
    List<Task> getAllTasks();

}
