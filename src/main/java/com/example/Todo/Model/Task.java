package com.example.Todo.Model;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;
import java.time.LocalTime;
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Builder
@Table(name="Tasks")
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long task_id;
    @Column(name="date-created")
    private String createdOn;
    @Column(name="status")
    private String status;
    @Column(name="task")
    private String task;
    @Column(name="description")
    private String description;

    @JoinColumn(name="use_id")
    @ManyToOne(cascade = CascadeType.ALL, optional = false)
    private User user;






}
