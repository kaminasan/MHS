/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kam.SQL.DAO;

import com.kam.DBUtil.DBUtil;
import com.kam.SQL.ConnectionFactory;

import com.kam.cms.UserBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author KaminaSan
 */
public class UserDAO {

    public List<UserBean> getAllUsers() {
        List<UserBean> userList = new ArrayList<>();
        Connection con = getConnection();
        String getUserSQL = "SELECT * "
                + "FROM users;";
        Statement stmt = DBUtil.createStatement(con);
        ResultSet rs = DBUtil.executeQuery(stmt, getUserSQL);

        try {
            while (rs.next()) {
                UserBean tempUser = new UserBean();

                //TO DO; finish by turning the RS into userbeans.
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userList;
    }

    public UserBean getSpecificUser(String user, String password) {
        ResultSet rs = null;
        PreparedStatement ps = null;
        UserBean newBean = null;
        Connection con = ConnectionFactory.returnConnection("single");
        System.out.println("We got a connection. Now attempting to get users");
        String getUserStatement = "SELECT * FROM users "
                + "WHERE userName = ? "
                + "AND userPass = ?";
        System.out.println(getUserStatement);
        try {
            System.out.println("We made the prepared");
             ps = con.prepareStatement(getUserStatement);
            
            ps.setString(1, user);
            ps.setString(2, password);
            rs = ps.executeQuery();
            boolean userExists = rs.next();
            System.out.println(userExists);
            if (!userExists) {
                System.out.println("User did not exist with username:"+ user+ "and pass:" + password);
                return newBean;
            } else {
                System.out.println("Found user successfully");
    Integer userId = rs.getInt("userId");
    String userName = rs.getString("userName");
    String firstName = rs.getString("firstName");
    String lastName = rs.getString("lastName");
    String userEmail = rs.getString("userEmail");
    String userPass = rs.getString("userPass");
    Integer userLevel = rs.getInt("userLevel");
    newBean = new UserBean(userId, userName, firstName, lastName, userEmail, userPass, userLevel);
     ps.close();
    return newBean;

}

} catch (SQLException sqexc) {
            sqexc.printStackTrace();
            System.out.println("Leaving catch");
            return newBean;
        }

        finally{
            System.out.println("Leaving finally");
            DBUtil.closeConnection(con);
            DBUtil.closeRS(rs); 
           
        }
       
    }
    

        public String insertUser(UserBean newUser) {
            String tempString = null;
        return tempString;
    }

        public String updateStudent(UserBean updatedStudent) {
             String tempString = null;
        return tempString;
    }

    
        public boolean userInDatabase(String user, String password) {
                ResultSet rs = null;
        PreparedStatement ps = null;
        
        Connection con = ConnectionFactory.returnConnection("single");
        String getUserStatement = "SELECT userName FROM users "
                                + "WHERE userName = ? and userPass = ? ";

        try {
             ps = con.prepareStatement(getUserStatement);
            ps.setString(1, user);
            ps.setString(2, password);
            rs = ps.executeQuery();
            boolean userExists = rs.next();
            DBUtil.closeStatement(ps);
            return userExists;

} catch (SQLException sqexc) {
            sqexc.printStackTrace();
        }

        finally{
            DBUtil.closeConnection(con);
            DBUtil.closeRS(rs);
            
        }
        return false;
    }

          public boolean userInDatabase(String user) {
                ResultSet rs = null;
        PreparedStatement ps = null;
        boolean userInDatabase = false;
        
        Connection con = ConnectionFactory.returnConnection("single");
        String getUserStatement = "SELECT userName FROM users "
                                + "WHERE userName = ?";

        try {
             ps = con.prepareStatement(getUserStatement);
            ps.setString(1, user);
            rs = ps.executeQuery();
            userInDatabase = rs.next();
            DBUtil.closeStatement(ps);
            return userInDatabase;

} catch (SQLException sqexc) {
            sqexc.printStackTrace();
            return false;
        }

        finally{
            DBUtil.closeConnection(con);
            DBUtil.closeRS(rs);
            
        }
        
    }

        
    private Connection getConnection() {
        Connection con = ConnectionFactory.returnConnection("single");
        return con;
    }

}
