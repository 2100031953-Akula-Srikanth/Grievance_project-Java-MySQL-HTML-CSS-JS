package com.jfsd.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jfsd.main.model.Student;
@Repository
public interface StudentRepository extends JpaRepository<Student, Long>{

	

}
