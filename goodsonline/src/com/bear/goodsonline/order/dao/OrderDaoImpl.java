package com.bear.goodsonline.order.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.goodsonline.cart.dao.CartDaoImpl;
import com.bear.goodsonline.entity.CartItem;
import com.bear.goodsonline.entity.Goods;
import com.bear.goodsonline.entity.Orders;
import com.bear.goodsonline.entity.Users;

@Repository
public class OrderDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	@Resource
	private CartDaoImpl cartDaoImpl;
	/**
	 * 查找属于某用户的所有已提交订单
	 * @param page
	 * @param userid
	 * @return
	 */
	public Orders getOrdersById(Goods g,Users u) {
		Orders o=null;
//		ArrayList<CartItem> list = new ArrayList<CartItem>(cartItem);
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Orders where user.uid=? and goods.gid=?");
		q.setParameter(0, u.getUid());
		q.setParameter(1, g.getGid());
		o = (Orders)q.uniqueResult();
		return o;
	}
	public List<Orders> findAll(int page,int uid){
		Query q=this.sessionFactory.getCurrentSession().createQuery("from Orders where uid="+uid);
		//分页
		q.setFirstResult((page-1)*3);
		q.setMaxResults(3);		
		return q.list();
	}
	/**
	 * 保存一个订单
	 * @param order
	 */
	public void saveOrder(Users u) {
		List<CartItem> list = cartDaoImpl.findItemByUserId(u);
		
		if(list!=null) {
			for(int i=0;i<list.size();i++) {
				Orders order = new Orders();
				CartItem cartItem = list.get(i);
				if(cartItem !=null) {
					order.setUsers(u);
					
					order.setGname(cartItem.getGname());
					order.setPrice(cartItem.getPrice());
					order.setImg1(cartItem.getImg1());
					order.setCount(cartItem.getCount());
					order.setTotal(cartItem.getTotal());
					sessionFactory.getCurrentSession().save(order);
				}
				
			}
		}
		
	}
	public List<Orders> findByUserId(Users u){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Orders where uid=?");
		query.setParameter(0, u.getUid());
		List<Orders> olist = query.list();
		return olist;
	}
		
//		public List<Orders> findOrdersByUserId(Users u){
//			Session session = sessionFactory.getCurrentSession();
//			Query query = session.createQuery("from CartItem where user.uid=?");
//			query.setParameter(0, u.getUid());
//			List<CartItem> list = query.list();
//			return list;
//			
//		}	
//		Orders o = new Orders();
//		o.setUsers(u);
//		o.setGname(g.getGname());
//		o.setImg1(g.getImg1());
//		o.setPrice(g.getPrice());
//		o.setTotal(g.getPrice());
//		o.setGoods(g);
//		
//		this.sessionFactory.getCurrentSession().save(o);
		
		
		
		
	
//	public void insertCartItem(Goods g,Users u) {
//		CartItem ci = new CartItem();
//		ci.setUser(u);
//		ci.setGname(g.getGname());
//		ci.setImg1(g.getImg1());
//		ci.setPrice(g.getPrice());
//		ci.setCount(1);
//		ci.setTotal(g.getPrice());
//		ci.setGoods(g);
//		u.getCart().getItems().add(ci);
//		
//		
//		this.sessionFactory.getCurrentSession().save(ci);
//	}
}
