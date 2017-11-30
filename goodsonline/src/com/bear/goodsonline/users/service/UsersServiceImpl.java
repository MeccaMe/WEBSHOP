package com.bear.goodsonline.users.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.goodsonline.entity.Users;
import com.bear.goodsonline.users.dao.UsersDaoImpl;

@Service
@Transactional(readOnly=true)
public class UsersServiceImpl {
	@Resource
	private UsersDaoImpl usersDaoImpl;
	
	public Users login(String name, String pwd){
		Users u=this.usersDaoImpl.findById(name);
		if(u!=null){
			if(u.getUpassword().equals(pwd)){
				return u;
			}else{
				return null;
			}
		}else{
			return null;
		}
}
}