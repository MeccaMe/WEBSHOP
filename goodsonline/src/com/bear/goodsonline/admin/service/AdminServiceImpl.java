package com.bear.goodsonline.admin.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.goodsonline.admin.dao.AdminDaoImpl;
import com.bear.goodsonline.entity.Admin;
@Service
@Transactional
public class AdminServiceImpl {
	@Resource
	private AdminDaoImpl adminDaoImpl;
	public Admin login(String adminName,String password) {
		System.out.println(adminName+password);
		return adminDaoImpl.login(adminName, password);
	}
//	public List<Admin> findAll(){
//		List<Admin> list = adminDaoImpl.select();
//		return list;
//	}
//	public boolean addNewAdmin(Admin admin) {
//		return adminDaoImpl.insert(admin);
//	}
//	public boolean deleteAdmin(int id) {
//		return adminDaoImpl.delete(id);
//	}
//	public boolean updateAdmin(Admin admin) {
//		return adminDaoImpl.update(admin);
//	}
//	
//	public Admin selectById(int id) {
//		return adminDaoImpl.selectById(id);
//	}
}

