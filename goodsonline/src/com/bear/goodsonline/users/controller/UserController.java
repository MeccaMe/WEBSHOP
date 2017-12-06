package com.bear.goodsonline.users.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bear.goodsonline.entity.Users;
import com.bear.goodsonline.users.service.UserService;

@Controller
@RequestMapping("users")
public class UserController {
//	@Resource
	@Autowired
	private UserService userService;
	@RequestMapping("/userlogin")
	public String login(String username,String password) {
		Users user = userService.login(username, password);
		if(user != null) {
			return "index.jsp";
		}else {
			return "loginregister";
		}
	}
	@RequestMapping("/register")
	private String register(Users user,Model model) {
		boolean result = userService.addNewUser(user);
		if(result) {
			return "loginregister";
		}else {
			return "loginregister";
		}
	}
	
	
	
}
