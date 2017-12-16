package com.it.spring.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.sql.DataSource;
import com.it.spring.model.Userz;

public class UserzDAOImpl implements UserzDAO {
       private Userz userz;
       private DataSource dataSource;

   	public UserzDAOImpl(DataSource dataSource) {
   		this.dataSource = dataSource;
   	}
    
    
    public List<Userz> getAllUsers(){
        
        List<Userz> listOfUsers = new ArrayList<Userz>();
        String sql = " select use_id, use_userName, use_password, use_firstname, use_lastname, use_phonenumber, use_address, use_email, use_isadmin "+
                " from userz ";
        try{
            Connection connection = dataSource.getConnection();
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                userz = new Userz();
                userz.setId(rs.getInt("use_id"));
                userz.setUserName(rs.getString("use_userName"));
                userz.setPass(rs.getString("use_password"));
                userz.setFirstName(rs.getString("use_firstname"));
                userz.setLastName(rs.getString("use_lastname"));
                userz.setPhoneNumber(rs.getString("use_phonenumber"));
                userz.setAddress(rs.getString("use_address"));
                 userz.setEmail(rs.getString("use_email"));
                 userz.setIsAdmin(rs.getInt("use_isadmin"));
                 listOfUsers.add(userz);
                 
                
            }
            rs.close();
            st.close();
            connection.close();
            
        }catch(SQLException ex){
            System.out.println("dataaaaaaaaaa"+ex);
        }
        return listOfUsers;
        
    }
    
	public String generateRandomString() {
		char[] chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
		StringBuilder sb = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < 5; i++) {
			char c = chars[random.nextInt(chars.length)];
			sb.append(c);
		}
		String output = sb.toString();
		return output;
	}
    
    
    public void insertUsers(Userz users){
        String sql = " insert into Userz(use_firstName, use_lastName, use_username, use_password, use_phonenumber, use_address, use_email, use_isadmin, use_activecode, use_isactive)"+
                " values(?,?,?,?,?,?,?,?,?,?) ";
        try{
            
         Connection  connection = dataSource.getConnection();
         PreparedStatement pst = connection.prepareStatement(sql);
         pst.setString(1, users.getFirstName());
         pst.setString(2, users.getLastName());
         pst.setString(3, users.getUserName());
         pst.setString(4, users.getPass());
         pst.setString(5, users.getPhoneNumber());
         pst.setString(6, users.getEmail());
         pst.setString(7, users.getAddress());
         pst.setInt(8, users.getIsAdmin());
         pst.setString(9, generateRandomString());
         pst.setInt(10, 1);
         pst.execute();
            
        }catch(SQLException ex){
            System.out.println("aaaaaaaaaaaaaaaaaaaa"+ex);
        }
    }
    
    public void insertUsersForAdmin(Userz users){
        String sql = " insert into Userz(use_firstName, use_lastName, use_username, use_password, use_phonenumber, use_address, use_email, use_isadmin) "+
                " values(?,?,?,?,?,?,?,?) ";
        try{
            
         Connection  connection = dataSource.getConnection();
         PreparedStatement pst = connection.prepareStatement(sql);
         pst.setString(1, users.getFirstName());
         pst.setString(2, users.getLastName());
         pst.setString(3, users.getUserName());
         pst.setString(4, users.getPass());
         pst.setString(5, users.getPhoneNumber());
         pst.setString(6, users.getAddress());
         pst.setString(7, users.getEmail());
         pst.setInt(8, users.getIsAdmin());
         pst.execute();
            
        }catch(SQLException ex){
            System.out.println("Insert Users for admin problems:    "+ex);
        }
    }

     public void updateUsers(Userz users){
       String sql = " update Userz set use_firstName = ?, use_lastName = ?, use_username = ?, use_password = ?, use_phonenumber = ?, use_address = ?, use_email = ?, use_isadmin = ? "+
               " where use_id = ? ";
       try{
           Connection connection = dataSource.getConnection();
           PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, users.getFirstName());
            pst.setString(2, users.getLastName());
            pst.setString(3, users.getUserName());
            pst.setString(4, users.getPass());
            pst.setString(5, users.getPhoneNumber());
            pst.setString(6, users.getAddress());
            pst.setString(7, users.getEmail());
            pst.setInt(8, users.getIsAdmin());
            pst.setInt(9, users.getId());
            
            pst.execute();
            pst.close();
            connection.close();
           
       }catch(SQLException ex){
           System.out.println("Update Users problem is    : " + ex);
       }
   }
     
    public void deleteUsers(String[] ids){
        String sql = "delete from userz where use_id = ? ";
        try{
           Connection connection = dataSource.getConnection();
           PreparedStatement pst = connection.prepareStatement(sql);
           for(String each:ids){
               pst.setString(1, each);
               pst.addBatch();
           }
           pst.executeBatch();
           pst.close();
           connection.close();
           
       }catch(SQLException ex){
           System.out.println("Delete Users problem:   " +ex);
       }
    }
    public Userz getUsers() {
        return userz;
    }

    public void setUsers(Userz users) {
        this.userz = users;
    }
    
    
    public Userz findCurrentUser(){
        String sql = " select use_id, use_username, use_password, use_firstName, use_lastName, use_email , use_isActive, use_activeCode "+
                " from  Userz where use_id = (select max(use_id) from Userz)";
        try{
         Connection connection = dataSource.getConnection();
         Statement st = connection.createStatement();
         ResultSet rs = st.executeQuery(sql);
         if(rs.next()){
             userz = new Userz();
             userz.setId(rs.getInt("use_id"));
             userz.setUserName(rs.getString("use_username"));
             userz.setPass(rs.getString("use_password"));
             userz.setFirstName(rs.getString("use_firstName"));
             userz.setLastName(rs.getString("use_lastName"));
             userz.setEmail(rs.getString("use_email"));
             userz.setIsActive(rs.getInt("use_isActive"));
             userz.setActiveCode(rs.getString("use_activeCode"));
             
             
         }
            
        }catch(SQLException ex){
            System.out.println("findddddddddddddddddddddddddddddddd current User"+ex); 
        }
        return userz;
    }
    
    public void setActiveUsers(int userId){
        String sql = " update Userz set use_isActive=1 where use_id = "+userId;
        try{
            Connection  connection = dataSource.getConnection();
            Statement st = connection.createStatement();
            st.execute(sql);
            
        }catch(SQLException ex){
            System.out.println("Update set Active wwwwwwwwww"+ex);
        }
    }
    
    
     public Userz login(String userName, String pass){
        String sql = " select use_id, use_userName, use_password, use_firstName, use_lastName, use_email, use_isActive, use_activeCode, use_isadmin "+
                " from Userz where  use_userName= ? and use_password = ? and use_isActive = 1 ";
        Userz userz = null;
        try{
            Connection connection = dataSource.getConnection();
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, userName);
            pst.setString(2, pass);
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
            
                userz = new Userz();
                userz.setId(rs.getInt("use_id"));
                userz.setUserName(rs.getString("use_userName"));
                userz.setPass(rs.getString("use_password"));
                userz.setFirstName(rs.getString("use_firstName"));
                userz.setLastName(rs.getString("use_lastName"));
                userz.setEmail(rs.getString("use_email"));
                userz.setIsActive(rs.getInt("use_isActive"));
                userz.setActiveCode(rs.getString("use_activeCode"));
                userz.setIsAdmin(rs.getInt("use_isadmin"));
                
                
                return userz;

            }
     }catch(SQLException ex){
            System.out.println("aaaaaaaaaaaaaaaaaaa"+ex);
    }
        return null;
        
    }
     
     public void forgetPassword(String  userName){
         String sql = " update Userz set use_password = ? where use_username =? ";
         try{
             Connection connection = dataSource.getConnection();
             PreparedStatement pst = connection.prepareStatement(sql);
             pst.setString(1, generateRandomString());
             pst.setString(2, userName);
             pst.execute();
             
         }catch(SQLException ex){
             System.out.println("Change passworddddddddddddd:"+ex);
             
         }
     }
         
      public Userz findUsersByUserName(String userName){
          String sql = " select use_id , use_username, use_password, use_firstName, use_lastName, use_email,use_phonenumber, use_address, use_isActive, use_activeCode "+
                  " from Userz where use_username = ? ";
        
          try{
              userz = new Userz();
              Connection connection  = dataSource.getConnection();
              PreparedStatement pst = connection.prepareStatement(sql);
              pst.setString(1, userName);
              ResultSet rs = pst.executeQuery();
              if(rs.next()){
                  userz.setId(rs.getInt("use_id"));
                  userz.setUserName(rs.getString("use_username"));
                  userz.setPass(rs.getString("use_password"));
                  userz.setFirstName(rs.getString("use_firstName"));
                  userz.setLastName(rs.getString("use_lastName"));
                  userz.setEmail(rs.getString("use_email"));
                  userz.setPhoneNumber(rs.getString("use_phonenumber"));
                  userz.setAddress(rs.getString("use_address"));
                  userz.setIsActive(rs.getInt("use_isActive"));
                  userz.setActiveCode(rs.getString("use_activeCode"));
              }
              rs.close();
              pst.close();
              connection.close();
              
          }catch(SQLException ex){
              System.out.println("FinUserByUserNameeeeeeeeee " + ex);
          }
        return userz;
          
          
      }  
      public Userz findUserzById(int useid){
           
               userz = new Userz();
               String sql = " select use_id, use_username, use_password, use_firstName, use_lastName, use_email,use_phonenumber, use_address, use_isAdmin "+
                       " from Userz where use_id = " + useid;
           try {    
               Connection connection = dataSource.getConnection();
                 Statement st = connection.createStatement();
                 ResultSet rs = st.executeQuery(sql);
                 if(rs.next()){
                  userz.setId(rs.getInt("use_id"));
                  userz.setUserName(rs.getString("use_username"));
                  userz.setPass(rs.getString("use_password"));
                  userz.setFirstName(rs.getString("use_firstName"));
                  userz.setLastName(rs.getString("use_lastName"));
                  userz.setEmail(rs.getString("use_email"));
                  userz.setPhoneNumber(rs.getString("use_phonenumber"));
                  userz.setAddress(rs.getString("use_address"));
                  userz.setIsAdmin(rs.getInt("use_isAdmin"));
                 }
                 rs.close();
                 st.close();
                 connection.close();
                 
           } catch (SQLException ex) {
               System.out.println("Find Users By Id problems:   " + ex);
           }
            return userz;
      }
}
