package com.bear.goodsonline.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="goods")
public class Goods {
	private int gid;
	private String gname;
	private String detail;
	private float price;
	private String img1;
	private String img2;
	private String img3;
	private GoodsType goodsType;
//	private CartItem cartItem;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
		}
	
	@ManyToOne
	@JoinColumn(name="typeid")
	public GoodsType getGoodsType() {
		return goodsType;
	}
	public void setGoodsType(GoodsType goodsType) {
		this.goodsType = goodsType;
	}
//	@ManyToOne
//	@JoinColumn(name="iid")
//	public CartItem getCartItem() {
//		return cartItem;
//	}
//	public void setCartItem(CartItem cartItem) {
//		this.cartItem = cartItem;
//	}
//	
}
