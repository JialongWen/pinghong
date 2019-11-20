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
import java.util.List;

@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取数据库中的内容并且放入数组中
        UserDao userDao = new UserDao();
        List<User> userlist = null;
        try {
            userlist = userDao.findAll();
        } catch (SQLException e) {
            System.out.println("数据查询失败");
            e.printStackTrace();
        }
        //2.将数组放到request中
            request.setAttribute("userlist",userlist);
        //3.转发到showUserList.jsp处理
            request.getRequestDispatcher("showUserList.jsp").forward(request,response);

    }
}
