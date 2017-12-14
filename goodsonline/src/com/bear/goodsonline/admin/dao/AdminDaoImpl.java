package com.bear.goodsonline.admin.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bear.goodsonline.entity.Admin;


@Repository
public class AdminDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public Admin login(String adminName,String password) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Admin where aname=? and apassword=?");
		query.setParameter(0, adminName);
		query.setParameter(1, password);
		Admin admin = (Admin) query.uniqueResult();
		return admin;
	}
//	public List<Admin> select(){
//		Session session = sessionFactory.getCurrentSession();
//		Query query = session.createQuery("from Admin");
//		List<Admin> list = query.list();
//		return list;
//	}
//	public boolean insert(Admin admin) {
//		Session session = sessionFactory.getCurrentSession();
//		session.save(admin);
//		return true;
//	}
//	public boolean delete(int id) {
//		Session session = sessionFactory.openSession();
//		Transaction tx = session.beginTransaction();
//		Query query = session.createQuery("delete from Admin where id=?");
//		query.setParameter(0, id);
//		query.executeUpdate();
//		tx.commit();
//		session.close();
//		return true;
//	}
//	
//	public boolean update(Admin admin) {
//		Session session = sessionFactory.getCurrentSession();
//		session.update(admin);
//		return true;
//	}
//	public Admin selectById(int id) {
//		Session session = sessionFactory.getCurrentSession();
//		Admin admin = (Admin)session.get(Admin.class, id);
//		return admin;
//	}
}
