package com.it.spring.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import com.it.spring.model.QAndA;

public class QandADAOImpl {
	private QAndA qandA;
	private DataSource dataSource;

	public QandADAOImpl(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public List<QAndA> listOfQandA() {
		List<QAndA> listQandA = new ArrayList<QAndA>();
		String sql = " select QAA_ID, QAA_QUESTION, QAA_ANSWER  from qanda ";
		try {
			Connection connection = dataSource.getConnection();
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				qandA = new QAndA();
				qandA.setQandaid(rs.getInt("QAA_ID"));
				qandA.setQuestion(rs.getString("QAA_QUESTION"));
				qandA.setAnswer(rs.getString("QAA_ANSWER"));
				listQandA.add(qandA);

			}
			rs.close();
			st.close();
			connection.close();

		} catch (SQLException ex) {

		}

		return listQandA;

	}

	public void insertQAndA(QAndA qAndA) {
		String sql = " insert into qanda(QAA_QUESTION, QAA_ANSWER)" + " values(?, ?) ";
		try {

			Connection connection = dataSource.getConnection();
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setString(1, qAndA.getQuestion());
			pst.setString(2, qAndA.getAnswer());
			pst.execute();
			pst.close();

			connection.close();

		} catch (SQLException ex) {
			System.out.println("INsert FAQS is error because: " + ex);
		}
	}

	public void updateQAndA(QAndA qAndA) {
		String sql = " update qanda set QAA_QUESTION = ?, QAA_ANSWER = ? " + " where QAA_ID = ? ";
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setString(1, qAndA.getQuestion());
			pst.setString(2, qAndA.getAnswer());
			pst.setInt(3, qAndA.getQandaid());
			pst.execute();

		} catch (SQLException ex) {
			System.out.println("Update FAQS is error because: " + ex);
		}
	}

	public void deleteQAndA(String[] ids) {
		String sql = " delete from qanda where QAA_ID = ? ";
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement pst = connection.prepareStatement(sql);
			for (String each : ids) {
				pst.setString(1, each);
				pst.addBatch();
			}
			pst.executeBatch();

		} catch (SQLException ex) {
			System.out.println("Delete FAQS is error because: " + ex);
		}
	}

	public QAndA findQAndAById(int qaaid) {

		qandA = new QAndA();
		String sql = " select QAA_QUESTION, QAA_ANSWER " + " from qanda where QAA_ID = " + qaaid;
		try {
			Connection connection = dataSource.getConnection();
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if (rs.next()) {
				qandA.setQuestion(rs.getString("QAA_QUESTION"));
				qandA.setAnswer(rs.getString("QAA_ANSWER"));
			}
			rs.close();
			st.close();
			connection.close();

		} catch (SQLException ex) {
			System.out.println("Find FAQs By Id problems:   " + ex);
		}
		return qandA;
	}

	public List<QAndA> findQandADetailById(int id) {
		List<QAndA> listQandA = new ArrayList<QAndA>();
		String sql = " select * from qanda where QAA_ID = " + id;
		try {
			Connection connection = dataSource.getConnection();
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				qandA = new QAndA();
				qandA.setQandaid(rs.getInt("QAA_ID"));
				qandA.setQuestion(rs.getString("QAA_QUESTION"));
				qandA.setAnswer(rs.getString("QAA_ANSWER"));
				listQandA.add(qandA);

			}
			rs.close();
			st.close();
			connection.close();

		} catch (SQLException ex) {

		}

		return listQandA;

	}

	// getter and setter
	public QAndA getQandA() {
		return qandA;
	}

	public void setQandA(QAndA qandA) {
		this.qandA = qandA;
	}

}
