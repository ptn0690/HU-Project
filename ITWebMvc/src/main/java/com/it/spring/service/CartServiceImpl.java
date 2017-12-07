package com.it.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.it.spring.dao.CartDao;
import com.it.spring.model.CartCustomer;
import com.it.spring.model.Product;

@Service("cartServiceImpl")
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDao cartDao;

	@Override
	public List<Product> productInCard(int useId) {
		// TODO Auto-generated method stub
		return cartDao.productInCard(useId);
	}

	@Override
	public List<Integer> getProidbaseonCustomer(int custmerId) {
		// TODO Auto-generated method stub
		return cartDao.getProidbaseonCustomer(custmerId);
	}

	@Override
	public void insertCartCustomer(List<CartCustomer> cartCustomers) {
		cartDao.insertCartCustomer(cartCustomers);
		
	}

	@Override
	public void updateCartCustomer(CartCustomer cartCustomer) {
		cartDao.updateCartCustomer(cartCustomer);
	}

	@Override
	public CartCustomer findCartCustomerbyId(int proId, int customerId) {
		return cartDao.findCartCustomerbyId(proId, customerId);
	}

	@Override
	public void deleteCartDaobyId(String[] ids) {
		cartDao.deleteCartDaobyId(ids);
		
	}

	@Override
	public void deleteCartCustomerByCustomerId(int useId) {
		cartDao.deleteCartCustomerByCustomerId(useId);
		
	}

}
