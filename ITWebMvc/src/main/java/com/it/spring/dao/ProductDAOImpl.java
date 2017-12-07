package com.it.spring.dao;

import java.util.List;

import com.it.spring.model.Product;

public interface ProductDAOImpl {
	public List<Product> findALl();
	public Product findProductByID(int productId);
}
