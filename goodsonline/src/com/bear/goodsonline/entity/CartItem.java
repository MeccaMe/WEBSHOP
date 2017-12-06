package com.bear.goodsonline.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

//@Entity
//@Table(name="cartItem")
//public class CartItem {
//	private int id;
//	private String name;
//	private float price;
//	private float total; 
//	private int count;
//	private Goods goods;
//	private Cart cart;
//
//	@Id
//	@GeneratedValue(strategy=GenerationType.IDENTITY)
//	public int getId() {
//		return id;
//	}
//	public void setId(int id) {
//		this.id = id;
//	}
//	public String getName() {
//		return name;
//	}
//	public void setName(String name) {
//		this.name = name;
//	}
//	public float getPrice() {
//		return price;
//	}
//	public void setPrice(float price) {
//		this.price = price;
//	}
//	public float getTotal() {
//		return total;
//	}
//	public void setTotal(float total) {
//		this.total = total;
//	}
//	public int getCount() {
//		 return count;
//	 }
//	 public void setCount(int count) {
//		 this.count=count;
//	 }
//	@ManyToOne
//	@JoinColumn(name="gid")
//	public Goods getGoods() {
//		return goods;
//	}
//	public void setGoods(Goods goods) {
//		this.goods = goods;
//	}
//	@ManyToOne
//	@JoinColumn(name="iid")
//	public Cart getCart() {
//		return cart;
//	}
//	public void setCart(Cart cart) {
//		this.cart = cart;
//	}
//	 
//	 
//}
