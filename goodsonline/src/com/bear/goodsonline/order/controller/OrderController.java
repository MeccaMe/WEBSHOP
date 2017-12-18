package com.bear.goodsonline.order.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.goodsonline.cart.service.CartServiceImpl;
import com.bear.goodsonline.entity.CartItem;
import com.bear.goodsonline.entity.Goods;
import com.bear.goodsonline.entity.Orders;
import com.bear.goodsonline.entity.Users;
import com.bear.goodsonline.goods.service.GoodsServiceImpl;
import com.bear.goodsonline.order.service.OrderServiceImpl;
import com.bear.goodsonline.users.service.UserServiceImpl;

@Controller
@RequestMapping("order")
public class OrderController {
	@Resource
	private OrderServiceImpl orderServiceImpl;
	@Resource
	private UserServiceImpl userServiceImpl;
	@Resource
	private GoodsServiceImpl goodsServiceImpl;
	private Object cartServiceImpl;
	/**
	 * 提交order到数据库
	 */
	@RequestMapping("/submitOrder")
	public String SubmitOrder(@RequestParam("gid")Integer gid,@RequestParam("iid")int iid,@RequestParam("img1")String img1,@RequestParam("gname")String gname,
@RequestParam("uid")String uid,@RequestParam("count")int count,@RequestParam("price")float price,HttpServletResponse response) throws IOException{
//		Orders order = new Orders();
//		order.setGid(gid);
//		order.setGname(gname);
//		order.setCount(count);
//		float total=count*price;
//		order.setTotal(total);
//		Users u=this.userServiceImpl.findUserById(Integer.parseInt(uid));
//		order.setUsers(u);
//	    order.setImg1(img1);
//	    this.orderServiceImpl.addOneOrder(order);
		int uuid = Integer.valueOf(uid);
		Users u = this.userServiceImpl.findUserById(uuid);
		int ggid = Integer.valueOf(gid);
		Goods g = this.goodsServiceImpl.getGoodsById(ggid);
		Orders o = this.orderServiceImpl.getPersonalOrdersById(g,u);
		//删除购物车中的订单
		
		
		return "";
	}
}
