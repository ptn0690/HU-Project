package com.it.spring.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import com.it.spring.model.ShippingMethod;


public class ShippingMethodDAOImpl implements ShippingMethodDAO {
      private ShippingMethod shippingMethod;
      private DataSource dataSource;

  	public ShippingMethodDAOImpl(DataSource dataSource) {
  		this.dataSource = dataSource;
  	}

    public ShippingMethodDAOImpl() {
    }
     
    public List<ShippingMethod> listOfShippingMethod(){
        List<ShippingMethod> listShippingMethods = new ArrayList<ShippingMethod>();
        String sql = " select SHM_ID , SHM_METHOD from shippingmethod ";
        try{
            Connection connection = dataSource.getConnection();
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                shippingMethod = new ShippingMethod();
                shippingMethod.setId(rs.getInt("SHM_ID"));
                shippingMethod.setMethod(rs.getString("SHM_METHOD"));
                listShippingMethods.add(shippingMethod);
                
            }
            rs.close();
            st.close();
            connection.close();
            
        }catch(SQLException ex){
            
        }

         return listShippingMethods;
        
    } 
     

    //getter and setter
    public ShippingMethod getShippingMethod() {
        return shippingMethod;
    }

    public void setShippingMethod(ShippingMethod shippingMethod) {
        this.shippingMethod = shippingMethod;
    }
  
     
}
