package com.elhagez.itBlocks.service;
import java.util.List;

import com.elhagez.itBlocks.model.Employee;

public interface EmployeeService {
    List<Employee> findAll();

    List<Employee> search(String q);

    Employee findOne(int id);

    void save(Employee contact);

    void delete(int id);
}