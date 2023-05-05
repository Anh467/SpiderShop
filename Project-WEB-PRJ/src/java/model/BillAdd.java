/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import Connect.connect2;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

/**
 *
 * @author TCNJK
 */
public class BillAdd {

    String user, phone, address, name;
    int id;
    String date;

    public BillAdd() {
    }

    public BillAdd( int id,String name,String phone, String address, Date date) {
        this.phone = phone;
        this.address = address;
        this.name = name;
        this.id = id;
        this.date = date.toString();
    }
    
    public BillAdd(String user, String phone, String address, String name) {
        this.user = user;
        this.phone = phone;
        this.address = address;
        this.name = name;
    }   

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public int getId2(){
        return id;
    }
    public int getId() {
        int id=0;
        Connection cnn = new connect2().getConnection("");
        String Query = "SELECT TOP 1 bill.bill_id "
                + "FROM dbo.bill WHERE bill.user_id=?\n"
                + "ORDER BY bill.bill_id DESC";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = cnn.prepareStatement(Query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                id=rs.getInt("bill_id");
            }
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }
        return id;
    }
    public void add() {
        Connection cnn = new connect2().getConnection(new Control.Query().DataBaseName);
        PreparedStatement ps;
        ResultSet rs;
        try {
            String sql = "INSERT INTO dbo.bill\n"
                    + "(\n"
                    + "    user_id,\n"
                    + "    bill_date,\n"
                    + "    phone_rec,\n"
                    + "    addres_rec,\n"
                    + "    name_rec\n"
                    + ")\n"
                    + "VALUES\n"
                    + "(   ?,        -- user_id - char(20)\n"
                    + "    GETDATE(), -- bill_date - datetime\n"
                    + "    ?,        -- phone_rec - char(15)\n"
                    + "    ?,       -- addres_rec - nvarchar(250)\n"
                    + "    ?        -- name_rec - nvarchar(50)\n"
                    + "    )";

            ps = cnn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, phone);
            ps.setNString(3, address);
            ps.setString(4, name);
            rs = ps.executeQuery();
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
            e.printStackTrace();
        }
    }
}
