package com.bear.goodsonline.goods.controller;

import java.io.IOException;
import java.util.ArrayList;
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
	/**
	 * 跳转list
	**/
	@RequestMapping("/list")	
	public String list(HttpServletResponse response,@RequestParam(value="pageNum",defaultValue="1")Integer page,HttpServletRequest request,Model model) {
		List<Goods> list = this.goodsServiceImpl.listAll(page);
		model.addAttribute("list",list);
		
		//分页
		int pageCount=this.goodsServiceImpl.getPageCount();
		//存到request里比存到session快
//		 session.setAttribute("pageCount",pageCount);
		model.addAttribute("pageCount",pageCount);
		 int pageNum = 1;
//		 session.setAttribute("pageNum",pageNum);
		 model.addAttribute("pageNum",pageNum);
		 if(0==pageNum|| pageNum<0) {
//			 session.setAttribute("pageNum",1); 
			 model.addAttribute("pageNum",1);
		 }else {
//			 session.setAttribute("pageNum",pageNum);
			 model.addAttribute("pageNum",pageNum);
			 	}
		//分类
		 List<Type> goodsTypeList = this.goodsTypeServiceImpl.listGoodsType();
//		 session.setAttribute("goodsTypeList", goodsTypeList);	
		 model.addAttribute("goodsTypeList", goodsTypeList);
		return "front/list";
	}
	/**
	 * 分类查询
	 * @param goods
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/selectByType")
	private String selectByType(@RequestParam("typeid")String typeid,@RequestParam(value="pageNum",defaultValue="1")Integer page,HttpSession session,HttpServletResponse response)throws IOException {
		List<Goods> GoodsByTypeList = this.goodsServiceImpl.listByType(Integer.parseInt(typeid),page);
		session.setAttribute("list", GoodsByTypeList);
		//分页
		int pageCount = this.goodsServiceImpl.getTypeGoodsPageCount(Integer.parseInt(typeid));
		session.setAttribute("pageCount", pageCount);
		int pageNum = 1;
		session.setAttribute("pageNum",pageNum);
		 if(0==pageNum|| pageNum<0) {
			 session.setAttribute("pageNum",1); 
		 }else {
			 session.setAttribute("pageNum",pageNum);
			 return "front/list";
			 	}
		return typeid;
	}
	/**
	 * 跳转single
	**/
	@RequestMapping("/single")
	private String single(Goods goods,Model model,HttpServletRequest request) {
		String id = request.getParameter("goodsId");
		int goods_id = Integer.valueOf(id);
		goods = goodsServiceImpl.findId(goods_id);
		model.addAttribute("goods", goods);
		return "front/single";
	}
	/**
	 * backstage
	**/
	/****/
	@RequestMapping("/goodsList")
	private String goodsList(Model model) {
		List<Goods> list = goodsServiceImpl.findAll();
		model.addAttribute("goodslist",list);
		return "backstage/GoodsTable";
	}
	/****/
	@RequestMapping("/addGoods")
	private String addGoods(Goods goods,Model model) {
		boolean result = goodsServiceImpl.addNewGoods(goods);
		if(result) {
			return "redirect:goodsList";
		}else {
			model.addAttribute("errormsg", "添加失败");
			return "backstage/GoodsForm";
		}
	}
	/****/
	@RequestMapping("/deleteGoods")
	private String deleteGoods(Model model,HttpServletRequest request) {
		String id = request.getParameter("id");
		int gId = Integer.valueOf(id);
		boolean result = goodsServiceImpl.deleteGoods(gId);
		if(result) {
			return "redirect:goodsList";
		}else {
			model.addAttribute("errormsg","添加失败");
			return "redirect:goodsList";
		}
	}
	/****/
	@RequestMapping("/updatesubmitgoods")
	private String updateGoods(Goods goods,Model model,HttpServletRequest request) {
		boolean result = goodsServiceImpl.updateGoods(goods);
		if(result) {
			return "redirect:goodsList";
		}else {
			model.addAttribute("goods",goods);
			model.addAttribute("errormsg","更新失败");
			return "redirect:updateGoods";
		}
	}
	/****/
	@RequestMapping("/updateGoods")
	private String submitGoods(Goods goods,Model model,HttpServletRequest request) {
		String id = request.getParameter("id");	
		int gId = Integer.valueOf(id);
		goods = goodsServiceImpl.selectById(gId);
		model.addAttribute("goods",goods);
		return "backstage/GoodsUpdate";
	}
/**
 * 搜索
 */
	@RequestMapping("/searchParam")
	public String SearchGoods(@RequestParam("search")String search,HttpServletResponse response,HttpSession session)throws IOException{
		List<Goods> list = this.goodsServiceImpl.listAll(1);
		List<Goods> searchParam = new ArrayList<Goods>();
		for(Goods g:list) {
			if(g.getGname().contains(search)) {
				searchParam.add(g);
			}
		}
		//分页
		int pageCount=(int)(searchParam.size()/6);
		session.setAttribute("pageCount",pageCount);
		int pageNum=1;
		session.setAttribute("pageNum",pageNum);
		if(0==pageNum|| pageNum<0) {
            session.setAttribute("pageNum",1);							 
		}else {
			session.setAttribute("pageNum",pageNum);}		
		session.setAttribute("list", searchParam);
		return "front/list";
	}	
/**
 * 跳转分类type页面
 */
	@RequestMapping("/type")
	public String Type(HttpSession session,Goods goods,Model model,HttpServletRequest request) {
		String id = request.getParameter("typeid");
		int typeid = Integer.valueOf(id);
		List<Goods> list = goodsServiceImpl.findTypeId(typeid);
		model.addAttribute("list",list);
		int pageCount = this.goodsServiceImpl.getTypeGoodsPageCount(typeid);
		session.setAttribute("pageCount", pageCount);
		int pageNum = 1;
		session.setAttribute("pageNum",pageNum);
		 if(0==pageNum|| pageNum<0) {
			 session.setAttribute("pageNum",1); 
		 }else {
			 session.setAttribute("pageNum",pageNum);
			 	}
		return "front/type";
}
}
