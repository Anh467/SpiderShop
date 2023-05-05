/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package Control;

import java.sql.*;
import java.util.HashMap;
import java.util.Random;

/**
 *
 * @author 84384
 */
public class Rand {
    public String getStringNum(int kk) {
        String c = "";
        Random random = new Random();
        for (int k = 0; k < kk + 1; k++) {
            c += ""+random.nextInt(10);
        }
        return c;
    }
    
    public String getString(int kk) {
        String c = "";
        Random random = new Random();
        for (int k = 0; k < kk + 1; k++) {
            c += (char) ('a' - 1 + (random.nextInt(26)));
        }
        return c;
    }
    public String getRandID() {
        HashMap<String, String> userId = new HashMap<String, String>(); 
        String query= new Control.Query().get_all_id_user();
        Connection cnn= new Connect.connect2().getConnection("");
        try {
            PreparedStatement ps= cnn.prepareStatement(query);
            ResultSet rs= ps.executeQuery();
            while (rs.next()) {                
                userId.put(rs.getString(1), "0");
            }
        } catch (Exception e) {
            System.out.println("File Rand.java");
            e.printStackTrace();
        }
        String id;
        while (true) {            
           id= "ID"+getStringNum(7);
           if(!userId.containsKey(id)) return id;
        }
    }
    public static void main(String args[]) {
        // TODO code application logic here
    }
}
