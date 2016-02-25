/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kam.SQL.DAO;

import com.kam.DBUtil.DBUtil;
import com.kam.SQL.ConnectionFactory;
import com.kam.cms.PostBean;
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
 * @author Blacksteath
 */
public class PostDAO {
    public List<PostBean> getPostBeanList(){
        List<PostBean> userList = new ArrayList<>();
        Connection con = getConnection();
        String getUserSQL = "SELECT postId, postTitle, postContent, postSummary, posterId, userName " 
                                    + "FROM posts "
                                    + "JOIN users ON posterId = userId ";
        Statement stmt = DBUtil.createStatement(con);
        ResultSet rs = DBUtil.executeQuery(stmt, getUserSQL);

        try {
            while (rs.next()) {
             PostBean tempPostBean;
            int postId = rs.getInt("postId");
            String postTitle = rs.getString("postTitle");
            String postContent = rs.getString("postContent");
            String postSummary = rs.getString("postSummary");
            int posterId = rs.getInt("posterId");
            String posterName = rs.getString("userName");
            tempPostBean = new PostBean(postId, postTitle, postContent, postSummary, posterId, posterName);
            userList.add(tempPostBean);
                //TO DO; finish by turning the RS into userbeans.
         
            
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
        DBUtil.closeStatement(stmt); 
        DBUtil.closeRS(rs);
        DBUtil.closeConnection(con);
      
    }
        return userList;
        
    }
    
      public List<PostBean> getRecentPostBeanList(){
        List<PostBean> userList = new ArrayList<>();
        Connection con = getConnection();
        String getUserSQL = "SELECT postId, postTitle, postContent, postSummary, posterId, userName " 
                                    + "FROM posts "
                                    + "JOIN users ON posterId = userId "
                                    + "ORDER BY postId DESC "
                                    + "LIMIT 5";
        Statement stmt = DBUtil.createStatement(con);
        ResultSet rs = DBUtil.executeQuery(stmt, getUserSQL);

        try {
            while (rs.next()) {
             PostBean tempPostBean;
            int postId = rs.getInt("postId");
            String postTitle = rs.getString("postTitle");
            String postContent = rs.getString("postContent");
            String postSummary = rs.getString("postSummary");
            int posterId = rs.getInt("posterId");
            String posterName = rs.getString("userName");
            tempPostBean = new PostBean(postId, postTitle, postContent, postSummary, posterId, posterName);
            userList.add(tempPostBean);
            System.out.println(tempPostBean.toString());
         
            
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
        DBUtil.closeStatement(stmt); 
        DBUtil.closeRS(rs);
        DBUtil.closeConnection(con);
      
    }
        return userList;
        
    }
    
    public PostBean getSpecificPost(String post){
    PostBean returnBean = null;
    Integer postNumber = Integer.parseInt(post.trim());
    Connection con = getConnection();
    ResultSet rs = null;
    PreparedStatement ps = null;
     final String getPostString = "SELECT postId, postTitle, postContent, postSummary, posterId, userName " 
                                    + "FROM posts "
                                    + "JOIN users ON posterId = userId "
                                    +"WHERE postId = ?";
    try{
        ps = con.prepareStatement(getPostString);
        ps.setInt(1, postNumber);
        rs = ps.executeQuery();
        boolean found = rs.next();
        if(found){
            int postId = rs.getInt("postId");
            String postTitle = rs.getString("postTitle");
            String postContent = rs.getString("postContent");
            String postSummary = rs.getString("postSummary");
            int posterId = rs.getInt("posterId");
            String posterName = rs.getString("userName");
            returnBean = new PostBean(postId, postTitle, postContent, postSummary, posterId, posterName);
            return returnBean;
        }
        
    }
    
    catch(SQLException ex){
        ex.printStackTrace();
        
    }
    
    finally{
        DBUtil.closeStatement(ps); 
        DBUtil.closeRS(rs);
        DBUtil.closeConnection(con);
      
    }
    return returnBean;
}
    
      private Connection getConnection() {
        Connection con = ConnectionFactory.returnConnection("single");
        return con;
    }
}
