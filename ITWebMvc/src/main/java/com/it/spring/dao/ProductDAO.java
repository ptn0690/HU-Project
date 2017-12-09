package com.it.spring.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

import com.it.spring.common.AppConstant;
import com.it.spring.model.Category;
import com.it.spring.model.Product;
import com.it.spring.model.Supplier;

public class ProductDAO implements ProductDAOImpl {
	private DataSource dataSource;

	public ProductDAO(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public List<Product> findALl() {
        List<Product> list = new ArrayList();
        try {
            String sql = "select pro_id, sup_name, cat_name, pro_name, pro_os, pro_cpu, pro_ram, pro_graphic, pro_monitor, pro_battery, pro_size, pro_camera, pro_price, pro_ishot, pro_isnew, pro_smallImage, pro_largeImage from product p, supplier s, category c where p.cat_id = c.cat_id and p.sup_id = s.sup_id";
            Connection connection = dataSource.getConnection();
            Statement st = connection.createStatement();
            ResultSet result = st.executeQuery(sql);
            while (result.next()) {
                Product productObject = new Product();
                productObject.setId(result.getInt("pro_id"));
                Supplier supplier = new Supplier();
                supplier.setSup_name(result.getString("sup_name"));
                productObject.setSupplier(supplier);
                Category category = new Category();
                category.setCat_name(result.getString("cat_name"));
                productObject.setCategory(category);
                productObject.setName(result.getString("pro_name"));
                productObject.setPro_os(result.getString("pro_os"));
                productObject.setPro_cpu(result.getString("pro_cpu"));
                productObject.setPro_ram(result.getString("pro_ram"));
                productObject.setPro_graphic(result.getString("pro_graphic"));
                productObject.setPro_monitor(result.getString("pro_monitor"));
                productObject.setPro_battery(result.getString("pro_battery"));
                productObject.setPro_size(result.getString("pro_size"));
                productObject.setPro_camera(result.getString("pro_camera"));
                productObject.setPrice(result.getDouble("pro_price"));
                productObject.setPro_ishot(result.getInt("pro_ishot"));
                productObject.setPro_isnew(result.getInt("pro_isnew"));
                productObject.setPro_smallImage(result.getString("pro_smallImage"));
                productObject.setPro_largeImage(result.getString("pro_largeImage"));
                list.add(productObject);
            }
            result.close();
            st.close();
            connection.isClosed();
        } catch (SQLException ex) {
        }
        return list;
    }

    public List<Product> ishot() {
        List<Product> list = new ArrayList();
        try {
            String sql = "select pro_id, sup_name, cat_name, pro_name, pro_os, pro_cpu, pro_ram, pro_graphic, pro_monitor, pro_battery, pro_size, pro_camera, pro_price, pro_ishot, pro_isnew, pro_smallImage, pro_largeImage from product p, supplier s, category c where p.cat_id = c.cat_id and p.sup_id = s.sup_id and pro_ishot = 1";
            Connection connection = dataSource.getConnection();
            Statement st = connection.createStatement();
            ResultSet result = st.executeQuery(sql);
            while (result.next()) {
                Product productObject = new Product();
                productObject.setId(result.getInt("pro_id"));
                Supplier supplier = new Supplier();
                supplier.setSup_name(result.getString("sup_name"));
                productObject.setSupplier(supplier);
                Category category = new Category();
                category.setCat_name(result.getString("cat_name"));
                productObject.setCategory(category);
                productObject.setName(result.getString("pro_name"));
                productObject.setPro_os(result.getString("pro_os"));
                productObject.setPro_cpu(result.getString("pro_cpu"));
                productObject.setPro_ram(result.getString("pro_ram"));
                productObject.setPro_graphic(result.getString("pro_graphic"));
                productObject.setPro_monitor(result.getString("pro_monitor"));
                productObject.setPro_battery(result.getString("pro_battery"));
                productObject.setPro_size(result.getString("pro_size"));
                productObject.setPro_camera(result.getString("pro_camera"));
                productObject.setPrice(result.getDouble("pro_price"));
                productObject.setPro_ishot(result.getInt("pro_ishot"));
                productObject.setPro_isnew(result.getInt("pro_isnew"));
                productObject.setPro_smallImage(result.getString("pro_smallImage"));
                productObject.setPro_largeImage(result.getString("pro_largeImage"));
                list.add(productObject);
            }
            result.close();
            st.close();
            connection.isClosed();
        } catch (SQLException ex) {
        }
        return list;
    }

    public List<Product> isnew() {
        List<Product> list = new ArrayList();
        try {
            String sql = "select pro_id, sup_name, cat_name, pro_name, pro_os, pro_cpu, pro_ram, pro_graphic, pro_monitor, pro_battery, pro_size, pro_camera, pro_price, pro_ishot, pro_isnew, pro_smallImage, pro_largeImage from product p, supplier s, category c where p.cat_id = c.cat_id and p.sup_id = s.sup_id and pro_isnew = 1";
            Connection connection = dataSource.getConnection();
            Statement st = connection.createStatement();
            ResultSet result = st.executeQuery(sql);
            while (result.next()) {
                Product productObject = new Product();
                productObject.setId(result.getInt("pro_id"));
                Supplier supplier = new Supplier();
                supplier.setSup_name(result.getString("sup_name"));
                productObject.setSupplier(supplier);
                Category category = new Category();
                category.setCat_name(result.getString("cat_name"));
                productObject.setCategory(category);
                productObject.setName(result.getString("pro_name"));
                productObject.setPro_os(result.getString("pro_os"));
                productObject.setPro_cpu(result.getString("pro_cpu"));
                productObject.setPro_ram(result.getString("pro_ram"));
                productObject.setPro_graphic(result.getString("pro_graphic"));
                productObject.setPro_monitor(result.getString("pro_monitor"));
                productObject.setPro_battery(result.getString("pro_battery"));
                productObject.setPro_size(result.getString("pro_size"));
                productObject.setPro_camera(result.getString("pro_camera"));
                productObject.setPrice(result.getDouble("pro_price"));
                productObject.setPro_ishot(result.getInt("pro_ishot"));
                productObject.setPro_isnew(result.getInt("pro_isnew"));
                productObject.setPro_smallImage(result.getString("pro_smallImage"));
                productObject.setPro_largeImage(result.getString("pro_largeImage"));
                list.add(productObject);
            }
            result.close();
            st.close();
            connection.isClosed();
        } catch (SQLException ex) {
        }
        return list;
    }

    public List<Product> smallPriceToHight() {
        List<Product> list = new ArrayList();
        try {
            String sql = "select pro_id, sup_name, cat_name, pro_name, pro_os, pro_cpu, pro_ram, pro_graphic, pro_monitor, pro_battery, pro_size, pro_camera, pro_price, pro_ishot, pro_isnew, pro_smallImage, pro_largeImage from product p, supplier s, category c where p.cat_id = c.cat_id and p.sup_id = s.sup_id order by pro_price asc";
            Connection connection = dataSource.getConnection();
            Statement st = connection.createStatement();
            ResultSet result = st.executeQuery(sql);
            while (result.next()) {
                Product productObject = new Product();
                productObject.setId(result.getInt("pro_id"));
                Supplier supplier = new Supplier();
                supplier.setSup_name(result.getString("sup_name"));
                productObject.setSupplier(supplier);
                Category category = new Category();
                category.setCat_name(result.getString("cat_name"));
                productObject.setCategory(category);
                productObject.setName(result.getString("pro_name"));
                productObject.setPro_os(result.getString("pro_os"));
                productObject.setPro_cpu(result.getString("pro_cpu"));
                productObject.setPro_ram(result.getString("pro_ram"));
                productObject.setPro_graphic(result.getString("pro_graphic"));
                productObject.setPro_monitor(result.getString("pro_monitor"));
                productObject.setPro_battery(result.getString("pro_battery"));
                productObject.setPro_size(result.getString("pro_size"));
                productObject.setPro_camera(result.getString("pro_camera"));
                productObject.setPrice(result.getDouble("pro_price"));
                productObject.setPro_ishot(result.getInt("pro_ishot"));
                productObject.setPro_isnew(result.getInt("pro_isnew"));
                productObject.setPro_smallImage(result.getString("pro_smallImage"));
                productObject.setPro_largeImage(result.getString("pro_largeImage"));
                list.add(productObject);
            }
            result.close();
            st.close();
            connection.isClosed();
        } catch (SQLException ex) {
        }
        return list;
    }
 public List<Product> hightPriceToSmall() {
        List<Product> list = new ArrayList();
        try {
            String sql = "select pro_id, sup_name, cat_name, pro_name, pro_os, pro_cpu, pro_ram, pro_graphic, pro_monitor, pro_battery, pro_size, pro_camera, pro_price, pro_ishot, pro_isnew, pro_smallImage, pro_largeImage from product p, supplier s, category c where p.cat_id = c.cat_id and p.sup_id = s.sup_id order by pro_price desc";
            Connection connection = dataSource.getConnection();
            Statement st = connection.createStatement();
            ResultSet result = st.executeQuery(sql);
            while (result.next()) {
                Product productObject = new Product();
                productObject.setId(result.getInt("pro_id"));
                Supplier supplier = new Supplier();
                supplier.setSup_name(result.getString("sup_name"));
                productObject.setSupplier(supplier);
                Category category = new Category();
                category.setCat_name(result.getString("cat_name"));
                productObject.setCategory(category);
                productObject.setName(result.getString("pro_name"));
                productObject.setPro_os(result.getString("pro_os"));
                productObject.setPro_cpu(result.getString("pro_cpu"));
                productObject.setPro_ram(result.getString("pro_ram"));
                productObject.setPro_graphic(result.getString("pro_graphic"));
                productObject.setPro_monitor(result.getString("pro_monitor"));
                productObject.setPro_battery(result.getString("pro_battery"));
                productObject.setPro_size(result.getString("pro_size"));
                productObject.setPro_camera(result.getString("pro_camera"));
                productObject.setPrice(result.getDouble("pro_price"));
                productObject.setPro_ishot(result.getInt("pro_ishot"));
                productObject.setPro_isnew(result.getInt("pro_isnew"));
                productObject.setPro_smallImage(result.getString("pro_smallImage"));
                productObject.setPro_largeImage(result.getString("pro_largeImage"));
                list.add(productObject);
            }
            result.close();
            st.close();
            connection.isClosed();
        } catch (SQLException ex) {
        }
        return list;
    }
    public Product findProductByID(int pro_id) {

        String sql = "select pro_id, p.sup_id, p.cat_id, pro_name, pro_os, pro_cpu, pro_ram, pro_graphic, pro_monitor, pro_battery, pro_size, pro_camera, pro_price, pro_ishot, pro_isnew, pro_smallImage, pro_largeImage from product p, supplier s, category c where p.cat_id = c.cat_id and p.sup_id = s.sup_id and pro_id = " + pro_id;
        Product productObject = new Product();
        try {
            Connection connection = dataSource.getConnection();
            Statement st = connection.createStatement();
            ResultSet result = st.executeQuery(sql);
            if (result.next()) {

                productObject.setId(result.getInt("pro_id"));
                Supplier supplier = new Supplier();
                supplier.setSup_id(result.getInt("sup_id"));
                productObject.setSupplier(supplier);
                Category category = new Category();
                category.setCat_id(result.getInt("cat_id"));
                productObject.setCategory(category);
                productObject.setName(result.getString("pro_name"));
                productObject.setPro_os(result.getString("pro_os"));
                productObject.setPro_cpu(result.getString("pro_cpu"));
                productObject.setPro_ram(result.getString("pro_ram"));
                productObject.setPro_graphic(result.getString("pro_graphic"));
                productObject.setPro_monitor(result.getString("pro_monitor"));
                productObject.setPro_battery(result.getString("pro_battery"));
                productObject.setPro_size(result.getString("pro_size"));
                productObject.setPro_camera(result.getString("pro_camera"));
                productObject.setPrice(result.getDouble("pro_price"));
                productObject.setPro_ishot(result.getInt("pro_ishot"));
                productObject.setPro_isnew(result.getInt("pro_isnew"));
                productObject.setPro_smallImage(result.getString("pro_smallImage"));
                productObject.setPro_largeImage(result.getString("pro_largeImage"));

            }

        } catch (SQLException ex) {
            System.out.println("tttttttt" + ex);
        }
        return productObject;
    }

    public void updateProduct(Product product) {
        String sql = "update product set sup_id = ?, cat_id = ?, pro_name = ?, pro_os = ?,"
                + "pro_cpu = ?, pro_ram = ?, pro_graphic = ? , pro_monitor = ?, pro_battery = ?,"
                + "pro_size = ?, pro_camera = ?, pro_price = ?, pro_isnew = ?, pro_ishot = ?, pro_smallImage = ?, pro_largeImage = ?"
                + " where pro_id = ? ";
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement p = connection.prepareStatement(sql);
            p.setInt(1, product.getSupplier().getSup_id());
            p.setInt(2, product.getCategory().getCat_id());
            p.setString(3, product.getName());
            p.setString(4, product.getPro_os());
            p.setString(5, product.getPro_cpu());
            p.setString(6, product.getPro_ram());
            p.setString(7, product.getPro_graphic());
            p.setString(8, product.getPro_monitor());
            p.setString(9, product.getPro_battery());
            p.setString(10, product.getPro_size());
            p.setString(11, product.getPro_camera());
            p.setDouble(12, product.getPrice());
            p.setInt(13, product.getPro_isnew());
            p.setInt(14, product.getPro_ishot());
            p.setString(15, product.getPro_smallImage());
            p.setString(16, product.getPro_largeImage());
            p.setInt(17, product.getId());
            p.execute();
        } catch (SQLException ex) {
            System.out.println("uuuuuuuuuuu" + ex);
        }
    }

