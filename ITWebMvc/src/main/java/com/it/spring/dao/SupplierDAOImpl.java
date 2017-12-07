package com.it.spring.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import com.it.spring.model.Supplier;

public class SupplierDAOImpl implements SupplierDAO {
	
	private DataSource dataSource;

	public SupplierDAOImpl(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public List<Supplier> findALl() {
        List<Supplier> list = new ArrayList();
        try{
        String sql = "select sup_id, sup_name, sup_address from supplier";
        Connection connection = dataSource.getConnection();
        Statement st = connection.createStatement();
        ResultSet result = st.executeQuery(sql);
        while (result.next()){
            Supplier supplierObject = new Supplier();
            supplierObject.setSup_id(result.getInt("sup_id"));
            supplierObject.setSup_name(result.getString("sup_name"));
            supplierObject.setSup_address(result.getString("sup_address"));
            list.add(supplierObject);
        }
        result.close();
        st.close();
        connection.close();
        }catch(SQLException ex){  

        }
        return list;
    }

}
