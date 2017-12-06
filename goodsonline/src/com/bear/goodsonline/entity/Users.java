package com.bear.goodsonline.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="users")
public class Users {
	private int uid;
	private String uname;
	private String upassword;
	private String email;
	private String address;
//	private Cart cart;
//	private Set orderSet= new HashSet<Order>();
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
//	public Cart getCart() {
//		return cart;
//	}
//	public void setCart(Cart cart) {
//		this.cart = cart;
//	}
//	@OneToMany(mappedBy="users",targetEntity=Order.class,cascade=CascadeType.ALL)
//	public Set getOrderSet() {
//		return orderSet;
//	}
//	public void setOrderSet(Set orderSet) {
//		this.orderSet = orderSet;
//	}
//	
	
	
}
