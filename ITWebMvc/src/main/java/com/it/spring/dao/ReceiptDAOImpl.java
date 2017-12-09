package com.it.spring.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.it.spring.model.Product;
import com.it.spring.model.Receipt;
import com.it.spring.model.ReceiptInformation;

public class ReceiptDAOImpl implements ReceiptDAO {
	private DataSource dataSource;
	private Receipt receipt;

	public ReceiptDAOImpl(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public List<Receipt> showReceiptByCusId(int useId) {

		List<Receipt> listOfReceipt = new ArrayList<Receipt>();

		String sql = " select  p.pro_Name,  Sum(ord.ORDT_Quantity) as Quantity,p.pro_Price, SUM(ord.ORDT_Price) as Price "
				+ " from orders o , orderdetail ord, product p, userz u "
				+ " where o.ORD_Id = ord.ORD_Id and p.Pro_id = ord.PRO_ID and u.use_id = o.use_Id "
				+ " and u.use_id=? and o.ORD_Id = (select max(o.ORD_Id) from orders o where o.use_Id=?) "
				+ " group by  p.pro_Name,p.pro_Price ";

		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setInt(1, useId);
			pst.setInt(2, useId);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				receipt = new Receipt();
				Product product = new Product();
				product.setName(rs.getString("pro_Name"));
				receipt.setProduct(product);
				receipt.setQuantity(rs.getInt("Quantity"));
				receipt.setPriceOfEach(rs.getDouble("p.pro_Price"));
				receipt.setTotalOfEach(rs.getDouble("Price"));
				listOfReceipt.add(receipt);
			}
			rs.close();
			pst.close();
			connection.close();

		} catch (SQLException ex) {
			System.out.println("show receipt" + ex);
		}

		return listOfReceipt;

	}

	public ReceiptInformation getReceiptInformationById(int useId) {
		ReceiptInformation receiptInformation = null;
		String sql = " select DISTINCT CONCAT(u.use_LastName,' ',u.use_FirstName) as FullName , o.ORD_Date, sm.SHM_METHOD, pm.PAM_METHOD,o.ORD_ReceivingAddress\n"
				+ "                        from orders o , orderdetail ord, product p, userz u ,shippingmethod sm, paymentmethod pm\n"
				+ "                         where o.ORD_Id = ord.ORD_Id and p.Pro_id = ord.PRO_ID and u.use_id = o.use_Id and o.PAM_ID = pm.PAM_ID and o.SHM_ID = sm.SHM_ID\n"
				+ "                         and u.use_id=? and o.ORD_Id = (select max(o.ORD_Id) from orders o where o.use_Id=?) ";

		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setInt(1, useId);
			pst.setInt(2, useId);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				receiptInformation = new ReceiptInformation();
				receiptInformation.setCustomerName(rs.getString("FullName"));
				receiptInformation.setOrderDate(rs.getDate("ORD_Date"));
				receiptInformation.setPaymentMethod(rs.getString("PAM_METHOD"));
				receiptInformation.setShippingMethod(rs.getString("SHM_METHOD"));
				receiptInformation.setReceivingAddress(rs.getString("ORD_ReceivingAddress"));

			}
			rs.close();
			pst.close();
			connection.close();

		} catch (SQLException ex) {
			System.out.println("show receipt information" + ex);
		}

		return receiptInformation;
	}

	// receipt for Admin

	public ReceiptInformation getReceiptInformationAdmin(int orderId) {
		ReceiptInformation receiptInformation = null;
		String sql = "  select DISTINCT CONCAT(u.use_LastName,' ',u.use_FirstName) as FullName , o.ORD_Date, sm.SHM_METHOD, pm.PAM_METHOD,o.ORD_ReceivingAddress\n"
				+ "                        from orders o , orderdetail ord, product p, userz u ,shippingmethod sm, paymentmethod pm\n"
				+ "                         where o.ORD_Id = ord.ORD_Id and p.Pro_id = ord.PRO_ID and u.use_id = o.use_Id and o.PAM_ID = pm.PAM_ID and o.SHM_ID = sm.SHM_ID\n"
				+ "                         and o.ORD_Id = ? ";

		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setInt(1, orderId);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				receiptInformation = new ReceiptInformation();
				receiptInformation.setCustomerName(rs.getString("FullName"));
				receiptInformation.setOrderDate(rs.getDate("ORD_Date"));
				receiptInformation.setPaymentMethod(rs.getString("PAM_METHOD"));
				receiptInformation.setShippingMethod(rs.getString("SHM_METHOD"));
				receiptInformation.setReceivingAddress(rs.getString("ORD_ReceivingAddress"));

			}
			rs.close();
			pst.close();
			connection.close();

		} catch (SQLException ex) {
			System.out.println("show receipt informationaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" + ex);
		}

		return receiptInformation;
	}

	public List<Receipt> showReceiptByOrderId(int orderId) {

		List<Receipt> listOfReceipt = new ArrayList<Receipt>();

		String sql = " select CONCAT(u.use_LastName,' ',u.use_FirstName) as FullName , o.ORD_Date, p.pro_Name,p.pro_Price,sm.SHM_METHOD, pm.PAM_METHOD,o.ORD_ReceivingAddress,  Sum(ord.ORDT_Quantity) as Quantity, SUM(ord.ORDT_Price) as Price \n"
				+ "                        from orders o , orderdetail ord, product p, userz u ,shippingmethod sm, paymentmethod pm\n"
				+ "                         where o.ORD_Id = ord.ORD_Id and p.Pro_id = ord.PRO_ID and u.use_id = o.use_Id and o.PAM_ID = pm.PAM_ID and o.SHM_ID = sm.SHM_ID\n"
				+ "                         and o.ORD_Id = ?\n"
				+ "                         group by  u.use_LastName , o.ORD_Date, p.pro_Name, sm.SHM_METHOD, pm.PAM_METHOD,o.ORD_ReceivingAddress ; ";

		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setInt(1, orderId);

			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				receipt = new Receipt();
				Product product = new Product();
				product.setName(rs.getString("pro_Name"));
				receipt.setProduct(product);
				receipt.setQuantity(rs.getInt("Quantity"));
				receipt.setPriceOfEach(rs.getDouble("p.pro_Price"));
				receipt.setTotalOfEach(rs.getDouble("Price"));
				listOfReceipt.add(receipt);
			}
			rs.close();
			pst.close();
			connection.close();

		} catch (SQLException ex) {
			System.out.println("show receipt" + ex);
		}

		return listOfReceipt;

	}

	// getter and setter
	public Receipt getReceipt() {
		return receipt;
	}

	public void setReceipt(Receipt receipt) {
		this.receipt = receipt;
	}

}
