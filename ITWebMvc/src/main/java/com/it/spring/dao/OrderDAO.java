package com.it.spring.dao;

import java.util.List;

import com.it.spring.model.Order;

public interface OrderDAO {
	public void insertOrder(Order order);
	public int findMaxOrderId(int useId);
	public List<Order> showAllOrder();

}
