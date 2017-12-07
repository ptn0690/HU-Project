package com.it.spring.common;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class BaseDao {

private JdbcTemplate jdbcTemplate;
	
	public BaseDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
}
