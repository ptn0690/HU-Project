package com.it.spring.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.it.spring.common.BaseDao;
import com.it.spring.dao.CartDAOImpl;
import com.it.spring.dao.CartDao;
import com.it.spring.dao.CategoryDAO;
import com.it.spring.dao.CategoryDAOImpl;
import com.it.spring.dao.ContactDAO;
import com.it.spring.dao.ContactDAOImpl;
import com.it.spring.dao.LoginDAO;
import com.it.spring.dao.LoginDAOImpl;
import com.it.spring.dao.PaymentMethodDAO;
import com.it.spring.dao.PaymentMethodDAOImpl;
import com.it.spring.dao.ProductDAO;
import com.it.spring.dao.ShippingMethodDAO;
import com.it.spring.dao.ShippingMethodDAOImpl;
import com.it.spring.dao.SupplierDAO;
import com.it.spring.dao.SupplierDAOImpl;
import com.it.spring.dao.UserzDAO;
import com.it.spring.dao.UserzDAOImpl;

@Configuration
@ComponentScan(basePackages="com.it.spring.*")
@EnableWebMvc
public class MvcConfiguration extends WebMvcConfigurerAdapter{

	@Bean
	public ViewResolver getViewResolver(){
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}

	@Bean
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/laptop_web_mvc");
		dataSource.setUsername("root");
		dataSource.setPassword("password");
		
		return dataSource;
	}
	
	@Bean
	public ContactDAO getContactDAO() {
		return new ContactDAOImpl(getDataSource());
	}
	
	@Bean
	public LoginDAO getLoginDAO() {
		return new LoginDAOImpl(getDataSource());
	}
	
	@Bean
	public ProductDAO getProductDAO() {
		return new ProductDAO(getDataSource());
	}
	
	@Bean
	public CategoryDAO getCategoryDAO() {
		return new CategoryDAOImpl(getDataSource());
	}
	
	@Bean
	public SupplierDAO getSupplierDAO() {
		return new SupplierDAOImpl(getDataSource());
	}
	
	@Bean
	public CartDao getCartDAO() {
		return new CartDAOImpl(getDataSource());
	}
	
	@Bean
	public PaymentMethodDAO getPaymentMethodDAO() {
		return new PaymentMethodDAOImpl(getDataSource());
	}
	@Bean
	public ShippingMethodDAO getShippingMethodDAO() {
		return new ShippingMethodDAOImpl(getDataSource());
	}
	@Bean
	public UserzDAO getUserzDAO() {
		return new UserzDAOImpl(getDataSource());
	}
}
