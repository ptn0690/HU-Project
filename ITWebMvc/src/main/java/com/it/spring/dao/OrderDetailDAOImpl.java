package com.it.spring.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import com.it.spring.model.OrderDetail;
import com.it.spring.model.Product;

public class OrderDetailDAOImpl implements OrderDetailDAO {
	private OrderDetail orderDetail;
	private DataSource dataSource;

	public OrderDetailDAOImpl(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void insert(OrderDetail orderDetail) {
		String sql = " insert into OrderDetail(ord_id,pro_id, ordt_quantity, ordt_price) " + " values(?,?,?,?) ";
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setInt(1, orderDetail.getOrderId().getId());
			pst.setInt(2, orderDetail.getProductId().getId());
			pst.setInt(3, orderDetail.getQuantity());
			pst.setDouble(4, orderDetail.getPrice());

			pst.execute();

			pst.close();
			connection.close();

		} catch (SQLException ex) {
			System.out.println("Insert Order Details :" + ex);
		}
	}

	// getter and setter
	public OrderDetail getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(OrderDetail orderDetail) {
		this.orderDetail = orderDetail;
	}

	public List<OrderDetail> findOrderDetailsByCusID(int useId) {
		List<OrderDetail> listOFOrderDetails = new ArrayList<OrderDetail>();
		String sql = " select cc.pro_id, use_id, sum(car_quantity) as Quantity, p.pro_price*sum(car_quantity) as Price "
				+ " from product p , cartcustomer cc " + " where p.Pro_id = cc.Pro_id and use_id = " + useId
				+ " group by pro_id, use_id ";
		try {
			Connection connection = dataSource.getConnection();
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				OrderDetail orderDetail = new OrderDetail();
				Product product = new Product();
				product.setId(rs.getInt("cc.pro_id"));
				orderDetail.setProductId(product);
				orderDetail.setQuantity(rs.getInt("Quantity"));
				orderDetail.setPrice(rs.getDouble("Price"));
				listOFOrderDetails.add(orderDetail);

			}
			rs.close();
			st.close();
			connection.close();

		} catch (SQLException ex) {
			System.out.println("findOrderDetailsByCusID " + ex);
		}
		return listOFOrderDetails;

	}

}
