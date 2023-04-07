package com.example.Todo.Repository;

import com.example.Todo.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {
    User findByUsername(String Username);
}
