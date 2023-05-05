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
import model.News;

/**
 *
 * @author ngocan
 */
@WebServlet(name = "AdminUpdateNews", urlPatterns = {"/update"})
public class AdminUpdateNews extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AdminUpdateNews</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminUpdateNews at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
 public void check_blank(HttpServletRequest request, HttpServletResponse response, String title, String img, String describe, String author, String date) {
        boolean check = true;
        if (title.equals("")) {
            request.setAttribute("status_title", "title can't be blank");
            request.setAttribute("color_title", "red");
            check = false;
        }
        if (img.equals("")) {
            request.setAttribute("status_img", "img can't be blank");
            request.setAttribute("color_img", "red");
            check = false;
        }
        if (describe.equals("")) {
            request.setAttribute("status_describe", "describe can't be blank");
            request.setAttribute("color_describe", "red");
            check = false;
        }
        if (author.equals("")) {
            request.setAttribute("status_author", "author can't be blank");
            request.setAttribute("color_author", "red");
            check = false;
        }
        if (date.equals("")) {
            request.setAttribute("status_date", "date can't be blank");
            request.setAttribute("color_date", "red");
            check = false;
        }   
        if (check == false) {
            try {
                request.getRequestDispatcher("Admin/AddNews.jsp").forward(request, response);
            } catch (Exception e) {
            }

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("uid");
        GetInfor a = new GetInfor();
        News b = a.getNewsById(id);
        request.setAttribute("update", b);
        //response.sendRedirect("Admin/ListNews.jsp");
        request.getRequestDispatcher("Admin/AdminUpdateNews.jsp").forward(request, response);
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
        String title = request.getParameter("title");
        String img = request.getParameter("img");
        String describe = request.getParameter("describe");
        String author = request.getParameter("author");
        String date = request.getParameter("date");
        String id = request.getParameter("id");
        GetInfor gi = new GetInfor();
        check_blank(request, response, title, img, describe, author, date);
        gi.updateNews(id, title, img, describe, author, date);
        
       response.sendRedirect("Admin/ListNews.jsp");
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