    public void insertProduct(Product product) {
        String sql = " insert into product (sup_id, cat_id, pro_name, pro_os, pro_cpu, pro_ram, pro_graphic, pro_monitor, pro_battery, pro_size, pro_camera, pro_price, pro_ishot, pro_isnew, pro_smallImage,pro_largeImage, pro_quantity)  "
                + "values('" + product.getSupplier().getSup_id() + "','" + product.getCategory().getCat_id() + "','" + product.getName() + "','" + product.getPro_os() + "','" + product.getPro_cpu() + "','" + product.getPro_ram() + "','" + product.getPro_graphic() + "','" + product.getPro_monitor() + "','" + product.getPro_battery() + "','" + product.getPro_size() + "','" + product.getPro_camera() + "','" + product.getPrice() + "','" + product.getPro_ishot() + "','" + product.getPro_isnew() + "','" + product.getPro_smallImage() + "','" + product.getPro_largeImage() + "','"+ AppConstant.pro_quantity +"')";
        try {

            Connection connection = dataSource.getConnection(); 
            Statement st = connection.createStatement();
            st.executeUpdate(sql);
            st.close();
            connection.isClosed();

        } catch (SQLException ex) {
            System.out.println("erorrrorororororor"+ex);
        }

    }

    public void deleteProduct(String[] products) {
        String sql = "delete from product where pro_id = ? ";
        System.out.println(sql);
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement pst = connection.prepareStatement(sql);
            for (String each : products) {
                pst.setString(1, each);
                pst.addBatch();
            }
            pst.executeBatch();
            pst.close();
            connection.isClosed();

        } catch (SQLException ex) {

            System.out.println("aaaa" + ex);
        }
    } 
   
}
