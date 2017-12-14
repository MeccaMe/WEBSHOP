package com.bear.goodsonline.cart.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.goodsonline.cart.service.CartServiceImpl;
import com.bear.goodsonline.entity.CartItem;
import com.bear.goodsonline.entity.Goods;
import com.bear.goodsonline.entity.Users;
import com.bear.goodsonline.goods.service.GoodsServiceImpl;
import com.bear.goodsonline.users.service.UserServiceImpl;

@Controller
@RequestMapping("cart")
public class CartController {
	@Resource
	private CartServiceImpl cartServiceImpl;
	@Resource
	private UserServiceImpl userServiceImpl;
	@Resource
	private GoodsServiceImpl goodsServiceImpl;
	/**
	 * 加入购物车
	 */
	@RequestMapping("/addCart")
	public void insertCartItem(@RequestParam("gid")String gid,@RequestParam("uname")String uname,HttpServletResponse response) throws IOException {
		Users u = this.userServiceImpl.findUserByName(uname);
		int id = Integer.valueOf(gid);
		Goods g = this.goodsServiceImpl.getGoodsById(id);

		CartItem ci = this.cartServiceImpl.getCartItemByName(g, u);
		if(ci == null) {
			this.cartServiceImpl.insertCartItem(g, u);
		}else {
			this.cartServiceImpl.addOne(ci);
		}
		response.sendRedirect("front/list");
	}
	/**
	 * 在购物车中展示
	 */
	@RequestMapping("/showInCart")
	public void showInCart(@RequestParam("uname")String uname,HttpServletResponse response,HttpSession session) throws IOException {
		Users u = this.userServiceImpl.findUserByName(uname);

		List<CartItem> ciList = this.cartServiceImpl.getItemByCartName(u);
		session.setAttribute("ciList", ciList);
		double sumprice = this.cartServiceImpl.showSumPrice(u);
		session.setAttribute("sumprice", sumprice);
		response.sendRedirect("/goodsonline/front/cart.jsp");
	}
	/**
	 * 删除商品
	 */
	@RequestMapping("/deleteOne")
	public void deleteOne(@RequestParam("uname")String uname,@RequestParam("gname")String gname,HttpServletResponse response,HttpSession session) throws IOException {
		Users u = this.userServiceImpl.findUserByName(uname);

		List<CartItem> ciList = this.cartServiceImpl.deleteOne(u,gname);
		session.setAttribute("ciList", ciList);
		double sumprice = this.cartServiceImpl.showSumPrice(u);
		session.setAttribute("sumprice", sumprice);
		response.sendRedirect("/goodsonline/front/cart.jsp");
	}
	/**
	 * AJAX?更改商品个数
	 */
	@RequestMapping("/updateCount")
	public void updateCount() {
		
	}
	/**
	 * 清空购物车
	 */
	@RequestMapping("/cleanUserCart")
	public void cleanUserCart(@RequestParam("uname")String uname,HttpServletResponse response,HttpSession session) throws IOException {
		Users u = this.userServiceImpl.findUserByName(uname);

		List<CartItem> ciList = this.cartServiceImpl.cleanUserCart(u);
		session.setAttribute("ciList", ciList);
		double sumprice = this.cartServiceImpl.showSumPrice(u);
		session.setAttribute("sumprice", sumprice);
		response.sendRedirect("/goodsonline/front/cart.jsp");
	}

	
}
