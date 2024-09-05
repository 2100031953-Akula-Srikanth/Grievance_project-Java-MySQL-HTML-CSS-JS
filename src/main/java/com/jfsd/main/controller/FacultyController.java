package com.jfsd.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jfsd.main.model.Faculty;
import com.jfsd.main.repository.*;

import jakarta.servlet.http.HttpSession;
@Controller
public class FacultyController {
	@Autowired
	FacultyRepository fr;
	@PostMapping(value="faculty/facultysignup")
	public String signup(@ModelAttribute Faculty s,HttpSession session)
	{
		fr.save(s);
		session.setAttribute("facultyId", s.getId());
        session.setAttribute("facultyName", s.getName());
        session.setAttribute("facultyEmail",s.getEmail());
		return "facultyhome.jsp";
	}
	@GetMapping("faculty/facultylogin")
	public String login(@RequestParam("id") long id,@RequestParam("password") String password,HttpSession session)
	{
		Faculty s=fr.findById(id).orElse(null);	
		session.setAttribute("facultyId", s.getId());
        session.setAttribute("facultyName", s.getName());
        session.setAttribute("facultyEmail",s.getEmail());
		if (s != null && s.getId() == id && s.getPassword().equals(password)) {
	        return "facultyhome.jsp";
	    }
	
	    return "loginfail.js";
		
		
	}

}
