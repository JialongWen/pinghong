package com.ph.servlet;

import com.ph.bean.Product;
import com.ph.dao.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/productAdmin")
public class ManageProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.创建数组对象
        List<Product> productList = null;
        //2.ProductDao对象查找数据库中的内容并封装到数组对象中返回
        ProductDao productDao = new ProductDao();
        try {
            productList = productDao.findAll();
        } catch (SQLException e) {
            System.out.println("数据查询失败");
            e.printStackTrace();
        }
        System.out.println(productList);
        request.setAttribute("productList",productList);
        //3.转发到页面manageProduct.jsp中处理
        request.getRequestDispatcher("manageProduct.jsp").forward(request,response);
    }
}
