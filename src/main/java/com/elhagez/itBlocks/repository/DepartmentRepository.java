package com.elhagez.itBlocks.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import com.elhagez.itBlocks.model.Department;

public interface DepartmentRepository extends JpaRepository<Department, Integer> {


}