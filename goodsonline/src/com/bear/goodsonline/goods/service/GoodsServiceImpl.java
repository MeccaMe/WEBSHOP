package com.bear.goodsonline.goods.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.goodsonline.entity.Goods;
//import com.bear.goodsonline.entity.Page;
import com.bear.goodsonline.goods.dao.GoodsDaoImpl;

@Service
@Transactional
public class GoodsServiceImpl {
	@Resource
	private GoodsDaoImpl goodsDaoImpl;
/**
 *查找分页 
 **/
	public List<Goods> listAll(int page){
		return this.goodsDaoImpl.findAll(page);
	}
	/**
	 * 按类别查询
	 * @return
	 */
	public List<Goods> listByType(int typeid,int page){
		return this.goodsDaoImpl.findByType(typeid,page);
	}
	public List<Goods> findTypeId(int typeid){
		return goodsDaoImpl.findTypeId(typeid);
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
/**
 * 得到页码数
 * @return
 */
	public int getPageCount() {
		 return (int) Math.ceil((this.goodsDaoImpl.findCount()/6));		
	}
/**
 * 分类查询页码数
 */
	public int getTypeGoodsPageCount(int typeid) {
		return (int) Math.ceil((this.goodsDaoImpl.findTypeGoodsCount(typeid))/3);
	}	
	
/**admin**/
	public List<Goods> findAll(){
		List<Goods> list = goodsDaoImpl.select();	
		return list;
	}
	public boolean addNewGoods(Goods goods) {
		return goodsDaoImpl.insert(goods);
	}
	public boolean deleteGoods(int id) {
		return goodsDaoImpl.delete(id);
	}
	
	public boolean updateGoods(Goods goods) {
		return goodsDaoImpl.update(goods);
	}
	public Goods selectById(int id) {
		return goodsDaoImpl.selectById(id);
	}
	/**
	 * cart按名字查找
	 * @param gname
	 * @return
	 */
	public Goods getGoodsById(int id) {
		// TODO Auto-generated method stub
		return goodsDaoImpl.findId(id);
	}
	

}