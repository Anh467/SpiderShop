/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Action;

import Control.connect2;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Ani;

/**
 *
 * @author 84384
 */
public class ViewAll extends HttpServlet {

    Connection cnn;
    LinkedList<Ani> ani = new LinkedList<>();
    PreparedStatement ps;
    ResultSet rs;

    public void set() {
        String Query = "select b.name_cat, (TRIM(c.name_genus)+' '+TRIM(a.name_species)) as scienct_name, a.name_ani from ani a inner join cat b on b.id_cat = a.id_cat inner join dbo.Genús c on c.id_genus = a.id_genus";
        Connection cnn = new connect2().getConnection();

        try {
            ps = cnn.prepareStatement(Query);
            rs = ps.executeQuery();
            System.out.println("TRUE AT QuerY");
        } catch (SQLException e) {
            System.err.println("WRONG AT QuerY");
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        response.setContentType("text/html");
        PrintWriter pr = response.getWriter();
        set();
        pr.print("<html> <head>");
        pr.print("<title>TODO supply a title</title>");
        pr.print("<meta charset=\"UTF-8\">");
        pr.print("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
        pr.print(" </head><body>");
        pr.print("<table style=\"width:100%; border:1px solid black;\" >");
        pr.print("<tr>");
        pr.print("<th style=\"border:1px solid black;\">id_mg</th>");
        pr.print("<th style=\"border:1px solid black;\">name_mg</th>");
        pr.print("<th style=\"border:1px solid black;\">publish_mg</th>");
        pr.print("<th style=\"border:1px solid black;\">price_mg</th>");
        System.out.println("Start create table");
        pr.print("</tr>");
        try {
            while (rs.next()) {
                pr.print("<tr>");
                pr.print("<td style=\"border:1px solid black;\">" + rs.getNString(1) + "</td>");
                pr.print("<td style=\"border:1px solid black;\">" + rs.getNString(2) + "</td>");
                pr.print("<td style=\"border:1px solid black;\">" + rs.getNString(3) + "</td>");
                pr.print("</tr>");
            }
            rs.close();
            ps.close();
            cnn.close();
            cnn = null;
        } catch (SQLException ex) {
        }

        pr.println("<a href=\"index.html\">Back</a>");
        pr.print("</body></html>");
    }

}
