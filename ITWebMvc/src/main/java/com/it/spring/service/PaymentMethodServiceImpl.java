package com.it.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.it.spring.dao.PaymentMethodDAO;
import com.it.spring.model.PaymentMethod;

@Service("paymentMethodServiceImpl")
public class PaymentMethodServiceImpl implements PaymentMethodService {
	@Autowired
	private PaymentMethodDAO paymentMethodDAO;

	@Override
	public List<PaymentMethod> listOfPaymentMethod() {
		return paymentMethodDAO.listOfPaymentMethod();
	}

}
