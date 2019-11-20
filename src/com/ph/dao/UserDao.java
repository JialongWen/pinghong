package com.ph.dao;

import com.ph.bean.User;
import com.ph.dbutil.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

    public List<User> findAll() throws SQLException {
        List<User> userlist = new ArrayList<>();
        Connection connection = DBUtil.getConnection();
        String  sql = "select * from T_user";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);
        while (rs.next()){
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setRank(rs.getInt("rank"));
            userlist.add(user);
        }
        return userlist;
    }

    public boolean add(User user) throws SQLException {
        Connection connection = DBUtil.getConnection();
        String sql = "insert into T_user values(null,?,?,null)";
        PreparedStatement pstm = connection.prepareStatement(sql);
        pstm.setString(1,user.getUsername());
        pstm.setString(2,user.getPassword());
        boolean result = pstm.execute();
        pstm.close();
        return result;
    }

    public boolean delect(User user) throws SQLException {

        Connection connection = DBUtil.getConnection();
        String sql = "delete from T_user where username=?";
        PreparedStatement psmt = connection.prepareStatement(sql);
        psmt.setString(1,user.getUsername());
        boolean result = psmt.execute();
        psmt.close();
        return  result;
    }

}
