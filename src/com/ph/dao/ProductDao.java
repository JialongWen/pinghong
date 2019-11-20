package com.ph.dao;

import com.ph.bean.Product;
import com.ph.dbutil.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {

    public boolean add(Product product) throws SQLException {
        Connection connection = DBUtil.getConnection();
        String sql = "insert into T_product values(?,?,?,?,?,?,?,?)";
        PreparedStatement psmt = connection.prepareStatement(sql);
        psmt.setString(1,product.getId());
        psmt.setString(2,product.getProduct_name());
        psmt.setString(3,product.getProduct_id());
        psmt.setString(4,product.getProduct_model());
        psmt.setString(5,product.getProduct_price());
        psmt.setString(6,product.getProduct_path());
        psmt.setString(7,product.getPicture_path());
        psmt.setString(8,product.getIntro());
        boolean result = psmt.execute();
        psmt.close();
        return result;
    }

    public List<Product> findAll() throws SQLException {
        List<Product> productList = new ArrayList<Product>();
        Connection connection = DBUtil.getConnection();
        String sql = "select * from T_product";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);
        while (rs.next()){
            Product product = new Product();
            product.setId(rs.getString("Id"));
            product.setIntro(rs.getString("Intro"));
            product.setPicture_path(rs.getString("Picture_path"));
            product.setProduct_id(rs.getString("Product_id"));
            product.setProduct_model(rs.getString("Product_model"));
            product.setProduct_name(rs.getString("Product_name"));
            product.setProduct_path(rs.getString("Product_path"));
            product.setProduct_price(rs.getString("Product_price"));
            productList.add(product);
        }
        return productList;
    }

    public boolean delete(Product product) throws SQLException {
        Connection connection = DBUtil.getConnection();
        String sql = "delete from T_product where Id=?";
        PreparedStatement psmt = connection.prepareStatement(sql);
        psmt.setString(1,product.getId());
        boolean result = psmt.execute();
        psmt.close();
        return result;
    }
}
