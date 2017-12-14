package com.bear.goodsonline.goods.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.goodsonline.entity.Goods;
import com.bear.goodsonline.entity.Type;
import com.bear.goodsonline.entity.Type;

@Repository
public class GoodsTypeDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public List<Type> findAll(){
		Query q=this.sessionFactory.getCurrentSession().createQuery("from Type");
		return q.list();
	}
	/**
	 * 按类别查找
	 */
	public List<Goods> findByType(int typeid){
		Query q=this.sessionFactory.getCurrentSession().createQuery("select t.GoodsList from Type t where t.typeid="+typeid);
		return q.list();
	}
}
