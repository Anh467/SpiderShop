/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.bill;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BillAddress.Address;
import model.BillAddress.AddressList;
import model.BillCheckList;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author TCNJK
 */
@WebServlet(name = "bill", urlPatterns = {"/bill"})
public class bill extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        String dataStr = request.getParameter("data");
        try {
            JSONObject data = new JSONObject(dataStr);
            JSONArray idUser = data.getJSONArray("idUser");
            JSONArray idAni = data.getJSONArray("idAni");
            BillCheckList e = new BillCheckList(idUser.getString(0), idAni);
            request.setAttribute("list", e);
            
            AddressList address= new AddressList(idUser.getString(0));
            request.setAttribute("address", address);
            request.getRequestDispatcher("createBill.jsp").forward(request, response);
        } catch (Exception e) {
            request.getRequestDispatcher("cart.jsp").forward(request, response);
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
