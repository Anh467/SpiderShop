package model;

import Connect.connect2;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author TCNJK
 */
public class Cart {

    private String userId;
    private String spid;
    private String num1;
    private String num2;
    private String num3;
    private String num4;

    public Cart() {
    }
    
    public Cart(String userId, String spid, String num1, String num2, String num3, String num4) {
        this.userId = userId;
        this.spid = spid;
        this.num1 = num1;
        this.num2 = num2;
        this.num3 = num3;
        this.num4 = num4;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getSpid() {
        return spid;
    }

    public void setSpid(String spid) {
        this.spid = spid;
    }

    public String getNum1() {
        return num1;
    }

    public void setNum1(String num1) {
        this.num1 = num1;
    }

    public String getNum2() {
        return num2;
    }

    public void setNum2(String num2) {
        this.num2 = num2;
    }

    public String getNum3() {
        return num3;
    }

    public void setNum3(String num3) {
        this.num3 = num3;
    }

    public String getNum4() {
        return num4;
    }

    public void setNum4(String num4) {
        this.num4 = num4;
    }

    public void add() {
        Connection cnn = new connect2().getConnection(new Control.Query().DataBaseName);
        PreparedStatement ps;
        ResultSet rs;
        try {
            String sql = "INSERT INTO cart VALUES (?, ?, ?, ?, ?, ?)";

            ps = cnn.prepareStatement(sql);
            ps.setString(1, userId);
            ps.setString(2, spid);
            ps.setInt(3, Integer.parseInt(num1));
            ps.setInt(4, Integer.parseInt(num2));
            ps.setInt(5, Integer.parseInt(num3));
            ps.setInt(6, Integer.parseInt(num4));
            rs = ps.executeQuery();

            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
            e.printStackTrace();
        }
    }

    public void update() {
        Connection cnn = new connect2().getConnection(new Control.Query().DataBaseName);
        PreparedStatement ps;
        ResultSet rs;
        try {
            String sql = "UPDATE dbo.cart \n"
                    + "SET cart.num=?, cart.num_semili_mature=?, cart.num_mature_male=?, cart.nume_mature_female=?\n"
                    + "WHERE cart.user_id=? AND cart.id_ani= ?";

            ps = cnn.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(num1.trim()));
            ps.setInt(2, Integer.parseInt(num2.trim()));
            ps.setInt(3, Integer.parseInt(num3.trim()));
            ps.setInt(4, Integer.parseInt(num4.trim()));
            ps.setString(5, userId);
            ps.setString(6, spid);
            rs = ps.executeQuery();
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }
    }
}
