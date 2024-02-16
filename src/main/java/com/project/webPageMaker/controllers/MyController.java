package com.project.webPageMaker.controllers;

import java.net.http.HttpRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.webPageMaker.Models.User;
import com.project.webPageMaker.repo.UserRepo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MyController {
	
	@Autowired
	UserRepo ur;
	
	@RequestMapping("/")
	public String WelcomePage() {
		return "Welcome.jsp";
	}
	
	
	@RequestMapping("/handleUserReg")
	public String handleUserReg(User user) {
		ur.save(user);
		return "home.jsp";
	}
	
	@RequestMapping(value = "/handleLogin", method = RequestMethod.POST)
	public String handlelogin(User user,HttpServletRequest req) {
		String email = user.getEmail();
		String password = user.getPassword();
		
		User u = ur.findUserByPasswordAndEmail(password, email);
		System.out.println(u);
		if(u!=null) {
			System.out.println("inside");
			req.getSession().setAttribute("CurrentUser", u);
			return "home.jsp";
		}
		
		return "login.jsp";
	}
	
	
	

}
