package com.it.spring.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.it.spring.model.Order;
import com.it.spring.model.OrderDetail;
import com.it.spring.model.PaymentMethod;
import com.it.spring.model.Receipt;
import com.it.spring.model.ReceiptInformation;
import com.it.spring.model.ShippingMethod;
import com.it.spring.model.Userz;
import com.it.spring.service.CartService;
import com.it.spring.service.OrderDetailService;
import com.it.spring.service.OrderService;
import com.it.spring.service.ReceiptService;

@Controller
@RequestMapping("receipt")
public class ReceiptController {

	@Autowired
	private ReceiptService receiptService;

	@Autowired
	private OrderService orderService;

	@Autowired
	private OrderDetailService orderDetailService;

	@Autowired
	private CartService cartService;
	
	@RequestMapping(value="/view", method = RequestMethod.GET)
	public ModelAndView showReceipt(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = new ModelAndView("receipt");
		HttpSession session = request.getSession();
		Userz userz = null;
		if (session.getAttribute("users") != null) {
			userz = (Userz) session.getAttribute("users");
		}
		ReceiptInformation receiptInformation = null;
		List<Receipt> listOfReceipts = new ArrayList<Receipt>();
		listOfReceipts = receiptService.showReceiptByCusId(userz.getId());
		receiptInformation = receiptService.getReceiptInformationById(userz.getId());
		model.addObject("listOfReceipts", listOfReceipts);
		model.addObject("receiptInformation", receiptInformation);
		
		return model;
		
	}

	@RequestMapping(value = "/create", method = RequestMethod.POST, headers = "Content-Type=application/x-www-form-urlencoded")
	public ModelAndView createReceipt(HttpServletRequest request, HttpServletResponse response) {
		double total = 0.0;
		String receivingAddress = request.getParameter("receivingAddress");
		int paymentMethodId = Integer.parseInt(request.getParameter("paymentMethod"));
		int shippingMethodId = Integer.parseInt(request.getParameter("shippingMethod"));

		ModelAndView model = new ModelAndView("redirect:/receipt/view");
		HttpSession session = request.getSession();
		Userz userz = null;
		if (session.getAttribute("users") != null) {
			userz = (Userz) session.getAttribute("users");
		}

		Order order = new Order();
		PaymentMethod paymentMethod = new PaymentMethod();
		paymentMethod.setId(paymentMethodId);

		ShippingMethod shippingMethod = new ShippingMethod();
		shippingMethod.setId(shippingMethodId);

		order.setReceivingAddress(receivingAddress);
		order.setPaymentMethod(paymentMethod);
		order.setShippingMethod(shippingMethod);
		order.setUseId(userz);
		System.out.println("inserttttttttttt" + userz);
		orderService.insertOrder(order);

		List<OrderDetail> listOfOrderDetail = orderDetailService.findOrderDetailsByCusID(userz.getId());
		System.out.println("aaaaaaaaaaaaa" + userz.getId());
		for (OrderDetail each : listOfOrderDetail) {
			// Order order = new Order();
			order.setId(orderService.findMaxOrderId(userz.getId()));
			// System.out.println("the value of order id: "+order.getId() );
			each.setOrderId(order);
			total += each.getPrice();
			orderDetailService.insert(each);
		}

		// After save all information , the cart is deleted.
		cartService.deleteCartCustomerByCustomerId(userz.getId());
		return model;
	}
	
	@RequestMapping(value="/detail/{id}")
	public ModelAndView getReceipt(@PathVariable("id") int orderId) throws IOException{
		List<Receipt> listOfReceipt = new ArrayList<Receipt>();
		listOfReceipt = receiptService.showReceiptByOrderId(orderId);
		ReceiptInformation receiptInformation = receiptService.getReceiptInformationAdmin(orderId);
		ModelAndView model = new ModelAndView("adminOrderDetail");
		model.addObject("listOfReceipt", listOfReceipt);
		model.addObject("receiptInformation", receiptInformation);
		return model;
		
	}
}
