/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kam.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Blacksteath
 */
public class DBUtil {
    
    public static void closeConnection(Connection con){
        try {
            if(con != null)con.close();
        } catch (SQLException ex) {
            System.out.println("Could not close Connection");
            ex.printStackTrace();
            Logger.getLogger(DBUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static ResultSet executeQuery(Statement stmt,  String sqlStatement){
        ResultSet rs = null;
        try {
            rs = stmt.executeQuery(sqlStatement);
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(DBUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public static void closeStatement(Statement statement){
        try {
            if(statement != null) statement.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void closeRS(ResultSet rs){
        try {
            if(rs != null)rs.close();
        } catch (SQLException ex) {
             ex.printStackTrace();
            Logger.getLogger(DBUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static Statement createStatement(Connection con){
        try {
            return con.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(DBUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    }
    

