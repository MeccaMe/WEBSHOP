package com.bear.goodsonline.goods.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.goodsonline.entity.Goods;
import com.bear.goodsonline.entity.Type;
import com.bear.goodsonline.goods.service.GoodsServiceImpl;
import com.bear.goodsonline.goods.service.GoodsTypeServiceImpl;

@Controller
@RequestMapping("goods")
public class GoodsController {
	@Resource
	private GoodsServiceImpl goodsServiceImpl;
	@Resource
	private GoodsTypeServiceImpl goodsTypeServiceImpl;
	@RequestMapping("/list")	
	public String list(HttpSession session,@RequestParam(value="pageNum",defaultValue="1")int pageNum,HttpServletRequest request,Model model) {
		String searchParam=request.getParameter("searchParam");
		//session.setAttribute("searchParam", searchParam);
		request.setAttribute("searchParam", searchParam);
		List<Goods> list = this.goodsServiceImpl.listAll();
		model.addAttribute("list",list);
		/**分页**/
		//动态？？？？
//		int pageCount=this.goodsServiceImpl.getPageCount();
		int pageCount=4;
		//存到request里比存到session快
		 session.setAttribute("pageCount",pageCount);
//		int pageNum=1;
		 session.setAttribute("pageNum",pageNum);
		 if(0==pageNum|| pageNum<0) {
			 session.setAttribute("pageNum",1);
			 
		 }else {
			 session.setAttribute("pageNum",pageNum);
			 	}
		return "front/list";
//		
//		//分类
//		List <Type> goodsTypelist=this.goodsTypeServiceImpl.listGoodsType();
//		 session.setAttribute("goodstypelist",goodsTypelist);
	}

	@RequestMapping("/single")
	private String single(Goods goods,Model model,HttpServletRequest request) {
		String id = request.getParameter("goodsId");
		int goods_id = Integer.valueOf(id);
		goods = goodsServiceImpl.findId(goods_id);
		model.addAttribute("goods", goods);
		return "front/single";
	}

	
}