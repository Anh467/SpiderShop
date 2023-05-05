/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import Connect.connect2;
import Control.Query;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author TCNJK
 */
public class CartUser {
    ArrayList<CartAni> cartAnis;
    public String user="ID14018803";
    public CartUser() {
    }

    public CartUser(String user) {
        this.user = user;
        cartAnis=getCartAnis();
    }
    public void deleteAniInCart(String id){
        Query getQ= new Query();
        String Query = getQ.deleteAniInCart();
        Connection con = new connect2().getConnection("");
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(Query);
            ps.setString(1, id);
            ps.executeUpdate();
            ps.close();
            //rs = ps.executeQuery();
            System.out.println("done");
        } catch (Exception e) {
            System.err.println("fail");
            e.printStackTrace();
        }
    }
    public ArrayList<CartAni> getCartAnis() {
        return cartAnis;
    }
    public ArrayList<CartAni> getList(String user_id){
        ArrayList<CartAni> list= new ArrayList<>();
        Connection cnn = new connect2().getConnection("");    
        Query getQ= new Query();
        String Query = getQ.getCartOfUser();
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = cnn.prepareStatement(Query);
            ps.setString(1, user_id);
            rs = ps.executeQuery();
            int i=0;
            while (rs.next()) {
                list.add(new CartAni(rs.getString("user_id"),rs.getString("id_ani"),rs.getString("img_link"),rs.getString("name_ani"),rs.getDouble("sling"),rs.getDouble("semili_mature"),rs.getDouble("mature_male"),rs.getDouble("mature_female"),rs.getInt("num"),rs.getInt("num_semili_mature"),rs.getInt("num_mature_male"),rs.getInt("nume_mature_female"),i));
                i++;
            }
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }
        return list;
    }
    public void setCartAnis(ArrayList<CartAni> cartAnis) {
        this.cartAnis = cartAnis;
    }
    
}
