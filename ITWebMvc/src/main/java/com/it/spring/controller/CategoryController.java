package com.it.spring.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView showEditCatPage(HttpServletRequest request, HttpServletResponse response) {
		
		List<Category> categorys = new ArrayList<Category>();
		ModelAndView mav = new ModelAndView("editProductType");
		categorys = categoryService.findALl();

		mav.addObject("listOfCategorys",  categorys);

		return mav;

	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView showAddCatPage(HttpServletRequest request, HttpServletResponse response) {	
		ModelAndView mav = new ModelAndView("productTypeInfo");

		return mav;

	}
	
	@RequestMapping(value = "/addProcess", method = RequestMethod.POST, headers = "Content-Type=application/x-www-form-urlencoded")
	public ModelAndView addCatProcess(HttpServletRequest request, 
			@RequestParam(value = "cat_id", required = false) String catId,
			@RequestParam(value = "cat_name", required = false) String catName) {
		
		ModelAndView mav = new ModelAndView("redirect:/category/edit");
        Category  category = new Category();
        if(catId != null && !"".equals(catId)) {
        	 category.setCat_id(Integer.parseInt(catId));
        	 category.setCat_name(catName);
        	 categoryService.updateCategory(category);
        } else {
        	category.setCat_name(catName);
        	categoryService.insertCategory(category);
        }

		return mav;

	}
	
	@RequestMapping(value="/detail/{id}")
	public ModelAndView getCategory(@PathVariable("id") int catId) throws IOException{
		Category cat = new Category();
		cat = categoryService.findCategoryByID(catId);
		ModelAndView model = new ModelAndView("productTypeInfo");
		model.addObject("category", cat);
		return model;
		
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.POST, headers = "Content-Type=application/x-www-form-urlencoded")
	public ModelAndView deleteCategory(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String[] categorys = request.getParameterValues("deleteCheckBox");
		ModelAndView mav = new ModelAndView("redirect:/category/edit");
		categoryService.deleteCategory(categorys);
		return mav;
		
	}

}
