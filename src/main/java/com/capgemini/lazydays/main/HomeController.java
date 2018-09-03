package com.capgemini.lazydays.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.capgemini.lazydays.main.LoginBean;

@RestController
public class HomeController {
    /*@RequestMapping("/")
    public String home(Map<String, Object> model){
		
		return "login";
	}*/

    @RequestMapping("/")
    public ModelAndView home(Map<String, Object> model)
    {
		ModelAndView mav= new ModelAndView ("index");
		return mav;
	}
    
    @RequestMapping("/faq")
    public ModelAndView faq(Map<String, Object> model){
   		
    	ModelAndView mav= new ModelAndView ("FAQs");
		return mav;
   	}
    @RequestMapping("/about")
public ModelAndView about(Map<String, Object> model){
   		
    	ModelAndView mav= new ModelAndView ("about");
		return mav;
   	}
    @RequestMapping("/contact")
public ModelAndView contact(Map<String, Object> model){
   		
    	ModelAndView mav= new ModelAndView ("contact");
		return mav;
   	}
   
}
