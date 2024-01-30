package com.Autravels.DAO.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Autravels.DAO.LoginDAO;
import com.Autravels.Entity.User;

@Repository
public class LoginDAOImpl implements LoginDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public void signUpUser(User user) {
		int rows = jdbcTemplate.update("insert into user (`username`,`password`,`email`,`dob`) values(?,?,?,?)",user.getUsername(),user.getPassword(),user.getEmail(),user.getDob());
		System.out.println("Rows Inserted "+ rows);
		
	}

}
