/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kam.SQL;

import java.sql.Connection;

/**
 *
 * @author Blacksteath
 */
public class ConnectionFactory extends AbstractConnectionFactory {

    private static final ConnectionFactory instance = new ConnectionFactory();
    private static int numberOfConnectionsCalled = 0;
    public static final String URL = "jdbc:mysql://localhost:3306/baketrade";
    public static final String USER = "kaminasan";
    public static final String PASSWORD = "blitz111";
    public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";

    @Override
    Connection makeConnection(String type) {
        if (type.equalsIgnoreCase("single")) {
            SingleConnection newConnection = new SingleConnection();
            return newConnection.getConnection();
        } else {
            return null;
        }
    }

    static public Connection returnConnection(String type) {
        ConnectionFactory.numberOfConnectionsCalled++;
        return instance.makeConnection(type);

    }

}
