package com.bear.goodsonline.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

//@Entity
//@Table(name="cart")
//public class Cart {
//	private Users users;
//	List<CartItem> items = new ArrayList<CartItem>();
//	@Id
//	@GeneratedValue(strategy=GenerationType.IDENTITY)
//	public List<CartItem> getItems(){
//		return items;
//	}
//	public void setItems(List<CartItem> items) {
//		this.items = items;
//	}
////	@ManyToOne
////	@Column(unique=true)
//	public Users getUsers() {
//		return users;
//	}
//	public void setUsers(Users users) {
//		this.users = users;
//	}
//	
//}
