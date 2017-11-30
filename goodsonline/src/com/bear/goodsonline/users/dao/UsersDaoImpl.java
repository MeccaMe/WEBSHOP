package com.bear.goodsonline.users.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.goodsonline.entity.Users;

@Repository
public class UsersDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public Users findById(String uname) {
		Users u=this.sessionFactory.getCurrentSession().get(Users.class, uname);
		return u;
	}
}
