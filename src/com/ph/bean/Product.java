package com.ph.bean;

public class Product {
    private String Id;
    private String Product_name;
    private String Product_id;
    private String Product_model;
    private String Product_price;
    private String Product_path;
    private String Picture_path;
    private String Intro;

    public Product() {
    }

    public Product(String product_path, String picture_path) {
        Product_path = product_path;
        Picture_path = picture_path;
    }

    public Product(String id, String product_name, String product_id, String product_model, String product_price, String intro) {
        Id = id;
        Product_name = product_name;
        Product_id = product_id;
        Product_model = product_model;
        Product_price = product_price;
        Intro = intro;
    }

    public Product(String id, String product_name, String product_id, String product_model, String product_price, String product_path, String intro) {
        Id = id;
        Product_name = product_name;
        Product_id = product_id;
        Product_model = product_model;
        Product_price = product_price;
        Product_path = product_path;
        Intro = intro;
    }

    public Product(String id, String product_name, String product_id, String product_model, String product_price, String product_path, String picture_path, String intro) {
        Id = id;
        Product_name = product_name;
        Product_id = product_id;
        Product_model = product_model;
        Product_price = product_price;
        Product_path = product_path;
        Picture_path = picture_path;
        Intro = intro;
    }

    public String getPicture_path() {
        return Picture_path;
    }

    public void setPicture_path(String picture_path) {
        Picture_path = picture_path;
    }

    public String getId() {
        return Id;
    }

    public void setId(String id) {
        Id = id;
    }

    public String getProduct_name() {
        return Product_name;
    }

    public void setProduct_name(String product_name) {
        Product_name = product_name;
    }

    public String getProduct_id() {
        return Product_id;
    }

    public void setProduct_id(String product_id) {
        Product_id = product_id;
    }

    public String getProduct_model() {
        return Product_model;
    }

    public void setProduct_model(String product_model) {
        Product_model = product_model;
    }

    public String getProduct_price() {
        return Product_price;
    }

    public void setProduct_price(String product_price) {
        Product_price = product_price;
    }

    public String getProduct_path() {
        return Product_path;
    }

    public void setProduct_path(String product_path) {
        Product_path = product_path;
    }

    public String getIntro() {
        return Intro;
    }

    public void setIntro(String intro) {
        Intro = intro;
    }

    @Override
    public String toString() {
        return "Product{" +
                "Id='" + Id + '\'' +
                ", Product_name='" + Product_name + '\'' +
                ", Product_id=" + Product_id +
                ", Product_model='" + Product_model + '\'' +
                ", Product_price=" + Product_price +
                ", Product_path='" + Product_path + '\'' +
                ", Intro='" + Intro + '\'' +
                '}';
    }
}
