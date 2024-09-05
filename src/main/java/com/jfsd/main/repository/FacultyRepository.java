package com.jfsd.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jfsd.main.model.Faculty;
@Repository
public interface FacultyRepository extends JpaRepository<Faculty, Long>{

}
