package com.it.spring.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.it.spring.model.Order;
import com.it.spring.service.OrderService;

@Controller
@RequestMapping("admin/order")
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView showAdminOrderPage(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("cartAdmin");
		List<Order> orders = new ArrayList<Order>();
		orders = orderService.showAllOrder();

		mav.addObject("listOfOrders",  orders);

		return mav;

	}

}
