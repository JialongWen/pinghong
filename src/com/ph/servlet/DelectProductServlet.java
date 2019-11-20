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

@WebServlet("/delectProductType")
public class DelectProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            //1.得到id
         String  Id = request.getParameter("Id");
            //2.封入模型
        Product product = new Product();
        product.setId(Id);
            //3.调用Dao层
        ProductDao productDao = new ProductDao();
        try {
            productDao.delete(product);
        } catch (SQLException e) {
            System.out.println("数据删除失败");
            e.printStackTrace();
        }
        //4.转发到productAdmin
        response.sendRedirect("productAdmin");
    }
}
