package com.bear.goodsonline.users.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.goodsonline.entity.Users;
import com.bear.goodsonline.users.dao.UserDao;

@Service
@Transactional(readOnly=true)
public class UserService {
	@Resource
	private UserDao userDao;
//	public Users login(String name,String password) {
//		Users user = this.userDao.findByName(name);
//		if(user!=null) {
//			if(user.getUpassword().equals(password)) {
//				return user;
//			}else {
//				return null;
//			}
//			
//		}else {
//			return null;
//		}
//	}
	public Users login(String name,String password) {
		return userDao.login(name, password);
	}
//	public Users login(String username,String password) {
//		return userDao.login(username, password);
//	}
//	public boolean addNewUser(Users user) {
//		return userDao.insert(user);
//	}
}
