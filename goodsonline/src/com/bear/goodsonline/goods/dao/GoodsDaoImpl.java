package com.bear.goodsonline.goods.dao;

import java.awt.print.Book;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.bear.goodsonline.entity.Goods;

@Repository
public class GoodsDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	/**
	 * 查询所有商品
	 * @return
	 */
	public List<Goods> findAll(int page){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Goods");
		q.setFirstResult((page-1)*6);
		q.setMaxResults(6);
		return q.list();
	}
	/**
	 * 按类别查询
	 */
	public List<Goods> findByType(int typeid,int page){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Goods where typeid="+typeid);
		q.setFirstResult((page-1)*6);
		q.setMaxResults(6);
		return q.list();
	}
	public List<Goods> findTypeId(int typeid){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Goods where typeid="+typeid);
		return q.list();
	}
	public Goods findId(int id) {
		Session session = sessionFactory.getCurrentSession();
		Goods goods = (Goods)session.get(Goods.class, id);
		return goods;
	}
	/**
	 * 查询商品数
	 * @return
	 */
	public int findCount() {
		Query fc=this.sessionFactory.getCurrentSession().createQuery("select count(gid) from Goods");	
		Number number = (Number)fc.uniqueResult();
		int count = number.intValue();
		return count;		 
	}
	/**
	 * 按类别查询总数
	 * @param g
	 */
	public int findTypeGoodsCount(int typeid) {
		Query qc=this.sessionFactory.getCurrentSession().createQuery("select COUNT(gid) from Goods where typeid="+typeid);
		Number number = (Number)qc.uniqueResult();
		int count = number.intValue();
		return count;
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
	/**admin**/
	public List<Goods> select(){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Goods");
		List<Goods> list = query.list();
		return list;
	}
	public boolean insert(Goods goods) {
		Session session = sessionFactory.getCurrentSession();
		session.save(goods);
		return true;
	}
	public boolean delete(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("delete from Goods where gid=?");
		query.setParameter(0, id);
		query.executeUpdate();
		
		tx.commit();
		session.close();
		return true;
	}
	
	public boolean update(Goods goods) {
		Session session = sessionFactory.getCurrentSession();
		session.update(goods);
		return true;
		
	}
	public Goods selectById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Goods goods = (Goods)session.get(Goods.class,id);
		return goods;
	}
}
