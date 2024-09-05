package com.jfsd.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jfsd.main.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long>{

}
