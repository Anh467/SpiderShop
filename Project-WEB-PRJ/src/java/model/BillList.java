/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import Connect.connect2;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author TCNJK
 */
public class BillList {

    String user;
    ArrayList<BillAdd> list;

    public BillList(String user) {
        this.user = user;
        this.list = getA(user);
    }

    public BillList() {
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public ArrayList<BillAdd> getList() {
        return list;
    }

    public void setList(ArrayList<BillAdd> list) {
        this.list = list;
    }

    public ArrayList<BillAdd> getA() {
        ArrayList<BillAdd> list = new ArrayList<>();
        Connection cnn = new connect2().getConnection("");
        String Query = "select bill_id, name_rec, phone_rec, addres_rec, bill_date\n"
                + "from dbo.bill";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = cnn.prepareStatement(Query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BillAdd(rs.getInt("bill_id"), rs.getNString("name_rec"), rs.getString("phone_rec"), rs.getNString("addres_rec"), rs.getDate("bill_date")));
            }
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
            e.printStackTrace();
        }
        return list;
    }

    public ArrayList<BillAdd> getA(String user) {
        String s = user;
        ArrayList<BillAdd> list = new ArrayList<>();
        Connection cnn = new connect2().getConnection("");
        String Query = "SELECT bill.bill_id,\n"
                + "bill.name_rec,\n"
                + "bill.phone_rec,\n"
                + "bill.addres_rec,\n"
                + "bill.bill_date \n"
                + "FROM dbo.bill \n"
                + "WHERE bill.user_id=?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = cnn.prepareStatement(Query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BillAdd(rs.getInt("bill_id"), rs.getNString("name_rec"), rs.getString("phone_rec"), rs.getNString("addres_rec"), rs.getDate("bill_date")));
            }
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }
        return list;
    }
}
