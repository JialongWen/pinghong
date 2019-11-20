package com.ph.servlet;

import com.ph.bean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        //1.获取请求中的userName password
        //2.将信息封装到User对象中
        User user = new User(request.getParameter("userName"),request.getParameter("password"));
        //3.在User对象中校验用户名或者密码是否为空
            //如果用户名为空那么在错误信息ermessage中存如用户名不可为空
            if (user.isEmptyUserName()){
                session.setAttribute("ermessage","用户名不可为空");
            //如果密码为空那么在错误信息中存入密码不可为空
            }else if(user.isEmptyPassword()){
                session.setAttribute("ermessage","密码不可为空");
            }else{
            //4.在User对象中进行登录校验
                try {
                    Map<String,Object> result = null;
                    result = user.isLogin();
                    if((Boolean) result.get("isLogin")){
                        session.setAttribute("isLoginUser",result.get("isLoginUser"));
                    }else {
                        session.setAttribute("ermessage","用户名或密码错误");
                }
                } catch (Exception e) {
                    e.printStackTrace();
                    System.out.println("查询出错");
                    }
            }
        //5.将数据重定向到页面
        if (session.getAttribute("isLoginUser")!=null){
            response.sendRedirect("index.jsp");
        }else {
            response.sendRedirect("Reception/login.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("isLoginUser")!=null){
            response.sendRedirect("index.jsp");
        }else {
            response.sendRedirect("Reception/login.jsp");
        }
    }
}
