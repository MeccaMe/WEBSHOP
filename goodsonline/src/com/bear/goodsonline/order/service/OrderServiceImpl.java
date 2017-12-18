package com.bear.goodsonline.order.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.goodsonline.cart.dao.CartDaoImpl;
import com.bear.goodsonline.entity.CartItem;
import com.bear.goodsonline.entity.Goods;
import com.bear.goodsonline.entity.Orders;
import com.bear.goodsonline.entity.Users;
import com.bear.goodsonline.order.dao.OrderDaoImpl;

@Service
@Transactional
public class OrderServiceImpl {
	@Resource
	private OrderDaoImpl orderDaoImpl;
	/**
	 * 查找某用户所有订单
	 */
	public List<Orders> listAll(int page,int userid){
		return this.orderDaoImpl.findAll(page,userid);
	}
	/**
	 * 增加订单
	 * @param order
	 */
	public void addOneOrder(Goods g,Users u) {
		this.orderDaoImpl.saveOrder(g, u);
	}
	public Orders getPersonalOrdersById(Goods g, Users u) {
		return this.orderDaoImpl.getOrdersById(g,u);
	}
}