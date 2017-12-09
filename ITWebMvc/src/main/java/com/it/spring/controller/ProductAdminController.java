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
import com.it.spring.model.Product;
import com.it.spring.model.Supplier;
import com.it.spring.service.CategoryService;
import com.it.spring.service.ProductionService;
import com.it.spring.service.SupplierService;


@Controller
@RequestMapping("admin")
public class ProductAdminController {
	@Autowired
	private ProductionService productionService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SupplierService supplierService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView showAdminPage(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("admin");
		List<Product> products = productionService.findALl();

		mav.addObject("listOfProducts",  products);

		return mav;

	}
	
	@RequestMapping(value = "/product/add", method = RequestMethod.GET)
	public ModelAndView showAddPage(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("addProduct");
		List<Category> categories = new ArrayList<Category>();
		List<Supplier> suppliers = new ArrayList<Supplier>();
		categories = categoryService.findALl();
		suppliers = supplierService.findALl();
		mav.addObject("listCategories",categories);
		mav.addObject("listSuppliers",suppliers);

		return mav;

	}
	
	@RequestMapping(value = "/product/processAdd", method = RequestMethod.POST,  headers = "Content-Type=application/x-www-form-urlencoded")
	public ModelAndView addProduct(HttpServletRequest request, 
			@RequestParam(value = "pro_name", required = false) String proName,
			@RequestParam(value = "sup_id", required = false) String supId,
			@RequestParam(value = "cat_id", required = false) String catId,
			@RequestParam(value = "pro_os", required = false) String proOS,
			@RequestParam(value = "pro_cpu", required = false) String proCpu,
			@RequestParam(value = "pro_ram", required = false) String proRam,
			@RequestParam(value = "pro_graphic", required = false) String proGraphic,
			@RequestParam(value = "pro_monitor", required = false) String proMonitor,
			@RequestParam(value = "pro_battery", required = false) String proBattery,
			@RequestParam(value = "pro_size", required = false) String proSize,
			@RequestParam(value = "pro_camera", required = false) String proCamera,
			@RequestParam(value = "pro_price", required = false) String proPrice,
			@RequestParam(value = "pro_isnew", required = false) String proIsNew,
			@RequestParam(value = "pro_ishot", required = false) String proIsHot,
			@RequestParam(value = "pro_smallfile", required = false) String proSmallFile,
			@RequestParam(value = "pro_largefile", required = false) String proLargeFile) {

		ModelAndView mav = new ModelAndView("redirect:/admin/");
		Product newProduct = new Product();
		Supplier supplier = new Supplier();
		supplier.setSup_id(Integer.parseInt(supId));
		newProduct.setSupplier(supplier);
		Category category = new Category();
		category.setCat_id(Integer.parseInt(catId));
		newProduct.setCategory(category);
		newProduct.setName(proName);
		newProduct.setPro_os(proOS);
		newProduct.setPro_cpu(proCpu);
		newProduct.setPro_ram(proRam);
		newProduct.setPro_graphic(proGraphic);
		newProduct.setPro_monitor(proMonitor);
		newProduct.setPro_battery(proBattery);
		newProduct.setPro_size(proSize);
		newProduct.setPro_camera(proCamera);
		newProduct.setPrice(Double.parseDouble(proPrice));
		newProduct.setPro_isnew(Integer.parseInt(proIsNew));
		newProduct.setPro_ishot(Integer.parseInt(proIsHot));
		newProduct.setPro_largeImage(proLargeFile);
		newProduct.setPro_smallImage(proSmallFile);
		newProduct.setImage(proSmallFile);
		productionService.insertProduct(newProduct);
		return mav;

	}
	
	@RequestMapping(value="/product/{id}")
	public ModelAndView getProduct(@PathVariable("id") int producId) throws IOException{
	Product product = new Product();
	List<Category> categories = new ArrayList<Category>();
	List<Supplier> suppliers = new ArrayList<Supplier>();
	
	product = productionService.findProductByID(producId);
	categories = categoryService.findALl();
	suppliers = supplierService.findALl();

	ModelAndView model = new ModelAndView("editProduct");
	model.addObject("product",product);
	model.addObject("listCategories",categories);
	model.addObject("listSuppliers",suppliers);

	return model;
	}
	
	@RequestMapping(value="/product/updateProduct", method = RequestMethod.POST, headers = "Content-Type=application/x-www-form-urlencoded")
	public ModelAndView updateProduct(HttpServletRequest request,
			@RequestParam(value = "pro_id", required = false) String id,
			@RequestParam(value = "pro_name", required = false) String proName,
			@RequestParam(value = "sup_id", required = false) String supId,
			@RequestParam(value = "cat_id", required = false) String catId,
			@RequestParam(value = "pro_os", required = false) String proOS,
			@RequestParam(value = "pro_cpu", required = false) String proCpu,
			@RequestParam(value = "pro_ram", required = false) String proRam,
			@RequestParam(value = "pro_graphic", required = false) String proGraphic,
			@RequestParam(value = "pro_monitor", required = false) String proMonitor,
			@RequestParam(value = "pro_battery", required = false) String proBattery,
			@RequestParam(value = "pro_size", required = false) String proSize,
			@RequestParam(value = "pro_camera", required = false) String proCamera,
			@RequestParam(value = "pro_price", required = false) String proPrice,
			@RequestParam(value = "pro_isnew", required = false) String proIsNew,
			@RequestParam(value = "pro_ishot", required = false) String proIsHot,
			@RequestParam(value = "pro_smallfile", required = false) String proSmallFile,
			@RequestParam(value = "pro_largefile", required = false) String proLargeFile) {
		
		ModelAndView mav = new ModelAndView("redirect:/admin/");
		Product updateProduct = new Product();
		updateProduct.setId(Integer.parseInt(id));
		Supplier supplier = new Supplier();
		supplier.setSup_id(Integer.parseInt(supId));
		updateProduct.setSupplier(supplier);
		Category category = new Category();
		category.setCat_id(Integer.parseInt(catId));
		updateProduct.setCategory(category);
		updateProduct.setName(proName);
		updateProduct.setPro_os(proOS);
		updateProduct.setPro_cpu(proCpu);
		updateProduct.setPro_ram(proRam);
		updateProduct.setPro_graphic(proGraphic);
		updateProduct.setPro_monitor(proMonitor);
		updateProduct.setPro_battery(proBattery);
		updateProduct.setPro_size(proSize);
		updateProduct.setPro_camera(proCamera);
		updateProduct.setPrice(Double.parseDouble(proPrice));
		updateProduct.setPro_isnew(Integer.parseInt(proIsNew));
		updateProduct.setPro_ishot(Integer.parseInt(proIsHot));
		updateProduct.setPro_largeImage(proLargeFile);
		updateProduct.setPro_smallImage(proSmallFile);
		updateProduct.setImage(proSmallFile);
		productionService.updateProduct(updateProduct);
		return mav;

	}
	
	@RequestMapping(value="/product/delete", method = RequestMethod.POST, headers = "Content-Type=application/x-www-form-urlencoded")
	public ModelAndView updateProduct(HttpServletRequest request,
			@RequestParam(value = "deleteCheckBox", required = false) String[] ids) {
		ModelAndView mav = new ModelAndView("redirect:/admin/");
		productionService.deleteProduct(ids);
		return mav;
		
	}

}
