package com.it.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.it.spring.dao.OrderDAO;
import com.it.spring.model.Order;

@Service("orderServiceImpl")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;

	@Override
	public void insertOrder(Order order) {
		orderDAO.insertOrder(order);
	}

	@Override
	public int findMaxOrderId(int useId) {
		return orderDAO.findMaxOrderId(useId);
	}

	@Override
	public List<Order> showAllOrder() {
		return orderDAO.showAllOrder();
	}

}
