package com.bear.goodsonline.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="type")
public class Type {
		private int typeid;
		private String typename;
		private Set GoodsSet = new HashSet<Goods>();
		
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		public int getTypeid() {
			return typeid;
		}
		public void setTypeid(int id) {
			this.typeid = id;
		}
		@Column(name="typename")
		public String getTypename() {
			return typename;
		}
		public void setTypename(String name) {
			this.typename = name;
		}
		@OneToMany(targetEntity=Goods.class, cascade=CascadeType.ALL)
		@JoinColumn(name="typeid") 
		public Set getGoodsSet() {
			return GoodsSet;
		}
		public void setGoodsSet(Set goodsSet) {
			GoodsSet = goodsSet;
		}		
}
