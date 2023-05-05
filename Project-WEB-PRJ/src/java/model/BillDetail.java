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
 * @author TCNJK
 */
public class BillDetail {

    String userId, aniId;
    int bill;
    int sling, num_semili, num_male, num_female;

    public BillDetail(String userId, String aniId, int bill_id) {
        this.userId = userId;
        this.aniId = aniId;
        this.bill = bill_id;
        set();//lấy giá trị
        add();//thêm vào bill
        deleteCart();//delate cart
        updateKho();//update Kho
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getAniId() {
        return aniId;
    }

    public void setAniId(String aniId) {
        this.aniId = aniId;
    }

    public int getSling() {
        return sling;
    }

    public void setSling(int sling) {
        this.sling = sling;
    }

    public int getNum_semili() {
        return num_semili;
    }

    public void setNum_semili(int num_semili) {
        this.num_semili = num_semili;
    }

    public int getNum_male() {
        return num_male;
    }

    public void setNum_male(int num_male) {
        this.num_male = num_male;
    }

    public int getNum_female() {
        return num_female;
    }

    public void setNum_female(int num_female) {
        this.num_female = num_female;
    }

    public void set() {
        Connection cnn = new connect2().getConnection("");
        String Query = "SELECT cart.num,cart.num_semili_mature,cart.num_mature_male,"
                + "cart.nume_mature_female FROM dbo.cart \n"
                + "WHERE cart.id_ani=? AND cart.user_id=?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = cnn.prepareStatement(Query);
            ps.setString(1, aniId);
            ps.setString(2, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                setSling(rs.getInt("num"));
                setNum_semili(rs.getInt("num_semili_mature"));
                setNum_male(rs.getInt("num_mature_male"));
                setNum_female(rs.getInt("nume_mature_female"));
            }
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }
    }

    public void add() {
        Connection cnn = new connect2().getConnection(new Control.Query().DataBaseName);
        PreparedStatement ps;
        ResultSet rs;
        try {
            String sql = "INSERT INTO dbo.bill_details\n"
                    + "(\n"
                    + "    bill_id,\n"
                    + "    id_ani,\n"
                    + "    num_sling,\n"
                    + "    num_semili,\n"
                    + "    num_male,\n"
                    + "    num_female\n"
                    + ")\n"
                    + "VALUES\n"
                    + "(   ?,  -- bill_id - int\n"
                    + "    ?, -- id_ani - char(10)\n"
                    + "    ?,  -- num_sling - int\n"
                    + "    ?,  -- num_semili - int\n"
                    + "    ?,  -- num_male - int\n"
                    + "    ?   -- num_female - int\n"
                    + "    )";

            ps = cnn.prepareStatement(sql);
            ps.setInt(1, bill);
            ps.setString(2, aniId);
            ps.setInt(3, sling);
            ps.setInt(4, num_semili);
            ps.setInt(5, num_male);
            ps.setInt(6, num_female);
            rs = ps.executeQuery();
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }
    }

    public void deleteCart() {
        Connection cnn = new connect2().getConnection(new Control.Query().DataBaseName);
        PreparedStatement ps;
        ResultSet rs;
        try {
            String sql = "DELETE FROM dbo.cart \n"
                    + "WHERE cart.user_id=? AND cart.id_ani=?";

            ps = cnn.prepareStatement(sql);
            ps.setString(1, userId);
            ps.setString(2, aniId);
            rs = ps.executeQuery();
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }
    }

    public void updateKho() {
        Connection cnn = new connect2().getConnection(new Control.Query().DataBaseName);
        PreparedStatement ps;
        ResultSet rs;
        try {
            String sql = "UPDATE dbo.warehouse \n"
                    + "SET warehouse.num_sling=warehouse.num_sling-?,"
                    + "warehouse.num_semili_mature=warehouse.num_semili_mature-?,"
                    + "warehouse.num_mature_male=warehouse.num_mature_male-?,"
                    + "warehouse.num_mature_female=warehouse.num_mature_female-?\n"
                    + "where warehouse.id_ani=?";

            ps = cnn.prepareStatement(sql);
            ps.setInt(1, sling);
            ps.setInt(2, num_semili);
            ps.setInt(3, num_male);
            ps.setInt(4, num_female);
            ps.setString(5, aniId);
            rs = ps.executeQuery();
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }
    }
}
