package com.capgemini.lazydays.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capgemini.lazydays.main.UserDaoImpl;
@Service
public class UserServiceImpl{
	
	UserDaoImpl userDao=new UserDaoImpl();
	public int findByUserMail(String userMail)
	{	
		
		return userDao.findByUserMail(userMail);		
	}	
	public int findByPassword(String password)
	{
		return userDao.findByPassword(password);
	}	
	public int save(String userName,String userMail,String phone,String password)
	{
		return userDao.save(userName,userMail,phone,password);
	}		
	public boolean isUserExist(String userMail,String password)
	{
		return userDao.isUserExist(userMail,password);
	}	
	public String findByUserName(String userMail)
	{
		return userDao.findByUserName(userMail);
	}
}
