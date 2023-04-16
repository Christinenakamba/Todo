package com.example.Todo.Service.Impl;

import com.example.Todo.Model.Task;
import com.example.Todo.Repository.TaskRepository;
import com.example.Todo.Service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service

public class TaskServiceImpl implements TaskService {
    @Autowired
    private TaskRepository taskRepository;
    @Override
    public Task saveTask(Task task) {

        return taskRepository.save(task);
    }

    @Override
    public Task updateTask(Task task) {
        return null;
    }

    @Override
    public void deleteTask(Long id) {

    }

    @Override
    public List<Task> getAllTasks() {


        return null ;
    }
}
