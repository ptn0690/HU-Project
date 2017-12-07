package com.it.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.it.spring.dao.SupplierDAO;
import com.it.spring.model.Supplier;

@Service("supplierServiceImpl")
public class SupplierServiceImpl implements SupplierService {
	
	@Autowired
	private SupplierDAO supplierDAO;

	@Override
	public List<Supplier> findALl() {
		return supplierDAO.findALl();
	}

}
