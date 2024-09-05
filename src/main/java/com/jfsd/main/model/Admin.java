package com.jfsd.main.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity

public class Admin {
	@Id
	long id;
	String password;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", password=" + password + "]";
	}
	
	

}
