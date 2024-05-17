package com.example.StoreSystemDemo.Employee;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class EmployeeAccount {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private Long id;
    private String username;
    private String password;
    private String role;

}
