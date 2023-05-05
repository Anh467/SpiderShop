/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import Connect.connect2;
import Control.HashCode;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author TCNJK
 */
public class AccountCheck {

    String userString;
    String email;
    String userid;
    String pass;

    public AccountCheck(String userid, String pass) {
        this.userid = userid;
        this.pass = pass;
    }
    
    public AccountCheck() {
    }

    public AccountCheck(String userString) {
        this.userString = userString;
        check();
    }

    public String getUserString() {
        return userString;
    }

    public void setUserString(String userString) {
        this.userString = userString;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public void check() {
        Connection cnn = new connect2().getConnection("");
        String Query = "SELECT customer.user_mail,customer.user_id FROM dbo.customer "
                + " WHERE customer.user_account=?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = cnn.prepareStatement(Query);
            ps.setString(1, userString);
            rs = ps.executeQuery();
            int i = 0;
            while (rs.next()) {
                email = rs.getString("user_mail");
                userid = rs.getString("user_id");
            }
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }
    }

    public void setNewPass() {
        Connection cnn = new connect2().getConnection("");
        String Query = "UPDATE dbo.customer \n"
                + "SET customer.user_password=?\n"
                + "WHERE customer.user_id=?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = cnn.prepareStatement(Query);
            Control.HashCode e=new HashCode();
            String passHash=e.toHexString(e.getSHA(pass));
            ps.setString(1, passHash);
            ps.setString(2, userid);

            rs = ps.executeQuery();
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }
    }
}
