/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Action;

import model.GetInfor;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "AddToCart", urlPatterns = {"/addcart"})
public class AddToCart extends HttpServlet {

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
        processRequest(request, response);
//        request.getSession();
//        HttpSession session = request.getSession();
        //session.getAttribute(id);
        System.out.println("run cart");
        String id_ani = request.getParameter("id");
        System.out.println(id_ani);
        String size = (String) request.getParameter("type_ani");
        System.out.println(size);
        String number = request.getParameter("num");
        GetInfor add = new GetInfor();

        HttpSession session= request.getSession();
        String id_user=(String) session.getAttribute("id");
        if((id_user==null)||(id_user.equals(""))){
           response.sendRedirect("LoginScreen.jsp");
           return;
        }
        
        System.out.println(add.getCartByIdAni(id_ani));
        System.out.println(add.UpdateQuery(size));
        
        if (add.getCartByIdAni(id_ani)==null) {
            if (size.equalsIgnoreCase("Sling")) {
                add.AddToCart(id_user, id_ani, Integer.parseInt(number), 0, 0, 0);
                response.sendRedirect("SendToDescribe?id=" + id_ani + "");
            }
            if (size.equalsIgnoreCase("Semi li-mature")) {
                add.AddToCart(id_user, id_ani, 0, Integer.parseInt(number), 0, 0);
                response.sendRedirect("SendToDescribe?id=" + id_ani + "");
            }
            if (size.equalsIgnoreCase("Mature-Male")) {
                add.AddToCart(id_user, id_ani, 0, 0, Integer.parseInt(number), 0);
                response.sendRedirect("SendToDescribe?id=" + id_ani + "");
            }
            if (size.equalsIgnoreCase("Mature-Female")) {
                add.AddToCart(id_user, id_ani, 0, 0, 0, Integer.parseInt(number));
                response.sendRedirect("SendToDescribe?id=" + id_ani + "");
            }
        }
        
        else{
            add.UpdateCart(id_ani, Integer.parseInt(number), size);
            response.sendRedirect("SendToDescribe?id=" + id_ani + "");
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
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
