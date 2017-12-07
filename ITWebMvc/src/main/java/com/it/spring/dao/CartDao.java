
package com.it.spring.dao;

import java.util.List;
import com.it.spring.model.CartCustomer;
import com.it.spring.model.Product;

public interface CartDao {
	 public List<Product> productInCard(int useId);
	 public List<Integer> getProidbaseonCustomer(int custmerId);
	 public void insertCartCustomer(List<CartCustomer> cartCustomers);
	 public void updateCartCustomer(CartCustomer cartCustomer);
	 public CartCustomer findCartCustomerbyId(int proId, int customerId);
	 public void deleteCartDaobyId(String[] ids);
	 public void deleteCartCustomerByCustomerId(int useId);
}
