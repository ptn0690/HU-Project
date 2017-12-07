package com.it.spring.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.it.spring.model.Category;
import com.it.spring.service.CategoryService;

@Controller
@RequestMapping("category")
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value="/leftpanel")
	public ModelAndView getLeftPanel() throws IOException{
		List<Category> categories = new ArrayList<Category>();
		ModelAndView model = new ModelAndView("leftpanel");
		categories = categoryService.findALl();
		model.addObject("listCategories", categories);
		return model;
		
	}

}
