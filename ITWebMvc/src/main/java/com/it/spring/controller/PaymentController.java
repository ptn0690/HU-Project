package com.it.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.it.spring.model.PaymentMethod;
import com.it.spring.model.ShippingMethod;
import com.it.spring.service.PaymentMethodService;
import com.it.spring.service.ShippingMethodService;

@Controller
@RequestMapping("order")
public class PaymentController {
	
	@Autowired
	private PaymentMethodService paymentMethodService;
	@Autowired
	private ShippingMethodService shippingMethodService;
	
	@RequestMapping(value="/payment")
	public ModelAndView startPayment() {
		ModelAndView model = new ModelAndView("shipping");
		List<PaymentMethod> listPaymentMethods = new ArrayList<PaymentMethod>();
		List<ShippingMethod> listShippingMethods = new ArrayList<ShippingMethod>();
		
		listPaymentMethods = paymentMethodService.listOfPaymentMethod();
		listShippingMethods = shippingMethodService.listOfShippingMethod();
		model.addObject("listPaymentMethods", listPaymentMethods);
		model.addObject("listShippingMethods", listShippingMethods);
		return model;
		
	}
	

}
