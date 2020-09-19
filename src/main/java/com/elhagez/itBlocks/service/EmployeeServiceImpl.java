package com.elhagez.itBlocks.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elhagez.itBlocks.model.Employee;
import com.elhagez.itBlocks.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeRepository employeeRepository;
    @Override
    public List<Employee> findAll() {
        return employeeRepository.findAll();
    }

    @Override
    public List<Employee> search(String q) {
        return employeeRepository.findByNameContaining(q);
    }

    @Override
    public Employee findOne(int id) {
        return employeeRepository.getOne(id);
    }

    @Override
    public void save(Employee contact) {
        employeeRepository.save(contact);
    }

    @Override
    public void delete(int id) {
        employeeRepository.deleteById(id);
    }
}