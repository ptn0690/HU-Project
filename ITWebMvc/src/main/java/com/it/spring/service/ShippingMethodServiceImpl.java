package com.it.spring.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.it.spring.dao.ShippingMethodDAO;
import com.it.spring.model.ShippingMethod;

@Service("shippingMethodServiceImpl")
public class ShippingMethodServiceImpl implements ShippingMethodService{
	@Autowired
	private ShippingMethodDAO shippingMethodDAO;

	@Override
	public List<ShippingMethod> listOfShippingMethod() {
		return shippingMethodDAO.listOfShippingMethod();
	}
 
}
