package com.it.spring.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.it.spring.model.PaymentMethod;

public class PaymentMethodDAOImpl implements PaymentMethodDAO{
     private PaymentMethod paymentMethod;
     
     private DataSource dataSource;

 	 public PaymentMethodDAOImpl(DataSource dataSource) {
 		this.dataSource = dataSource;
 	}

    public PaymentMethodDAOImpl() {
    }
     
    public List<PaymentMethod> listOfPaymentMethod(){
        List<PaymentMethod> listPaymentMethods = new ArrayList<PaymentMethod>();
        String sql = " select PAM_ID , PAM_METHOD from paymentmethod ";
        try{
            Connection connection = dataSource.getConnection();
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                paymentMethod = new PaymentMethod();
                paymentMethod.setId(rs.getInt("PAM_ID"));
                paymentMethod.setMethod(rs.getString("PAM_METHOD"));
                listPaymentMethods.add(paymentMethod);
                
            }
            rs.close();
            st.close();
            connection.close();
            
        }catch(SQLException ex){
            
        }
        
         return listPaymentMethods;
        
    } 
     

    //getter and setter
    public PaymentMethod getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(PaymentMethod paymentMethod) {
        this.paymentMethod = paymentMethod;
    }
     
}
