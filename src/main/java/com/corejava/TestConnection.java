package com.corejava;

import java.sql.Connection;

public class TestConnection {

    public static void main(String[] args) {

        try {

            Connection con = DBConnection.getConnection();
            
            System.out.println("DATABASE CONNECTION SUCCESSFUL");

            con.close();

        } catch (Exception e) {

            e.printStackTrace();

        }
    }
}