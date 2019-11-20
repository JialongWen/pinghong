package com.ph.bean;

import com.ph.dao.UserDao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public class User {
    private int id;
    private String username;
    private String password;
    private int rank;
    public User(){

    }

    public User(String username) {
        this.username = username;
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;
        User user = (User) o;
        return getId() == user.getId() &&
                getRank() == user.getRank() &&
                Objects.equals(getUsername(), user.getUsername()) &&
                Objects.equals(getPassword(), user.getPassword());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), getUsername(), getPassword(), getRank());
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", rank=" + rank +
                '}';
    }

    public boolean isEmptyUserName() {
        boolean result = false;
        if (this.username==null || this.username.equals("")){
            result = true;
        }
        return result;
    }

    public boolean isEmptyPassword() {
        boolean resule = false;
        if (this.password==null || this.password == "" ){
            resule = true;
        }
        return resule;
    }

    public Map<String ,Object> isLogin() throws SQLException {
        //吧数据传给UserDao处理返回boolean类型
        Map<String,Object> result = new HashMap<>();
        UserDao userDao = new UserDao();
        List<User> userList= userDao.findAll();
        for (User user : userList){
            result.put("isLogin",false);
            if(this.username.equals(user.username) && this.password.equals(user.password)){
            result.put("isLogin",true);
            result.put("isLoginUser",user);
            break;
            }
        }
        return result;
    }
}
