package com.bear.goodsonline.goods.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.goodsonline.entity.Goods;
import com.bear.goodsonline.goods.dao.GoodsDaoImpl;

@Service
@Transactional(readOnly=true)
public class GoodsServiceImpl {
	@Resource
	private GoodsDaoImpl goodsDaoImpl;

	public List<Goods> listAll(){
		return this.goodsDaoImpl.findAll();
	}
	public Goods findId(int id) {
		return goodsDaoImpl.findId(id);
	}
	public void deleteOneGoods(Goods g) {
		this.goodsDaoImpl.deleteGoods(g);
	}	
	public void updateOneGoods(Goods g) {
		this.goodsDaoImpl.updateGoods(g);
	}
	public void addOneGoods(Goods g) {
		this.goodsDaoImpl.saveGoods(g);
	}

	public int getPageCount() {
		 return (int) Math.ceil((this.goodsDaoImpl.findCount()/6));		
	}
}