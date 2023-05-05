/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Action;

import Control.HashCode;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author 84384
 */
public class Verify extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Verify</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Verify at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            String user_id = new Control.Rand().getRandID();
            String user_name = request.getParameter("name");
            String user_birth = request.getParameter("dob");
            String user_Gender = request.getParameter("gender");
            String user_phone = request.getParameter("phone");
            String user_mail = request.getParameter("email");
            String user_account = request.getParameter("user");
            Control.HashCode hash = new HashCode();
            String user_password=hash.toHexString(hash.getSHA(request.getParameter("pass")));
            User user = new User(user_id, user_birth, user_name, user_Gender, user_phone, user_mail, user_account, 0, user_password);
            System.out.println("user: " + user.toString());
            if (!new model.GetInfor().check_exist_account(user_account)) {
                request.setAttribute("name_status", "user name already exist");
                checkFalse(request, response, user);
            } else {
                request.setAttribute("user", user);
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                new model.GetInfor().addCodeToEmail(user_mail);
                request.getRequestDispatcher("VerifyForm.jsp").forward(request, response);
            }

        } catch (Exception e) {
            System.out.println("Verify.java");
            e.printStackTrace();
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void checkFalse(HttpServletRequest request, HttpServletResponse response, User user) {
        try {
            request.setAttribute("name", user.getUser_name());
            request.setAttribute("dob", user.getUser_birth());
            request.setAttribute("gender", user.getUser_Gender());
            request.setAttribute("phone", user.getUser_phone());
            request.setAttribute("email", user.getUser_mail());
            request.setAttribute("user", user.getUser_account());
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println("Verify.java");
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String code = request.getParameter("code");
        String codeSent = new model.GetInfor().getCodeSentToMail(user.getUser_mail());
        if (code.equals(codeSent)) {
            new model.GetInfor().add_new_user(user);
            session.setAttribute("user", null);
            session.setAttribute("id", user.getUser_id());
            request.getRequestDispatcher("CreateSuccess.jsp").forward(request, response);
        } else {
            checkFalse(request, response, user);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
