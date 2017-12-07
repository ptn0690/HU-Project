package com.it.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.it.spring.model.CartCustomer;
import com.it.spring.model.Product;
import com.it.spring.service.CartService;

@Controller
@RequestMapping("cart")
public class CartController {
	@Autowired
	private CartService cartService;
	
	private int userId = 1;
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public ModelAndView addCart(@RequestParam String productId,
			@RequestParam String quantityOfBuyPro) {
		ModelAndView model = new ModelAndView("shoppingCart");
		List<CartCustomer> listOfNewCartCustomer = new ArrayList<CartCustomer>();
		CartCustomer cartCustomer = new CartCustomer();
		cartCustomer.setUse_id(userId);
		cartCustomer.setPro_id(Integer.parseInt(productId));
		cartCustomer.setCartQuantity(Integer.parseInt(quantityOfBuyPro));
		listOfNewCartCustomer.add(cartCustomer);
		cartService.insertCartCustomer(listOfNewCartCustomer);
		
		List<Product> listOfProductInCard = new ArrayList<>();
		listOfProductInCard = cartService.productInCard(userId);
		model.addObject("listOfProductInCard", listOfProductInCard);
		
		return model;
		
	}

}
