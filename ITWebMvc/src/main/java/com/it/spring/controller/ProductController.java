package com.it.spring.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.it.spring.model.Category;
import com.it.spring.model.Product;
import com.it.spring.model.Supplier;
import com.it.spring.service.CategoryService;
import com.it.spring.service.ProductionService;
import com.it.spring.service.SupplierService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductionService productionService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SupplierService supplierService;
	
	@RequestMapping(value="/product")
	public ModelAndView getAllProduct() throws IOException{
		List<Product> products = new ArrayList<Product>();
		ModelAndView model = new ModelAndView("laptop");
		products = productionService.findALl();
		model.addObject("listProducts", products);
		
		return model;
	}
	
	@RequestMapping(value="/product/{id}")
	public ModelAndView getProduct(@PathVariable("id") int producId) throws IOException{
	Product product = new Product();
	List<Category> categories = new ArrayList<Category>();
	List<Supplier> suppliers = new ArrayList<Supplier>();
	
	product = productionService.findProductByID(producId);
	categories = categoryService.findALl();
	suppliers = supplierService.findALl();

	ModelAndView model = new ModelAndView("detail");
	model.addObject("product",product);
	model.addObject("listCategories",categories);
	model.addObject("listSuppliers",suppliers);

	return model;
	}

}
