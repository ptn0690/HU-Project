package com.it.spring.service;

import java.util.List;

import com.it.spring.model.OrderDetail;

public interface OrderDetailService {
	public void insert(OrderDetail orderDetail);
	public List<OrderDetail> findOrderDetailsByCusID(int useId);

}
