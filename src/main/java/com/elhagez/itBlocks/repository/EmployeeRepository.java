package com.elhagez.itBlocks.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.elhagez.itBlocks.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    List<Employee> findByNameContaining(String q);

}