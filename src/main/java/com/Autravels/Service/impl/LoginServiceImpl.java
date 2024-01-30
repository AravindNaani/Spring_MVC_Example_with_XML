package com.Autravels.Service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Autravels.DAO.LoginDAO;
import com.Autravels.Entity.User;
import com.Autravels.Service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	LoginDAO loginDao;
	
	@Override
	public void signUpUserService(User user) {
		
		loginDao.signUpUser(user);
	}

}
