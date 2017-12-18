package com.bear.goodsonline.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.criteria.Order;


@Entity
@Table(name="users")
public class Users {
	
	private int uid;
	private String uname;
	private String upassword;
	private String email;
	private String address;
	private Set<CartItem> cartSet = new HashSet<>();
	private Set<Orders> orderSet= new HashSet<>();
	
	@OneToMany(mappedBy="user",targetEntity=CartItem.class,cascade=CascadeType.ALL)
	public Set<Orders> getOrderSet() {
		return orderSet;
	}
	public void setOrderSet(Set<Orders> orderSet) {
		this.orderSet = orderSet;
	}
	@OneToMany(mappedBy="user",targetEntity=CartItem.class,cascade=CascadeType.ALL)
	public Set getCartSet() {
		return cartSet;
	}
	public void setCartSet(Set cartSet) {
		this.cartSet = cartSet;
	}
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
	

	
//	@OneToMany(mappedBy="users",targetEntity=Order.class,cascade=CascadeType.ALL)
//	public Set getOrderSet() {
//		return orderSet;
//	}
//	public void setOrderSet(Set orderSet) {
//		this.orderSet = orderSet;
//	}
//	
	
	
}
