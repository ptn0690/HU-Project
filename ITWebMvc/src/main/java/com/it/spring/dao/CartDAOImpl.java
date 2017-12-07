package com.it.spring.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

import com.it.spring.model.CartCustomer;
import com.it.spring.model.Product;

public class CartDAOImpl implements CartDao {
	private DataSource dataSource;

	public CartDAOImpl(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	    public List<Product> productInCard(int useId) {
	        List<Product> listOfProductInCard = new ArrayList<Product>();
	        String sql = " select p.pro_id , pro_name, pro_cpu, pro_smallimage, sum(car_quantity) as car_quantity, pro_price*sum(car_quantity) as Price "
	                + " from product p , cartcustomer cc where p.pro_id = cc.pro_id and cc.use_id = " + useId+
	                " group by p.pro_id , pro_name, pro_cpu, pro_price, pro_smallimage";

	        try {
	            Connection connection = dataSource.getConnection();
	            Statement st = connection.createStatement();
	            ResultSet rs = st.executeQuery(sql);
	            while (rs.next()) {
	                Product product = new Product();
	                product.setId(rs.getInt("pro_id"));
	                product.setName(rs.getString("pro_name"));
	                product.setDescription(rs.getString("pro_cpu"));
	                product.setPrice(rs.getDouble("Price"));
//	               product.setProducer(rs.getString("pro_producer"));
	                product.setImage(rs.getString("pro_smallimage"));
	                CartCustomer cartCustomer = new CartCustomer();
	                cartCustomer.setCartQuantity(rs.getInt("car_quantity"));
	                product.setCar_quantity(cartCustomer);
	                listOfProductInCard.add(product);


	            }

	        } catch (SQLException ex) {
	            System.out.println("aaaaaaaaaa" + ex);

	        }
	        return listOfProductInCard;

	    }

	    public List<Integer> getProidbaseonCustomer(int custmerId) {
	        List<Integer> listOfInt = new ArrayList<Integer>();

	        String sql = "select PRO_Id from CartCustomer where Cus_id = " + custmerId;
	        try {
	            Connection connection = dataSource.getConnection();
	            Statement st = connection.createStatement();
	            ResultSet rs = st.executeQuery(sql);
	            while (rs.next()) {
	                int proid = rs.getInt("PRO_Id");
	                listOfInt.add(proid);
	            }


	        } catch (SQLException ex) {
	            System.out.println("aaaaaaaaaaaaaaaaa"+ex);
	        }
	        return listOfInt;
	    }

	    public void insertCartCustomer(List<CartCustomer> cartCustomers) {
	        String sql = " insert into CartCustomer(Pro_id, Car_Quantity, use_id) "
	                + " values(?,?,?) ";
	        try {


	            Connection connection = dataSource.getConnection();
	            PreparedStatement pst = connection.prepareStatement(sql);
	            for(CartCustomer each:cartCustomers ){
	            pst.setInt(1, each.getPro_id());
	            pst.setInt(2, each.getCartQuantity());
	            pst.setInt(3, each.getUse_id());
	            pst.addBatch();
	            }
	            pst.executeBatch();
	            pst.close();
	            connection.close();

	        } catch (SQLException ex) {
	            System.out.println("insert"+ex);
	        }

	    }

	    public void updateCartCustomer(CartCustomer cartCustomer) {
	        String sql = " update CartCustomer set Car_Quanity = ? where Pro_id = ? and Cus_id = ?";
	        try {
	            Connection connection = dataSource.getConnection();
	            PreparedStatement pst = connection.prepareCall(sql);
	            pst.setInt(1, cartCustomer.getCartQuantity());
	            pst.setInt(2, cartCustomer.getPro_id());
	            pst.setInt(3, cartCustomer.getUse_id());

	            pst.executeQuery();
	            pst.close();
	            connection.close();

	        } catch (SQLException ex) {
	            
	            System.out.println("bbbbbbbbbbbbbbbbb"+ex);
	        }
	    }
	    
	    public CartCustomer findCartCustomerbyId(int proId, int customerId){
	        CartCustomer cartCustomer = new CartCustomer();
	                
	        String sql = " select Car_id, pro_id, car_quanity, use_id from cartcustomer "+
	                " where pro_id = "+proId +" and cus_Id = "+customerId;
	        try{
	            Connection connection = dataSource.getConnection();
	            Statement st = connection.createStatement();
	            ResultSet rs = st.executeQuery(sql);
	            if(rs.next()){
	                cartCustomer.setCard_id(rs.getInt("Car_id"));
	                cartCustomer.setPro_id(rs.getInt("pro_id"));
	                 cartCustomer.setCartQuantity(rs.getInt("car_quanity"));
	                 cartCustomer.setUse_id(rs.getInt("use_id"));
	            }
	            
	        }catch(SQLException ex){
	            
	        }
	        return cartCustomer;
	        
	    }
	    
	    
	    public void deleteCartDaobyId(String[] ids){
	        String sql = " delete from CartCustomer where pro_id = ?";
	        try{
	        Connection connection = dataSource.getConnection();
	        PreparedStatement pst = connection.prepareStatement(sql);
	        for(String each: ids){
	            pst.setString(1, each);
	            pst.addBatch();
	            
	        }
	        pst.executeBatch();
	            
	        }catch(SQLException ex){
	            
	        }
	        
	    }
	    
	    public void deleteCartCustomerByCustomerId(int useId){
	        String sql = " delete from cartcustomer where use_id = "+useId;
	        try{
	            Connection connection = dataSource.getConnection();
	            Statement st = connection.createStatement();
	            st.execute(sql);
	            st.close();
	            connection.close();
	            
	        }catch(SQLException ex){
	            
	        }
	    }
}
