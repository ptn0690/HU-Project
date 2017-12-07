package com.it.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import com.it.spring.model.Users;

public class LoginDAOImpl implements LoginDAO {
	private JdbcTemplate jdbcTemplate;
	
	public LoginDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public Users get(String username) {
		String sql = "SELECT * FROM users WHERE users_email= \'" + username + "\'";
		return jdbcTemplate.query(sql, new ResultSetExtractor<Users>() {

			@Override
			public Users extractData(ResultSet rs) throws SQLException,
					DataAccessException {
				if (rs.next()) {
					Users user = new Users();
					user.setId(rs.getInt("user_id"));
					user.setUsername(rs.getString("users_email"));
					user.setFirstName(rs.getString("user_firstname"));
					user.setLastName(rs.getString("user_lastname"));
					user.setPassword(rs.getString("user_pass"));
					return user;
				}
				
				return null;
			}
			
		});
	}
}
