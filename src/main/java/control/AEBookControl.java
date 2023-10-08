/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.SachDAO;
import dao.UserDAO;
import dto.sach;
import dto.user;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus
 */
@WebServlet(name = "AEBookControl", urlPatterns = {"/aebook"})
public class AEBookControl extends HttpServlet {

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

        int masach = Integer.parseInt(request.getParameter("masach"));
        String tensach = request.getParameter("tensach");
        int giaban = Integer.parseInt(request.getParameter("giaban"));
        String mota = request.getParameter("mota");
        String anhbia = request.getParameter("anhbia");
        String ngaycn = request.getParameter("ngaycapnhat");
        int mansb = Integer.parseInt(request.getParameter("mansb"));
        int macd = Integer.parseInt(request.getParameter("machude"));
        int matg = Integer.parseInt(request.getParameter("matacgia"));
        String hinh = request.getParameter("hinh");
        int disc = Integer.parseInt(request.getParameter("discount"));
        int quan = Integer.parseInt(request.getParameter("quantity"));
        String roleValue = request.getParameter("role");
        Boolean hot;
        if ("1".equals(roleValue)) {
            hot = true;
        } else {
            hot = false;
        }
          SachDAO update = new SachDAO();
          update.Update(masach, tensach, giaban, mota, anhbia, ngaycn, mansb, macd, matg, hinh, hot, disc,quan);
          request.getRequestDispatcher("qlbooks.jsp").forward(request, response);
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
