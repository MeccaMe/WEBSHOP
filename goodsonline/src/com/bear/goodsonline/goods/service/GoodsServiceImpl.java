package com.bear.goodsonline.goods.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.goodsonline.entity.Goods;
import com.bear.goodsonline.entity.Page;
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
	
//	/**
//     * 分页查询 
//     * @param currentPage 当前页号：现在显示的页数
//     * @param pageSize 每页显示的记录条数
//     * @return 封闭了分页信息(包括记录集list)的Bean
//     * */
//    @SuppressWarnings("unchecked")
//    public Page queryForPage(int currentPage,int pageSize) {
//        // TODO Auto-generated method stub
//
//        Page page = new Page();        
//        //总记录数
//      int allRow = this.goodsDaoImpl.findCount();
//        //当前页开始记录
//        int offset = page.countOffset(currentPage,pageSize);  
//        //分页查询结果集
//        List<Goods> list = this.goodsDaoImpl.queryForPage(offset, pageSize); 
//
//        page.setPageNo(currentPage);
//        page.setPageSize(pageSize);
//        page.setTotalRecords(allRow);
//        page.setList(list);
//        
//        return page;
//    }

}