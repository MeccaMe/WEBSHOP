package com.bear.goodsonline.cart.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.goodsonline.entity.CartItem;
import com.bear.goodsonline.entity.Goods;
import com.bear.goodsonline.entity.Users;

@Repository
public class CartDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	/**
	 * 加入购物车
	 * @param g
	 * @param u
	 */
	public void insertCartItem(Goods g,Users u) {
		CartItem ci = new CartItem();
		ci.setUser(u);
		ci.setGname(g.getGname());
		ci.setImg1(g.getImg1());
		ci.setPrice(g.getPrice());
		ci.setCount(1);
		ci.setTotal(g.getPrice());
		ci.setGoods(g);
	
		this.sessionFactory.getCurrentSession().save(ci);
	}
	
//	public List<CartItem> getItemByCartName(Users u) {
////		Query q = this.sessionFactory.getCurrentSession().createQuery("select sum(total) from CartItem ci where cartId =:cartId");
////		q.setParameter("cartId", c.getCartId());
//		Users user = this.sessionFactory.getCurrentSession().load(Users.class, new Integer(u.getUid()));
//		Set<CartItem> items = user.getCartItem().getItems();
//		ArrayList<CartItem> ciList = new ArrayList<CartItem>(items);
//		
//		return ciList;
//	}
	
	public List<CartItem> findItemByUserId(Users u){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from CartItem where user.uid=?");
		query.setParameter(0, u.getUid());
		List<CartItem> list = query.list();
		return list;
		
	}	
	/**
	 * 增加购物车商品
	 */
	public void addOne(CartItem ci) {
		ci.setCount(ci.getCount()+1);
		ci.setTotal(ci.getCount()*ci.getPrice());
		this.sessionFactory.getCurrentSession().update(ci);
	}
	/**
	 * 按名字查找
	 * @param g
	 * @param u
	 * @return
	 */
	public CartItem getCartItemById(Goods g,Users u) {
		CartItem cartItem=null;
//		ArrayList<CartItem> list = new ArrayList<CartItem>(cartItem);
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from CartItem where user.uid=? and goods.gid=?");
		q.setParameter(0, u.getUid());
		q.setParameter(1, g.getGid());
		cartItem = (CartItem)q.uniqueResult();
		return cartItem;
	}		
//		for (CartItem cartItem : list) {
//			if(cartItem.getGname().equals(g.getGname())) {
//				return cartItem;
//			}
//		}
//		return null;
//	}
	/**
	 * 删除商品
	 * @param u
	 * @param gname
	 * @return
	 */
	public void deleteShop(CartItem ci) {
		this.sessionFactory.getCurrentSession().delete(ci);
	}
	/**
	 * 通过订单编号查找订单
	 * @param id
	 * @return
	 */
	public CartItem findById(int id) {
		CartItem ci=this.sessionFactory.getCurrentSession().get(CartItem.class,id);
		return ci;		
	}
//	public double showSumPrice(Users u) {
//		CartItem c = u.getCartItem();
//		Query q = this.sessionFactory.getCurrentSession().createQuery("select sum(total) from CartItem ci where cartId =:cartId");
//		q.setParameter("cartId", c.getCartId());
//		double sumprice = 0.00;
//		Number number = (Number) q.uniqueResult();
//		if(number != null) {
//			sumprice = number.floatValue();
//		}
//		return sumprice;
//	}
	/**
	 * 清空购物车
	 * @param u
	 * @return
	 */
//	public List<CartItem> cleanUserCart(Users u) {
//		Set<CartItem> items = u.getCart().getItems();
//		ArrayList<CartItem> ciList = new ArrayList<CartItem>(items);
//		for (Iterator<CartItem> ciIt = ciList.iterator(); ciIt.hasNext();) {
//			CartItem ci = ciIt.next();
//			this.sessionFactory.getCurrentSession().delete(ci);
//			ciIt.remove();
//		}
//		return ciList;
//	}

}
