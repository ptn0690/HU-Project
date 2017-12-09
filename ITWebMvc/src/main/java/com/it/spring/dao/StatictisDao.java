package com.it.spring.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.StatictisQuantity;
import utils.DAOResource;

/**
 *
 * @author Admin
 */
public class StatictisDao extends DAOResource{
    private StatictisQuantity statictisQuantity;

    public StatictisDao() {
    }
    
    
    public List<StatictisQuantity> getStatusAllProduct(){
        List<StatictisQuantity> listStatictisQuantity = new ArrayList<StatictisQuantity>();
        String sql = "SELECT od.PRO_ID,p.PRO_NAME, p.PRO_QUANTITY as Original, SUM(od.ORDT_QUANTITY) as CurrentQuantity  \n" +
"from orders o, orderdetail od, product p \n" +
"where o.ORD_ID = od.ORD_ID and p.PRO_ID = od.PRO_ID \n" +
"group by  od.PRO_ID,p.PRO_NAME ";
        
        try{
            Connection connection  = this.getConnection();
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                statictisQuantity = new StatictisQuantity();
                statictisQuantity.setProName(rs.getString("PRO_NAME"));
                statictisQuantity.setOrginialQuantity(rs.getInt("Original"));
                statictisQuantity.setCurrentQuantity(rs.getInt("CurrentQuantity"));
                listStatictisQuantity.add(statictisQuantity);
                        
                
            }
            
        }catch(SQLException ex){
            
        
        }
        
        return listStatictisQuantity;
        
    }
    
    
    public List<StatictisQuantity> getStatusProductSellCurrentDay(){
        List<StatictisQuantity> listStatictisQuantity = new ArrayList<StatictisQuantity>();
        String sql = " SELECT od.PRO_ID,p.PRO_NAME, p.PRO_QUANTITY as Original, SUM(od.ORDT_QUANTITY) as CurrentQuantity  \n" +
"from orders o, orderdetail od, product p \n" +
"where o.ORD_ID = od.ORD_ID and p.PRO_ID = od.PRO_ID and Day(o.ORD_DATE) = DAY(CURDATE())\n" +
"group by  od.PRO_ID,p.PRO_NAME ";
        
        try{
            Connection connection  = this.getConnection();
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                statictisQuantity = new StatictisQuantity();
                statictisQuantity.setProName(rs.getString("PRO_NAME"));
                statictisQuantity.setOrginialQuantity(rs.getInt("Original"));
                statictisQuantity.setCurrentQuantity(rs.getInt("CurrentQuantity"));
                listStatictisQuantity.add(statictisQuantity);
                        
                
            }
            
        }catch(SQLException ex){
            
        
        }
        
        return listStatictisQuantity;
        
    }    
    
    
    public List<StatictisQuantity> getStatusProductSellBySpecificDate(String specificDate){
        List<StatictisQuantity> listStatictisQuantity = new ArrayList<StatictisQuantity>();
        String sql = " SELECT od.PRO_ID,p.PRO_NAME, p.PRO_QUANTITY as Original, SUM(od.ORDT_QUANTITY) as CurrentQuantity  \n" +
"from orders o, orderdetail od, product p \n" +
"where o.ORD_ID = od.ORD_ID and p.PRO_ID = od.PRO_ID and o.ORD_DATE = ?\n" +
"group by  od.PRO_ID,p.PRO_NAME  ";
        
        try{
            Connection connection  = this.getConnection();
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, specificDate);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                statictisQuantity = new StatictisQuantity();
                statictisQuantity.setProName(rs.getString("PRO_NAME"));
                statictisQuantity.setOrginialQuantity(rs.getInt("Original"));
                statictisQuantity.setCurrentQuantity(rs.getInt("CurrentQuantity"));
                listStatictisQuantity.add(statictisQuantity);
                        
                
            }
            
        }catch(SQLException ex){
            
        
        }
        
        return listStatictisQuantity;
        
    }    
    
    //getter and setter
    public StatictisQuantity getStatictisQuantity() {
        return statictisQuantity;
    }

    public void setStatictisQuantity(StatictisQuantity statictisQuantity) {
        this.statictisQuantity = statictisQuantity;
    }
    
    
    
}
