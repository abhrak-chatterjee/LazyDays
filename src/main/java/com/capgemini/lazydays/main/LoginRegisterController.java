package com.capgemini.lazydays.main;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
	public class LoginRegisterController 
	{
	    @RequestMapping(value = "/login", method = RequestMethod.GET)
		   public ModelAndView show() {
		      return new ModelAndView("login");
		   }
	    
	    
	    @RequestMapping(value = "/login", method = RequestMethod.POST)

		   public ModelAndView valid(Model model,@ModelAttribute("userMail")String userMail,
				   @ModelAttribute("password")String password)

	{
	    	   
	    	UserServiceImpl userService=new UserServiceImpl();  
	    	boolean x=false;
	    	String userName;
	        x=userService.isUserExist(userMail,password);
	        
	        if(x==false)
	        {
	        	ModelAndView mav= new ModelAndView ("login");
	        	model.addAttribute("mssg","Invalid Login Credentials!Try Again.");
				return mav;
	  		 }
	        else
	        {
	        	
	        	userName=userService.findByUserName(userMail);
	        
	        	ModelAndView mav1= new ModelAndView ("index2");
	        	model.addAttribute("msg",userName);
	        	return mav1;

	        }
		   }
	    
	    
	    
	    
	    
	    @RequestMapping(value = "/register", method = RequestMethod.GET)
		   public ModelAndView showregister() {
		      return new ModelAndView("Registration");
		   }
	    
	    @RequestMapping(value = "/register", method = RequestMethod.POST)

		   public ModelAndView regvalid(Model model,@ModelAttribute("userName")String userName,@ModelAttribute("userMail")String userMail,
				   @ModelAttribute("phone")String phone,@ModelAttribute("password")String password,@ModelAttribute("confirmPassword")String confirmPassword,MyUser user,BindingResult result,Map<String,Object> model1)
				   
		   {
	    	UserServiceImpl userService=new UserServiceImpl();
	    	if (result.hasErrors())
	    	{
	    		ModelAndView mav= new ModelAndView ("Registration");
	    		return mav;
	    		
	    	}
	    	
	    	 if(!(confirmPassword.equals(password)))

			  {

			  model.addAttribute("msg","Confirm Password and original password do not match!!");

			  ModelAndView mav= new ModelAndView ("Registration");
	  		return mav;

			  }
	    	int x=0;
	    	  x=userService.save(userName,userMail,phone,password);
	    		
	    	 if(x==-1)
	    	 {
	    		 model.addAttribute("msg1","User with this Mail-ID or PhoneNumber already exists.Try another Mail-ID and Phone Number");
	    		 ModelAndView mav= new ModelAndView ("Registration");
	     		return mav;
	    	 }

	    	 ModelAndView mav= new ModelAndView ("index");
	 		return mav;
		   }
		   
	    @RequestMapping(value = "/login1", method = RequestMethod.GET)
		   public ModelAndView show1(Model model) 
	    {
	    	ArrayList<String> places = new ArrayList<String>();
	    	places.add("Buenos Aires");
	    	places.add("Córdoba");
	    	places.add("La Plata");
	    	model.addAttribute("msg",places);
		      return new ModelAndView("Flights");
		   }
	    
	}