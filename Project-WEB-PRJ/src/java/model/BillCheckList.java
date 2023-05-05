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
import org.json.JSONArray;

/**
 *
 * @author TCNJK
 */
public class BillCheckList {

    String userId;
    ArrayList<BillChecked> list=new ArrayList<>();

    public BillCheckList() {
    }

    public BillCheckList(String userId, JSONArray aniId2) {
        this.userId = userId;
        for (int i = 0; i < aniId2.length(); i++) {
            String id_ani = aniId2.getString(i);
            list.add(get(id_ani));
        }

    }

    public ArrayList<BillChecked> getList() {
        return list;
    }

    public void setList(ArrayList<BillChecked> list) {
        this.list = list;
    }

    public BillChecked get(String aniID) {
        BillChecked k=null;
        Connection cnn = new connect2().getConnection("");
        String Query = "SELECT cart.user_id,Ani.id_ani,img.img_link,Ani.name_ani,Prices.sling,dbo.Prices.semili_mature,dbo.Prices.mature_male,dbo.Prices.mature_female,cart.num,cart.num_semili_mature,cart.num_mature_male,cart.nume_mature_female\n"
                + "				FROM dbo.cart\n"
                + "				INNER JOIN dbo.Ani ON Ani.id_ani = cart.id_ani\n"
                + "				INNER JOIN dbo.img ON cart.id_ani = img.id_ani\n"
                + "                INNER JOIN dbo.Prices ON Prices.id_ani = Ani.id_ani\n"
                + "                WHERE cart.user_id= ? and img.stt=1 and cart.id_ani=?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = cnn.prepareStatement(Query);
            ps.setString(1, userId);
            ps.setString(2, aniID);
            rs = ps.executeQuery();
            int i = 0;
            while (rs.next()) {
                k= new BillChecked(rs.getString("user_id"), rs.getString("id_ani"), rs.getString("img_link"), rs.getString("name_ani"), rs.getDouble("sling"), rs.getDouble("semili_mature"), rs.getDouble("mature_male"), rs.getDouble("mature_female"), rs.getInt("num"), rs.getInt("num_semili_mature"), rs.getInt("num_mature_male"), rs.getInt("nume_mature_female"), i);
                i++;
            }
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }
        return k;
    }
}
