package com.bear.goodsonline.goods.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bear.goodsonline.entity.Type;
import com.bear.goodsonline.goods.dao.GoodsTypeDaoImpl;
@Service
public class GoodsTypeServiceImpl {
	@Resource
	private GoodsTypeDaoImpl goodsTypeDaoImpl;
	
	public List<Type> listGoodsType(){
		return this.goodsTypeDaoImpl.findAll();
	}
}
