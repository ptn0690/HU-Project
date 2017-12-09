package com.it.spring.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import com.it.spring.model.Order;
import com.it.spring.model.PaymentMethod;
import com.it.spring.model.ShippingMethod;

public class OrderDAOImpl implements OrderDAO {
	private Order order;
	private DataSource dataSource;

	public OrderDAOImpl(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void insertOrder(Order order) {
		// DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		// String currentDate = dateFormat.format(new Date());

		String sql = " insert into Orders (use_id, ORD_Date,ORD_ReceivingAddress,SHM_ID,PAM_ID) "
				+ " values (?,CURDATE(),?,?,?) ";

		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement pst = connection.prepareStatement(sql);
			System.out.println("bbbbbbbbbbbbbbbbbbbbbb" + order.getUseId().getId());
			pst.setInt(1, order.getUseId().getId());
			pst.setString(2, order.getReceivingAddress());
			pst.setInt(3, order.getShippingMethod().getId());
			pst.setInt(4, order.getPaymentMethod().getId());
			pst.execute();
			pst.close();
			connection.close();

		} catch (SQLException ex) {
			System.out.println("insert orderfffffffffffffffffffff" + ex);

		}
	}

	public int findMaxOrderId(int useId) {

		String sql = " select max(ord_id) as MaxOrder from Orders where use_id = " + useId;
		try {
			Connection connection = dataSource.getConnection();
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if (rs.next()) {
				int orderId = rs.getInt("MaxOrder");
				return orderId;
			}
			rs.close();
			st.close();
			connection.close();
		} catch (SQLException ex) {
			System.out.println("aaaaaaaaaaaaa" + ex);
		}
		return 0;

	}

	// getter and setter
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public List<Order> showAllOrder() {
		List<Order> orders = new ArrayList<Order>();
		String sql = " select o.ORD_ID , o.ORD_Date,sm.SHM_METHOD, pm.PAM_METHOD,o.ORD_ReceivingAddress,o.ORD_Status,  Sum(ord.ORDT_Quantity) as Quantity, SUM(ord.ORDT_Price) as Price \n"
				+ "                        from orders o , orderdetail ord, product p, userz u ,shippingmethod sm, paymentmethod pm\n"
				+ "                         where o.ORD_Id = ord.ORD_Id and p.Pro_id = ord.PRO_ID and u.use_id = o.use_Id and o.PAM_ID = pm.PAM_ID and o.SHM_ID = sm.SHM_ID\n"
				+ "                         group by o.ORD_ID,  o.ORD_Date, sm.SHM_METHOD, pm.PAM_METHOD,o.ORD_ReceivingAddress,o.ORD_Status\n"
				+ "												order by o.ORD_DATE desc ";
		try {
			Connection connection = dataSource.getConnection();
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				order = new Order();
				order.setId(rs.getInt("ORD_ID"));
				order.setOrderDate(rs.getDate("ORD_Date"));
				ShippingMethod shippingMethod = new ShippingMethod();
				shippingMethod.setMethod(rs.getString("SHM_METHOD"));
				order.setShippingMethod(shippingMethod);
				PaymentMethod paymentMethod = new PaymentMethod();
				paymentMethod.setMethod(rs.getString("PAM_METHOD"));
				order.setPaymentMethod(paymentMethod);
				order.setReceivingAddress(rs.getString("ORD_ReceivingAddress"));
				order.setOrderStatus(rs.getInt("ORD_Status"));
				order.setOrderPrice(rs.getDouble("Price"));
				order.setOrderQuantity(rs.getInt("Quantity"));
				orders.add(order);
			}

			rs.close();
			st.close();
			connection.close();
		} catch (SQLException ex) {

		}
		return orders;

	}

}
