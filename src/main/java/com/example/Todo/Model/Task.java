package com.example.Todo.Model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

import java.time.LocalTime;

public class Task {
    private Long task_id;
    private LocalTime createdOn;
    private String status;
    private String task;
    private LocalTime timeCreated;
    private String approvalStatus;

    @JoinColumn(name="use_id")
    @ManyToOne(cascade = CascadeType.ALL, optional = false)
    private User user;






}
