package com.ph.servlet;

import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.ph.bean.Product;
import com.ph.dao.ProductDao;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/addProductServlet")
public class AddProductServlet extends HttpServlet {
    private static String DRI =null;
    private static ServletConfig servletConfig;

    @Override
    public void init(ServletConfig config) throws ServletException {
        DRI = "uploadimg/";
        servletConfig=config;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //1.处理数据
        Product product = new Product();
        try {
            product =  proccessFormData(request,response);
        } catch (Exception e) {
            System.out.println("数据处理出错");
            e.printStackTrace();
        }
        //2.将数据存到Product类中
        System.out.println(product);
    //3.交给dao处理存入数据库
        ProductDao productDao = new ProductDao();
        try {
            productDao.add(product);
        } catch (SQLException e) {
            System.out.println("数据插入失败");
            e.printStackTrace();
        }
    //4.重定向到查询中
        response.sendRedirect("productAdmin");
    }

    private Product proccessFormData(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //1.创建并初始化smartupload对象
        SmartUpload smartUpload =new SmartUpload();
        smartUpload.initialize(servletConfig,request,response);
        //2.上传文件
        smartUpload.upload();
       File file = smartUpload.getFiles().getFile(0);
        //3.获取数据并封装到Product中
        String Product_path = new String(file.getFileName().getBytes("GBK"),"UTF-8");
        String Picture_path = DRI+Product_path;
        String Id = smartUpload.getRequest().getParameter("serialNumber");
        String Product_name = new String(smartUpload.getRequest().getParameter("name").getBytes("GBK"),"UTF-8");
        String Product_id = smartUpload.getRequest().getParameter("brand");
        String Product_model = smartUpload.getRequest().getParameter("model");
        String Product_price = smartUpload.getRequest().getParameter("price");
        String Intro = new String(smartUpload.getRequest().getParameter("description").getBytes("GBK"),"UTF-8");
        Product product =new Product(Id,Product_name,Product_id,Product_model,Product_price,Product_path,Picture_path,Intro);
        //4.另存文件
        file.saveAs(Picture_path);
        //5.返回Product
        return product;
    }
}
