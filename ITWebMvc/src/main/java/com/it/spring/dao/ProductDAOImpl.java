package com.it.spring.dao;

import java.util.List;

import com.it.spring.model.Product;

public interface ProductDAOImpl {
	public List<Product> findALl();
	public Product findProductByID(int productId);
	public void updateProduct(Product product);
	public void insertProduct(Product product);
	public void deleteProduct(String[] products);
	public List<Product> hightPriceToSmall();
	public List<Product> smallPriceToHight();
	public List<Product> isnew();
	public List<Product> ishot();
	
}
