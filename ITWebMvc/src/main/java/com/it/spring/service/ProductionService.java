package com.it.spring.service;

import java.util.List;

import com.it.spring.model.Product;

public interface ProductionService {

	public List<Product> findALl();
	public List<Product> ishot();
	public List<Product> isnew();
	public Product findProductByID(int pro_id);
	public void updateProduct(Product product);
	public void insertProduct(Product product);
	public void deleteProduct(String[] products);
	public List<Product> hightPriceToSmall();
	public List<Product> smallPriceToHight();
}
