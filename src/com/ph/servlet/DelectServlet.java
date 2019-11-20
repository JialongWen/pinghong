package com.ph.servlet;

import com.ph.bean.User;
import com.ph.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/delectType")
public class DelectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //1.获取页面中的id
        String  username = request.getParameter("username");
        //2.将id封装到User类中
        User user = new User(username);
        //3.将User传到UserDao中交给delect方法来处理
        UserDao userDao = new UserDao();
        try {
            userDao.delect(user);
        } catch (SQLException e) {
            System.out.println("数据删除失败");
            e.printStackTrace();
        }
        //4.重定向到admin
        response.sendRedirect("admin");
    }
}
