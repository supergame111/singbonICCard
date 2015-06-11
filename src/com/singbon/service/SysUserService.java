package com.singbon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.singbon.dao.SysUserDAO;
import com.singbon.entity.SysUser;

/**
 * 系统用户业务层
 * 
 * @author 郝威
 * 
 */
@Service
public class SysUserService {

	@Autowired
	public SysUserDAO sysUserDAO;

	public SysUser login(SysUser user) {
		
		return (SysUser) this.sysUserDAO.selectByLoginInfo(user);
	}
	
	public SysUser login(String compayName, String loginName, String loginPwd) {
		
		return (SysUser) this.sysUserDAO.login(compayName, loginName, loginPwd);
	}

}
