package com.bear.goodsonline.cart.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.goodsonline.cart.dao.CartDaoImpl;
import com.bear.goodsonline.entity.CartItem;
import com.bear.goodsonline.entity.Goods;
import com.bear.goodsonline.entity.Users;

@Service
@Transactional
public class CartServiceImpl {
	@Resource
	private CartDaoImpl cartDaoImpl;
	/**
	 * 加入购物车
	 * @param g
	 * @param u
	 */
	public void insertCartItem(Goods g, Users u) {
		this.cartDaoImpl.insertCartItem(g, u);
	}

	/**
	 * 查找购物车商品
	 */
//	public List<CartItem> getItemByCartName(Users u) {
//		return this.cartDaoImpl.getItemByCartName(u);
//	}

	/**
	 * 增加购物车商品
	 */
	public void addOne(CartItem ci) {
		this.cartDaoImpl.addOne(ci);
	}
	/**
	 * 按名称查找购物车商品
	 */
	public CartItem getPersonalCartItemById(Goods g, Users u) {
		return this.cartDaoImpl.getCartItemById(g, u);
	}

	/**
	 * 删除购物车商品
	 */
	public void deleteOne(CartItem ci) {
		this.cartDaoImpl.deleteShop(ci);
	}
	/**
	 * 总价钱
	 * @param u
	 * @return
	 */
//	public double showSumPrice(Users u) {
//		return this.cartDaoImpl.showSumPrice(u);
//	}
//
//	/**
//	 * 清空购物车
//	 * @param u
//	 * @return
//	 */
//	public List<CartItem> cleanUserCart(Users u) {
//		return this.cartDaoImpl.cleanUserCart(u);
//	}
//	/**
//	 * 按名字查找
//	 * @param g
//	 * @param u
//	 * @return
//	 */
	public List<CartItem> getCartItemByUserId(Users u) {
		// TODO Auto-generated method stub
		List<CartItem> list = cartDaoImpl.findItemByUserId(u);
		return list;
	}
	/**
     * 通过id查找订单
     * @param id
     * @return
     */
	public CartItem findById(int id) {
		return this.cartDaoImpl.findById(id);
	}
}