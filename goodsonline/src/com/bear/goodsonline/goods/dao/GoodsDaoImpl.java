package com.bear.goodsonline.goods.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.goodsonline.entity.Goods;

@Repository
public class GoodsDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Goods> findAll(){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Goods");
		Query qu = this.sessionFactory.getCurrentSession().createQuery("select count(id) from Goods");
		q.setFirstResult(0);
		q.setMaxResults(12);
		return q.list();
	}
	public Goods findId(int gId){
		Goods g = this.sessionFactory.getCurrentSession().get(Goods.class,gId);
		return g;	
	}
}
