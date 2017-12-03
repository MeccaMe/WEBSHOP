package com.bear.goodsonline.goods.dao;

import java.awt.print.Book;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.goodsonline.entity.Goods;

@Repository
public class GoodsDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Goods> findAll(){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Goods");
//		Query qu = this.sessionFactory.getCurrentSession().createQuery("select count(id) from Goods");
		q.setFirstResult(0);
		q.setMaxResults(12);
		return q.list();
	}
	public Goods findId(int id) {
//		Query q = this.sessionFactory.getCurrentSession().createQuery("select Goods ")
		Session session = sessionFactory.getCurrentSession();
		Goods goods = (Goods)session.get(Goods.class, id);
		return goods;
	}
	public int findCount() {
		Query fc=this.sessionFactory.getCurrentSession().createQuery("select count(id) from Goods");	
		return Integer.parseInt(fc.toString());
	}
	public void deleteGoods(Goods g) {
		this.sessionFactory.getCurrentSession().delete(g);
	}
	public void updateGoods(Goods g) {
		this.sessionFactory.getCurrentSession().update(g);
	}
	public void saveGoods(Goods g) {
		this.sessionFactory.getCurrentSession().save(g);
	}
	
	
	
}
