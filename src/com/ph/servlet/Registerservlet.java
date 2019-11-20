package com.ph.servlet;

import com.ph.bean.User;
import com.ph.dao.UserDao;
import com.sun.net.httpserver.HttpServer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/register")
public class Registerservlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                                    String username = request.getParameter("username");
                                    String passsword = request.getParameter("password");
                                    User user = new User(username,passsword);
                                    UserDao userDao = new UserDao();
        try {
            userDao.add(user);
        } catch (SQLException e) {
            System.out.println("数据库添加失败");
        }
        response.sendRedirect("admin");
            }
}
