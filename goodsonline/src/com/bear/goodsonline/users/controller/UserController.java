package com.bear.goodsonline.users.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.goodsonline.entity.Users;
import com.bear.goodsonline.users.service.UserServiceImpl;

@Controller
@RequestMapping("users")
public class UserController {
	@Resource
	
	private UserServiceImpl userService;
//	@RequestMapping("/userlogin")
//	public String login (@RequestParam("uname") String name,@RequestParam("upassword") String password,HttpSession session,Model model) {
//		Users user = this.userService.login(name, password);
//		if(user!=null) {
//			session.setAttribute("user", user);
//			return "index";
//		}else {
//			model.addAttribute("errorinfo","不正确");
//			return "loginregister";
//		}
//	}
	@RequestMapping("/register")
	public String register (Users user,Model model) {
		boolean result = userService.addNewUser(user);
		if(result) {
			return "front/loginregister";
		}else {
			return "front/loginregister";
		}
		
	}
	@RequestMapping("/userlogin")
	public String login(String uname,String upassword,
			HttpSession session,Model model) {
		Users user = userService.login(uname, upassword);
		if(user != null) {
			session.setAttribute("u", user);
			return "front/index";
		}else {
			return "front/loginregister";
		}
	}
	
//	@RequestMapping("/loginregister")
//	private String register(Users user,Model model) {
//		System.out.println("000");
//		boolean result = userService.addNewUser(user);
//		System.out.println("111");
//		if(result) {
//			return "loginregister";
//		}else {
//			return "loginregister";
//		}
//	}
	
	
	
}
