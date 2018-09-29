package com.capgemini;


import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController

	public class UI_Controller 
	{

	 @RequestMapping("/")
	    public ModelAndView home(Map<String, Object> model)
	    {
			ModelAndView mav= new ModelAndView ("index");
			return mav;
		}
	 
	    @RequestMapping(value = "/login", method = RequestMethod.GET)
		public ModelAndView show() 
	    {
	        return new ModelAndView("login");
	        
		}
	    
	    
	    @RequestMapping(value = "/register", method = RequestMethod.GET)
		   public ModelAndView showregister() 
	    	{
		       return new ModelAndView("register");
		    }
	    @RequestMapping(value = "/Flight", method = RequestMethod.GET)
		   public ModelAndView flight() 
	       {
		      return new ModelAndView("Flight");
		   }
	    
	  
	    
	}