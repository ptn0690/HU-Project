package com.it.spring.service;

import java.util.List;

import com.it.spring.model.Product;

public interface ProductionService {

	public List<Product> findALl();
	public List<Product> ishot();
	public List<Product> isnew();
	public Product findProductByID(int pro_id);
}
