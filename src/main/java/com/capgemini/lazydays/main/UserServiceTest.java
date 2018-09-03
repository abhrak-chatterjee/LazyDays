package com.capgemini.lazydays.main;

import static org.junit.Assert.*;

import org.junit.Test;

public class UserServiceTest 
{
	UserServiceImpl userServiceImpl=new UserServiceImpl();
	@Test
	public void testFindByUserMail() 
	{
		String email="abh@gmail.com";
		assertEquals(1, userServiceImpl.findByUserMail(email));
	}

	@Test
	public void testFindByPassword() 
	{
		String password="Abhrak@123";
		assertEquals(1, userServiceImpl.findByPassword(password));
	}

	@Test
	public void testSave() 
	{
		String name,mail,password,phone;
		name="DhrubaB";
		mail="dhruba@gmail.com";
		password="Dhruba@123";
		phone="9865789234";
		assertEquals(-1, userServiceImpl.save(name,mail,phone,password));
	}

	@Test
	public void testIsUserExist() 
	{
		String name,mail,password,phone;
		mail="dhruba@gmail.com";
		phone="9865789234";
		assertEquals(true, userServiceImpl.isUserExist(mail,phone));
	}

	@Test
	public void testFindByUserName() 
	{
		String name="abh@gmail.com";
		assertEquals("Abhrak", userServiceImpl.findByUserName(name));
	}

}
