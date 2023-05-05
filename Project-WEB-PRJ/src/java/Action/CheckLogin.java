/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Action;

import Control.HashCode;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 84384
 */
public class CheckLogin extends HttpServlet {
    
    public CheckLogin() {
        System.out.println("run rong?");
    }
    
    @Override
    public void init() throws ServletException {
        super.init(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
        
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        /* TODO output your page here. You may use following sample code. */
        System.out.println("Action.CheckLogin: ");
        String user = request.getParameter("user").trim();
        String pass = request.getParameter("pass").trim();
        
        String Query = new Control.Query().check_login_user_and_pass();
        Connection cnn = new Connect.connect2().getConnection(new Control.Query().DataBaseName);
        try {
            Control.HashCode hash = new HashCode();
            String hashpass=hash.toHexString(hash.getSHA(pass));
            PreparedStatement ps = cnn.prepareStatement(Query);
            ps.setString(1, user);
            ps.setString(2,hashpass);
            ResultSet rs = ps.executeQuery();
            System.out.println("");
            System.out.println("idqewrqewrqw: ");
            
            while (rs.next()) {
                String id = rs.getString(1).trim();
                System.out.println("id this time: " + id);
                
                HttpSession session = request.getSession();
                session.setAttribute("id", id);
                //check box remember
                if (request.getParameter("check") != null) {
                    Cookie cookieIdUser = new Cookie("id", id);
                    cookieIdUser.setMaxAge(60 * 60 * 24);
                    response.addCookie(cookieIdUser);
                }
                request.getRequestDispatcher("MainMenu.jsp").forward(request, response);
                return;
            }
            request.setAttribute("user", user);
            request.setAttribute("color", "red");
            request.setAttribute("status", "Khong thanh cong");
            request.getRequestDispatcher("LoginScreen.jsp").forward(request, response);
        } catch (Exception e) {
            System.err.println("CheckLogin.java");
            e.printStackTrace();
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        try {
            for (Cookie aCookie : cookies) {
                if (aCookie.getName().equals("id")) {
                    aCookie.setValue(null);
                }
                response.addCookie(aCookie);
            }
            HttpSession session = request.getSession();
            session.setAttribute("id", null);
        } catch (Exception e) {
        }
        request.getRequestDispatcher("LoginScreen.jsp").forward(request, response);
    }
    
}
