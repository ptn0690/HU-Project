package com.it.spring.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.it.spring.dao.ProductDAO;
import com.it.spring.model.Product;


@Service("productionServiceImpl")
public class ProductionServiceImpl implements ProductionService {

	@Autowired
	private ProductDAO productDAO;
	
	@Override
	public List<Product> findALl() {
		return productDAO.findALl();
	}

	@Override
	public List<Product> ishot() {
		return productDAO.ishot();
	}

	@Override
	public List<Product> isnew() {
		return productDAO.isnew();
	}

	@Override
	public Product findProductByID(int pro_id) {
		return productDAO.findProductByID(pro_id);
	}

	@Override
	public void updateProduct(Product product) {
		productDAO.updateProduct(product);
		
	}

	@Override
	public void insertProduct(Product product) {
		productDAO.insertProduct(product);
		
	}

	@Override
	public void deleteProduct(String[] products) {
		productDAO.deleteProduct(products);
		
	}

	@Override
	public List<Product> hightPriceToSmall() {
		return productDAO.hightPriceToSmall();
	}

	@Override
	public List<Product> smallPriceToHight() {
		// TODO Auto-generated method stub
		return productDAO.smallPriceToHight();
	}

}
