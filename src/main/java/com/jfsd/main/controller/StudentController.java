package com.jfsd.main.controller;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jfsd.main.model.Student;
import com.jfsd.main.model.StudentForm;
import com.jfsd.main.repository.StudentFormRepository;
import com.jfsd.main.repository.StudentRepository;

import jakarta.servlet.http.HttpSession;
@Controller
public class StudentController {
	@Autowired
	StudentRepository sr;
	@Autowired
	StudentFormRepository srr;
	@RequestMapping("/")
	public String home()
	{
		return "index.html";
	}
	@PostMapping(value="student/studentsignup")
	
	public String signup(@ModelAttribute Student s)
	{
		sr.save(s);
        return "studenthome.jsp";

	}
	

	@PostMapping(value="student/studentform")
	public ModelAndView formsubmit(@RequestParam("action") String action,@RequestParam("nature") String nature,@RequestParam("level") String level,@RequestParam("description") String description)throws IOException 
	{
        StudentForm obj = new StudentForm();
		obj.setNature(nature);
        obj.setAction(action);
        obj.setDescription(description);
        obj.setLevel(level);
        srr.save(obj);
		ModelAndView mv = new ModelAndView();
		long scount=sr.count();
		mv.addObject("scount",scount);
		mv.setViewName("studenthome.jsp");
        return mv;
	}

	@PostMapping("student/studentlogin")
	public String login(@RequestParam("password") String password, @RequestParam("id") long id,HttpSession session) {
	    Student s = sr.findById(id).orElse(null);
	    session.setAttribute("studentId", s.getId());
        session.setAttribute("studentName", s.getName());
        session.setAttribute("studentemail",s.getEmail());
	    if (s != null && s.getId() == id && s.getPassword().equals(password)) {
	        return "studenthome.jsp";
	    }
	    return "loginfail.js";
	}
}
