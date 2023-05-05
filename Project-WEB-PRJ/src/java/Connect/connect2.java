/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package Connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class connect2 {

    String databaseName = new Control.Query().DataBaseName;
    String user = "sa";
    String password = "nguyenanhviet";
    
    public void setDatabaseName(String databaseName) {
        this.databaseName = databaseName;
    }

     public Connection getConnection(String name) {
        if (name!="") databaseName= name;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String connectionUrl = "jdbc:sqlserver://MSI\\SQLEXPRESS:1433;databaseName=" + databaseName + "; Encrypt=false;";
            Connection con = DriverManager.getConnection(connectionUrl, user, password);
            System.out.println("True at connection/ connect2");
            return con;
        } catch (Exception e) {
            System.out.println("false at connection/ connect2");
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String args[]) {
        System.out.println("begin");
        Connection cnn = new connect2().getConnection("");
        String Query = "Select * from nguoidung";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = cnn.prepareStatement(Query);
            rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("output: " + rs.getNString(1) + " " + rs.getNString(2));
            }
            System.out.println("TRUE");
        } catch (Exception e) {
            System.err.println("WRONG");
        }

    }
}
