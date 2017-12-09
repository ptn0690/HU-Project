package com.it.spring.service;

import java.util.List;
import com.it.spring.model.Order;

public interface OrderService {
	public void insertOrder(Order order);
	public int findMaxOrderId(int useId);
	public List<Order> showAllOrder();
}
