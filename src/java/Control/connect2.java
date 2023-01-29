/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package Control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class connect2 {

    String user = "sa";
    String password = "nguyenanhviet";
    String dataName = "SpiderShop";

    public Connection getConnection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String connectionUrl = "jdbc:sqlserver://MSI\\SQLEXPRESS:1433;databaseName=" + dataName + "; Encrypt=false;";
            Connection con = DriverManager.getConnection(connectionUrl, user, password);
            System.out.println("True at connection");
            return con;
        } catch (Exception e) {
            System.out.println("false at connection hmm");
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String args[]) {
        System.out.println("begin");
        Connection cnn = new connect2().getConnection();
        if(cnn==null) System.out.println("Cnn is null");
        else System.out.println("cnn not null");
        String Query= "select trim(b.name_cat), (TRIM(c.name_genus)+' '+TRIM(a.name_species)) as scienct_name, trim(a.name_ani) from ani a inner join cat b on b.id_cat = a.id_cat inner join dbo.Genús c on c.id_genus = a.id_genus";
//        String Query = "select b.name_cat, (TRIM(c.name_genus)+' '+TRIM(a.name_species)) as scienct_name, a.name_ani from ani a inner join cat b on b.id_cat = a.id_cat inner join dbo.Genús c on c.id_genus = a.id_genus";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = cnn.prepareStatement(Query);
            rs = ps.executeQuery();
            int col = rs.getMetaData().getColumnCount();
            while (rs.next()) 
                System.out.println("output: " + rs.getString(1)+" " +rs.getString(2)+" "+rs.getString(3));

            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG AT QUERY");
            e.printStackTrace();
        }

    }
}
