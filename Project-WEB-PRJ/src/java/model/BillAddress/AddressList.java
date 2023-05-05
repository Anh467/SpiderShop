/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.BillAddress;

import Connect.connect2;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.CartAni;

/**
 *
 * @author TCNJK
 */
public class AddressList {

    String userId;
    ArrayList<Address> list;

    public AddressList(String userId) {
        this.userId = userId;
        this.list = getList();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public ArrayList<Address> getList() {
        ArrayList<Address> list = new ArrayList<>();
        Connection cnn = new connect2().getConnection("");
        String Query = "SELECT address_delivery.phone_rec,"
                + "address_delivery.addres_rec,"
                + "address_delivery.name_rec \n"
                + "FROM dbo.address_delivery WHERE address_delivery.user_id=?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = cnn.prepareStatement(Query);
            ps.setString(1, userId);
            rs = ps.executeQuery();
            int i = 0;
            while (rs.next()) {
                list.add(new Address(rs.getString(1), rs.getString(2), rs.getString(3)));
                i++;
            }
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }
        return list;

    }

    public void setList(ArrayList<Address> list) {
        this.list = list;
    }

}
