package com.bear.goodsonline.users.dao;


import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.goodsonline.entity.Users;

@Repository
public class UserDao {
	@Resource
	private SessionFactory sessionFactory;
//	public Users findByName(String name) {
////		return this.sessionFactory.getCurrentSession().get(Users.class,name);-->oId方法 只能查主键
////		Users u = (Users) this.sessionFactory.getCurrentSession().createQuery("from Users where uname="+name);
//		Query q = this.sessionFactory.getCurrentSession().createQuery("from Users where uname='"+name+"'");
////		q.uniqueResult();
//		return  (Users)q.uniqueResult();
//		 
//	}
	public Users login(String username,String password) {
		Users user = null;
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from Users where uname=? and upassword=?");
		q.setParameter(0, username);
		q.setParameter(1, password);
		user = (Users)q.uniqueResult();
		return user;
		
	}
//	public Users login(String username,String password) {
//		Users user = null;
//		Session session = sessionFactory.openSession();
//		Query query = session.createQuery("from Users where uname=? and upassword=?");
//		query.setParameter(0, username);
//		query.setParameter(1, password);
//		user = (Users)query.uniqueResult();
//		return user;
//	}
//	
//	public boolean insert(Users user) {
//		Session session = sessionFactory.getCurrentSession();
//		session.save(user);
//		return true;
//	}
	
}
