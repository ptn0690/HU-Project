package com.it.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("contact")
public class ContactController {
	
	@RequestMapping(value="/")
	public ModelAndView showContact() {
		ModelAndView model = new ModelAndView("contact");
		return model;
		
	}

}
