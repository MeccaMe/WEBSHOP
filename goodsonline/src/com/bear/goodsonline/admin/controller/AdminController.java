package com.bear.goodsonline.admin.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bear.goodsonline.admin.service.AdminServiceImpl;
import com.bear.goodsonline.entity.Admin;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Resource
	private AdminServiceImpl adminServiceImpl;
	@RequestMapping("/adminlogin")
	public String login(String aname,String apassword) {
		
		Admin admin = adminServiceImpl.login(aname, apassword);
		
		if(admin !=null) {
			return "backstage/main";
		}else {
			return "backstage/login";
		}
	}
//	@RequestMapping("/adminlist")
//	private String adminlist(Model model) {
//		List<Admin> list = adminServiceImpl.findAll();
//		model.addAttribute("adminlist",list);
//		System.out.println("111");
//		return "backstage/GoodsTable";
//	}
//	
//	@RequestMapping("/addadmin")
//	private String addAdmin(Admin admin,Model model) {
//		boolean result = adminServiceImpl.addNewAdmin(admin);
//		if(result) {
//			return "redirect:adminlist";
//		}else {
//			model.addAttribute("errormsg","添加失败");
//			return "backstage/GoodsForm";
//		}
//	}
	
//	@RequestMapping("/deleteadmin")
//	private String deleteAdmin(Model model,HttpServletRequest request) {
//		String id = request.getParameter("id");
//		int admin_id = Integer.valueOf(id);
//		boolean result = adminServiceImpl.deleteAdmin(admin_id);
//		if(result) {
//			return "redirect:adminlist";
//		}else {
//			model.addAttribute("errormsg","添加失败");
//			return "redirect:adminlist";
//		}
//	}
//	
//	@RequestMapping("/updateadmin")
//	private String submitbook(Admin admin,Model model,HttpServletRequest request) {
//		String id = request.getParameter("id");
//		
//		int admin_id = Integer.valueOf(id);
//		admin = adminServiceImpl.selectById(admin_id);
//		model.addAttribute("admin",admin);
//		return "backstage-adminupdate";
//	}
//	
//	
//	@RequestMapping("/updatesubmitadmin")
//	private String updatebook(Admin admin,Model model,HttpServletRequest request) {
//		boolean result = adminServiceImpl.updateAdmin(admin);
//		
//		if(result) {
//			return "redirect:adminlist";
//		}else {
//			model.addAttribute("admin",admin);
//			model.addAttribute("errormsg","更新失败");
//			return "redirect:updateadmin";
//		}
//	}

}
