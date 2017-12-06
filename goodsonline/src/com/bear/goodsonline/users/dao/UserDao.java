package com.bear.goodsonline.users.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bear.goodsonline.entity.Users;

@Repository
public class UserDao {
	@Autowired
	private SessionFactory sessionFactory;
	public Users login(String username,String password) {
		Users user = null;
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("form Users where uname=? and upassword=?");
		query.setParameter(0, username);
		query.setParameter(1, password);
		user = (Users)query.uniqueResult();
		return user;
	}
	
	public boolean insert(Users user) {
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
		return true;
	}
	
}
