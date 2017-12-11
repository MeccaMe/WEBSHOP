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
		q.setFirstResult(0);
		q.setMaxResults(6);
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
	//?????以下
	/**
     * 分页查询
     * @param hql 查询的条件
     * @param offset 开始记录
     * @param length 一次查询几条记录
     * @return 返回查询记录集合
     */
   @SuppressWarnings("unchecked")
   public List<Goods> queryForPage(int offset, int length) {
       // TODO Auto-generated method stub
       List<Goods> entitylist=null;
       try{
           Query query = this.sessionFactory.getCurrentSession().createQuery("from Course");
           query.setFirstResult(offset);
           query.setMaxResults(length);
           entitylist = query.list();
           
       }catch(RuntimeException re){
           throw re;
       }
       
       return entitylist;
   }
}
