package com.bear.goodsonline.users.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.goodsonline.entity.Users;
import com.bear.goodsonline.users.service.UsersServiceImpl;

@Controller
@RequestMapping("users")
public class UsersController {
	@Resource
	private UsersServiceImpl usersServiceImpl;
	
	@RequestMapping("/login")
	public String login(@RequestParam("uname")String uname,@RequestParam("upassword")String upassword,Model model,HttpSession session) {
		Users u = this.usersServiceImpl.login(uname, upassword);
		if(u!=null){
			session.setAttribute("u", u);
			return "front/main";
		}else{
			model.addAttribute("errorinfo", "您的账号密码不正确！");
			return "front/index";
		}
	}
}
