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
import model.Admin_ani;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "Admin_Update", urlPatterns = {"/adminupdate"})
public class Admin_Update extends HttpServlet {

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
        String id_ani = request.getParameter("id_ani");
        GetInfor ani = new GetInfor();
        Admin_ani uani = ani.getAnimalById_Admin(id_ani);
        request.setAttribute("up", uani);
        request.getRequestDispatcher("Admin/Admin_U.jsp").forward(request, response);
//       response.sendRedirect("Admin/Admin_product.jsp");
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
        String id_ani = request.getParameter("id_ani");
        String species = request.getParameter("spec");
        String name = request.getParameter("name");
        String genus = request.getParameter("gen");
        String name_spec = request.getParameter("name_spec");
        String img1 = request.getParameter("img1");
        String img2 = request.getParameter("img2");
        String img3 = request.getParameter("img3");
        String priceSling = request.getParameter("psling");
        String priceSemili = request.getParameter("psemili");
        String priceMale = request.getParameter("pmale");
        String priceFemale = request.getParameter("pfemale");
        String detail = request.getParameter("detail");
        
        GetInfor ani = new GetInfor();
        ani.Update_Admin(id_ani, species, name, name_spec, genus, img1, img2, img3, Integer.parseInt(priceSling), 
                Integer.parseInt(priceSemili), Integer.parseInt(priceMale), Integer.parseInt(priceFemale), detail);
        System.out.println("uppppppppp");
        response.sendRedirect("Admin/Admin_product.jsp");
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
