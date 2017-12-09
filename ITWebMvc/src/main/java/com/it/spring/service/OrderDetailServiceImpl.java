package com.it.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.it.spring.dao.OrderDetailDAO;
import com.it.spring.model.OrderDetail;

@Service("orderDetailServiceImpl")
public class OrderDetailServiceImpl implements OrderDetailService {
	@Autowired
	private OrderDetailDAO orderDetailDAO;

	@Override
	public void insert(OrderDetail orderDetail) {
		orderDetailDAO.insert(orderDetail);
	}

	@Override
	public List<OrderDetail> findOrderDetailsByCusID(int useId) {
		return orderDetailDAO.findOrderDetailsByCusID(useId);
	}

}
