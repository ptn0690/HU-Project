package com.it.spring.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.it.spring.dao.LoginDAO;
import com.it.spring.model.Product;
import com.it.spring.service.ProductionService;

@Controller
public class HomeController {

	@Autowired
	private LoginDAO loginDAO;
	
	@Autowired
	private ProductionService productionService;
	
	@RequestMapping(value="/")
	public ModelAndView goHome() throws IOException{
		List<Product> hotProducts = new ArrayList<Product>();
		List<Product> newProducts = new ArrayList<Product>();
		ModelAndView model = new ModelAndView("index");
		hotProducts = productionService.ishot();
		newProducts = productionService.isnew();
		model.addObject("listHotProducts", hotProducts);
		model.addObject("listNewProducts", newProducts);
		
		return model;
	}
	
	@RequestMapping(value="/home")
	public ModelAndView goToHome(ModelAndView model) throws IOException{
		model.setViewName("index");
		
		return model;
	}
	
	@RequestMapping(value="/news")
	public ModelAndView goToNews(ModelAndView model) throws IOException{
		model.setViewName("news");
		
		return model;
	}
	
	@RequestMapping(value="/aboutUs")
	public ModelAndView goToAboutUS(ModelAndView model) throws IOException{
		model.setViewName("aboutUs");
		
		return model;
	}
	
/*	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView goLogin(ModelAndView model) throws IOException{
		Users users = new Users();
		model.addObject("users", users);
		model.setViewName("login");
		
		return model;
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public ModelAndView loginUserName(@ModelAttribute Users users) throws IOException{
		Users userCheck = loginDAO.get(users.getUsername());
		if(userCheck!= null && userCheck.getUsername().equalsIgnoreCase(users.getUsername()) && userCheck.getPassword().equalsIgnoreCase(users.getPassword()) ) {	
			return new ModelAndView("redirect:/home");	
		}
		System.out.println("Login Fail");
		return new ModelAndView("redirect:/login");

	}*/
	
	/*@RequestMapping(value="/register")
	public ModelAndView goRegister(ModelAndView model) throws IOException{
		model.setViewName("register");
		
		return model;
	}
	@RequestMapping(value="/contact")
	public ModelAndView goContact(ModelAndView model) throws IOException{
		model.setViewName("contact");
		
		return model;
	}*/
}
