package com.bear.goodsonline.users.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.goodsonline.entity.Users;
import com.bear.goodsonline.users.dao.UserDao;

@Service
@Transactional
public class UserService {
	@Autowired
	private UserDao userDao;
	public Users login(String username,String password) {
		return userDao.login(username, password);
	}
	public boolean addNewUser(Users user) {
		return userDao.insert(user);
	}
}
