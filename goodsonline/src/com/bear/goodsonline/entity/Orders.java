//package com.bear.goodsonline.entity;
//
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//import javax.persistence.Table;
//
//@Entity
//@Table(name="order")
//public class Orders {
//	private int oid;
//	private int uid;
//	private int aid;
//	private Users users;
//	
//	@Id
//	@GeneratedValue(strategy=GenerationType.IDENTITY)
//	public int getOid() {
//		return oid;
//	}
//	public void setOid(int oid) {
//		this.oid = oid;
//	}
//	
//	public int getUid() {
//		return uid;
//	}
//	public void setUid(int uid) {
//		this.uid = uid;
//	}
//	public int getAid() {
//		return aid;
//	}
//	public void setAid(int aid) {
//		this.aid = aid;
//	}
//	@ManyToOne
//	@JoinColumn(name="uid")
//	public Users getUsers() {
//		return users;
//	}
//	public void setUsers(Users users) {
//		this.users = users;
//	}
//	
//	
//}
