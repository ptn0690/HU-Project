package com.it.spring.dao;

import java.util.List;

import com.it.spring.model.OrderDetail;

public interface OrderDetailDAO {
	public void insert(OrderDetail orderDetail);
	public List<OrderDetail> findOrderDetailsByCusID(int useId);

}
