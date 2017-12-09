package com.it.spring.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.it.spring.model.Userz;

public class PromotionDaoImpl {
	private DataSource dataSource;

	public PromotionDaoImpl(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public PromotionDaoImpl() {
	}

	public List<Userz> listEmailVipUserz() {
		List<Userz> listEmailUserz = new ArrayList<Userz>();
		String sql = " select email\n" + "from(\n"
				+ "SELECT u.use_FirstName, u.use_LastName,u.USE_EMAIL as email, SUM(od.ORDT_Price) as Price  \n"
				+ "from userz u , orders o, orderdetail od\n" + "where u.use_Id = o.USE_ID and o.ORD_ID = od.ORD_ID\n"
				+ "GROUP BY u.use_FirstName, u.use_LastName,u.USE_EMAIL\n" + "ORDER BY Price DESC)as TEMPORARY\n"
				+ "LIMIT 0,9 ";
		try {
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				Userz userz = new Userz();
				userz.setEmail(rs.getString("email"));
				listEmailUserz.add(userz);
			}

		} catch (SQLException ex) {
			System.out.println("select vip customermmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm" + ex);
		}
		return listEmailUserz;

	}

	public List<Userz> listEmailUserzReceiptGreaterThan10000() {
		List<Userz> listEmailUserz = new ArrayList<Userz>();
		String sql = " SELECT DISTINCT u.USE_EMAIL as email  \n " + "from userz u , orders o, orderdetail od\n"
				+ "where u.use_Id = o.USE_ID and o.ORD_ID = od.ORD_ID and od.ORDT_PRICE >10000 ";
		try {
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				Userz userz = new Userz();
				userz.setEmail(rs.getString("email"));
				listEmailUserz.add(userz);
			}

		} catch (SQLException ex) {

		}
		return listEmailUserz;

	}

	public List<Userz> listEmailUserzSumReceiptGreaterThan50000() {
		List<Userz> listEmailUserz = new ArrayList<Userz>();
		String sql = " SELECT u.use_FirstName, u.use_LastName,u.USE_EMAIL as email, SUM(od.ORDT_Price) as Price  \n"
				+ "from userz u , orders o, orderdetail od\n" + "where u.use_Id = o.USE_ID and o.ORD_ID = od.ORD_ID\n"
				+ "GROUP BY u.use_FirstName, u.use_LastName,u.USE_EMAIL\n" + "HAVING SUM(od.ORDT_Price)>50000 ";
		try {
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				Userz userz = new Userz();
				userz.setEmail(rs.getString("email"));
				listEmailUserz.add(userz);
			}

		} catch (SQLException ex) {

		}
		return listEmailUserz;

	}

	public List<Userz> listEmailAllCustomer() {
		List<Userz> listEmailUserz = new ArrayList<Userz>();
		String sql = " select u.USE_EMAIL as email\n" + " from userz u ";
		try {
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				Userz userz = new Userz();
				userz.setEmail(rs.getString("email"));
				listEmailUserz.add(userz);
			}

		} catch (SQLException ex) {

		}
		return listEmailUserz;

	}

}
