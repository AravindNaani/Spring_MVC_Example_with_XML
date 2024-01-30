package com.Autravels.controller;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Autravels.Entity.User;
import com.Autravels.Service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping("/sign-up")
	public String signUp() {
		return "signup";
	}
	
	@RequestMapping("/create-user")
	public String createUser(HttpServletRequest request,Model model) {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		LocalDate dob =LocalDate.parse( request.getParameter("dob"));
		
		User user = new User(username,password,email,dob);
		loginService.signUpUserService(user);
		
		return "RegistationSuccess";
	}

}
