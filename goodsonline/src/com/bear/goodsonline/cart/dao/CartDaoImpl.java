package com.bear.goodsonline.cart.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.goodsonline.entity.Cart;
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
		ci.setGname(g.getGname());
		ci.setImg1(g.getImg1());
		ci.setPrice(g.getPrice());
		ci.setCount(1);
		ci.setTotal(g.getPrice());
		ci.setGoods(g);
//		u.getCart().getItems().add(ci);
		
		
		this.sessionFactory.getCurrentSession().save(ci);
	}
	
	public List<CartItem> getItemByCartId(Users u) {
		Users user = this.sessionFactory.getCurrentSession().load(Users.class, new Integer(u.getUid()));
		Set<CartItem> items = user.getCart().getItems();
		ArrayList<CartItem> ciList = new ArrayList<CartItem>(items);
		
		return ciList;
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
	public CartItem getCartItemByName(Goods g,Users u) {
		Set<CartItem> items = u.getCart().getItems();
		ArrayList<CartItem> list = new ArrayList<CartItem>(items);
		for (CartItem cartItem : list) {
			if(cartItem.getGname().equals(g.getGname())) {
				return cartItem;
			}
		}
		return null;
	}
	/**
	 * 删除商品
	 * @param u
	 * @param gname
	 * @return
	 */
	public List<CartItem> deleteOne(Users u,String gname) {
		Set<CartItem> items = u.getCart().getItems();
		ArrayList<CartItem> cilist = new ArrayList<CartItem>(items);
		for (int i = 0;i < cilist.size();i ++) {
			CartItem ci = cilist.get(i);
			if(ci.getGname().equals(gname)) {
				this.sessionFactory.getCurrentSession().delete(ci);
				cilist.remove(ci);
				i--;
			}
		}
		return cilist;
	}
	
	
	public double showSumPrice(Users u) {
		Cart c = u.getCart();
		Query q = this.sessionFactory.getCurrentSession().createQuery("select sum(total) from CartItem ci where cartId =:cartId");
		q.setParameter("cartId", c.getCartId());
		double sumprice = 0.00;
		Number number = (Number) q.uniqueResult();
		if(number != null) {
			sumprice = number.floatValue();
		}
		return sumprice;
	}
	/**
	 * 清空购物车
	 * @param u
	 * @return
	 */
	public List<CartItem> cleanUserCart(Users u) {
		Set<CartItem> items = u.getCart().getItems();
		ArrayList<CartItem> ciList = new ArrayList<CartItem>(items);
		for (Iterator<CartItem> ciIt = ciList.iterator(); ciIt.hasNext();) {
			CartItem ci = ciIt.next();
			this.sessionFactory.getCurrentSession().delete(ci);
			ciIt.remove();
		}
		return ciList;
	}

}
