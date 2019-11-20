package com.ph.servlet;

import com.ph.bean.Product;
import com.ph.dao.ProductDao;
import net.sf.json.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/indexAdmin")
public class FindindexAdmin  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDao productDao = new ProductDao();

        try {
            List<Product> productlist = productDao.findAll();
            JSONArray date = JSONArray.fromObject(productlist);
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html;Encoding=UTF-8");
            PrintWriter out = response.getWriter();
            out.print(date);
            System.out.println(date);
        } catch (SQLException e) {
            System.out.println("查询失败");
        }
    }
}
