package com.it.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.it.spring.model.CartCustomer;
import com.it.spring.model.Product;
import com.it.spring.model.Userz;
import com.it.spring.service.CartService;

@Controller
@RequestMapping("cart")
public class CartController {
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public ModelAndView showShoppingCart(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = new ModelAndView("shoppingCart");
		HttpSession session = request.getSession();
		 Userz userz  = null;
        if(session.getAttribute("users")!=null){
       	userz = (Userz) session.getAttribute("users");
        }
		List<Product> listOfProductInCard = new ArrayList<>();
		listOfProductInCard = cartService.productInCard(userz.getId());
		model.addObject("listOfProductInCard", listOfProductInCard);
		return model;
	}
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public ModelAndView addCart(HttpServletRequest request, @RequestParam String productId,
			@RequestParam String quantityOfBuyPro) {
		
		HttpSession session = request.getSession();
		 Userz userz  = null;
        if(session.getAttribute("users")!=null){
        	userz = (Userz) session.getAttribute("users");
        }
		ModelAndView model = new ModelAndView("redirect:/cart/");
		List<CartCustomer> listOfNewCartCustomer = new ArrayList<CartCustomer>();
		CartCustomer cartCustomer = new CartCustomer();
		cartCustomer.setUse_id(userz.getId());
		cartCustomer.setPro_id(Integer.parseInt(productId));
		cartCustomer.setCartQuantity(Integer.parseInt(quantityOfBuyPro));
		listOfNewCartCustomer.add(cartCustomer);
		cartService.insertCartCustomer(listOfNewCartCustomer);
		return model;
		
	}
	
	@RequestMapping(value="/updateCart", method = RequestMethod.POST, headers = "Content-Type=application/x-www-form-urlencoded")
	public ModelAndView updateProduct(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
	    Userz userz  = null;
	    ModelAndView model = new ModelAndView("redirect:/cart/");
       if(session.getAttribute("users")!=null){
       	userz = (Userz) session.getAttribute("users");
       }
       
       if(request.getParameter("update")!=null){
       //First Delete 
       cartService.deleteCartCustomerByCustomerId(userz.getId());
       //Insert New Update
       List<CartCustomer> listOfNewCartCustomer = new ArrayList<CartCustomer>();
        String[] updateQuantity = request.getParameterValues("updateQuantity");
        for(String each:updateQuantity){
            String quantity = request.getParameter("CartQuantity"+each);
            CartCustomer cartCustomer = new CartCustomer();
            cartCustomer.setUse_id(userz.getId());
    		cartCustomer.setPro_id(Integer.parseInt(each));
    		cartCustomer.setCartQuantity(Integer.parseInt(quantity));
    		listOfNewCartCustomer.add(cartCustomer);
        }
        cartService.insertCartCustomer(listOfNewCartCustomer);
       }
       
       if(request.getParameter("deleteButton")!=null){
    	   String[] ids = request.getParameterValues("checkBoxDelete");
    	   cartService.deleteCartDaobyId(ids);
       }
       
		return model;
		
	}

}
