/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import Connect.connect2;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author 84384
 */
public class AddressUser {

    private String address_id, user_id, phone_rec, addres_rec, name_rec;

    public AddressUser(String address_id, String user_id, String phone_rec, String addres_rec, String name_rec) {
        this.address_id = address_id;
        this.user_id = user_id;
        this.phone_rec = phone_rec;
        this.addres_rec = addres_rec;
        this.name_rec = name_rec;
    }

    public AddressUser(String user_id, String phone_rec, String addres_rec, String name_rec) {
        this.user_id = user_id;
        this.phone_rec = phone_rec;
        this.addres_rec = addres_rec;
        this.name_rec = name_rec;
    }
    
    public AddressUser() {
    }

    public String getAddress_id() {
        return address_id;
    }

    public void setAddress_id(String address_id) {
        this.address_id = address_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getPhone_rec() {
        return phone_rec;
    }

    public void setPhone_rec(String phone_rec) {
        this.phone_rec = phone_rec;
    }

    public String getAddres_rec() {
        return addres_rec;
    }

    public void setAddres_rec(String addres_rec) {
        this.addres_rec = addres_rec;
    }

    public String getName_rec() {
        return name_rec;
    }

    public void setName_rec(String name_rec) {
        this.name_rec = name_rec;
    }

    public int find() {
        int id = -1;
        Connection cnn = new connect2().getConnection("");
        String Query = "SELECT address_delivery.address_id FROM dbo.address_delivery\n"
                + "WHERE address_delivery.user_id=? \n"
                + "AND address_delivery.phone_rec=? \n"
                + "AND  address_delivery.addres_rec=?\n"
                + "AND address_delivery.name_rec=?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = cnn.prepareStatement(Query);
            ps.setString(1, user_id);
            ps.setString(2, phone_rec);
            ps.setNString(3, addres_rec);
            ps.setNString(4, name_rec);
            rs = ps.executeQuery();
            while (rs.next()) {
                id = rs.getInt("address_id");
            }
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }
        return id;
    }

}
