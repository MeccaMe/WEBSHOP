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
import com.bear.goodsonline.goods.service.GoodsServiceImpl;

@Controller
@RequestMapping("goods")
public class GoodsController {
	@Resource
	private GoodsServiceImpl goodsServiceImpl;
	
	@RequestMapping("/list")
//	public String list(HttpSession session,@RequestParam(value="pageNum",defaultValue="1")int pageNum,HttpServletRequest request,Model model) {
//		String searchParam=request.getParameter("searchParam");
//		//session.setAttribute("searchParam", searchParam);
//		request.setAttribute("searchParam", searchParam);
//		List<Goods> list = this.goodsServiceImpl.listAll();
//		model.addAttribute("list",list);
//		return "front/list";
//	}
	public void list(HttpSession session,HttpServletResponse response,@RequestParam(value="pageNum",defaultValue="1")int pageNum,HttpServletRequest request,Model model)throws IOException {
		String searchParam=request.getParameter("searchParam");
		//session.setAttribute("searchParam", searchParam);
		request.setAttribute("searchParam", searchParam);
		List<Goods> list = this.goodsServiceImpl.listAll();
		session.setAttribute("list",list);
		response.sendRedirect("/goodsonline/front/list.jsp");
	}
	
//	@RequestMapping("/single")
//	public String single(Model model1,@RequestParam("goodsId")String id) {
//		Goods list = this.goodsServiceImpl.listId(Integer.parseInt(id));
//		model1.addAttribute("single",list);
//		return "front/single";
//	}
	@RequestMapping("/single")
	public void single(Model model1,@RequestParam("goodsId")String id,HttpServletResponse response,HttpSession session)throws IOException {
		Goods list = this.goodsServiceImpl.listId(Integer.parseInt(id));
		session.setAttribute("single",list);
		response.sendRedirect("/goodsonline/front/single.jsp");
	}
	
}
