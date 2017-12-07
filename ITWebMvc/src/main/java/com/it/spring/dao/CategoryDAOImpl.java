package com.it.spring.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.it.spring.model.Category;

public class CategoryDAOImpl implements CategoryDAO {
	private DataSource dataSource;

	public CategoryDAOImpl(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public List<Category> findALl() {
        List<Category> list = new ArrayList();
        try{
        String sql = "select cat_id, cat_name from category";
        Connection connection = dataSource.getConnection();
        Statement st = connection.createStatement();
        ResultSet result = st.executeQuery(sql);
        while (result.next()){
            Category categoryObject = new Category();
            categoryObject.setCat_id(result.getInt("cat_id"));
            categoryObject.setCat_name(result.getString("cat_name"));
            list.add(categoryObject);
        }
        result.close();
        st.close();
        connection.close();
        }catch(SQLException ex){        
        }
        return list;
    }
      public Category findCategoryByID(int cat_id){    
        String sql = "select cat_id, cat_name from category where cat_id = " + cat_id;
        Category categoryObject = new Category();
        try{
        Connection connection = dataSource.getConnection();
        Statement st = connection.createStatement();
        ResultSet result = st.executeQuery(sql);
        if (result.next()){
            
                categoryObject.setCat_id(result.getInt("cat_id"));         
                categoryObject.setCat_name(result.getString("cat_name"));             
               System.out.println("oooooooooooooo"+categoryObject);                        
        }         
        }catch(SQLException ex){        
        }
        return categoryObject;
    }
       public void updateCategory(Category category) {
        String sql = "update category set cat_name = ? where cat_id = ?";
               
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement p = connection.prepareStatement(sql);
            p.setString(1, category.getCat_name());          
            p.setInt(2, category.getCat_id());
            p.execute();
        } catch (SQLException ex) {
            System.out.println("99999999999999999999999999"+ex);
        }
    }
          public void deleteCategory(String[] categorys){
         String sql = "delete from category where cat_id = ? ";
            System.out.println(sql);
          try{       
         Connection connection = dataSource.getConnection();
         PreparedStatement pst = connection.prepareStatement(sql);
         for(String each: categorys){
             pst.setString(1, each);
             pst.addBatch();
         }
         pst.executeBatch();
         pst.close();
         connection.close();
         
          }catch(SQLException ex){
          
              System.out.println("aaaa"+ex);
          }        
    }
           public void insertCategory(Category category){
         String sql = " insert into category (cat_name)  values('"+category.getCat_name()+"')";
          try{    
         Connection connection = dataSource.getConnection();
         Statement st = connection.createStatement();
         st.executeUpdate(sql);
         st.close();
         connection.close();      
          }catch(SQLException ex){
     
        }        
    }

}
