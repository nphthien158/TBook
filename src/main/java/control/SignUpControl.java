/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.UserDAO;
import dto.user;
import java.awt.Dialog;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author Acer
 */
@WebServlet(name = "SignUpControl", urlPatterns = {"/signup"})
public class SignUpControl extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        String hoten = request.getParameter("hoten");
        String taikhoan = request.getParameter("taikhoan");
        String matkhau = request.getParameter("matkhau");
        String re_matkhau = request.getParameter("nhaplaimatkhau");
        String email = request.getParameter("email");
        String diachi = request.getParameter("diachi");
        String dienthoai = request.getParameter("dienthoai");
        String genderValue = request.getParameter("gender");
        Boolean gioitinh;
        if ("1".equals(genderValue)) {
            gioitinh = true; 
        } else{
            gioitinh = false;
        } 
        if( dienthoai!=null && dienthoai.length() <= 9){
             request.setAttribute("tb", "Phone number is wrong. Please signup again!");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }else{
        if (!matkhau.equals(re_matkhau)) {
            request.setAttribute("tb", "Password or Repassword not equals. Please signup again!");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else {
            UserDAO signUp = new UserDAO();
            user u = signUp.findUser(taikhoan);
            if (u == null) {
                request.setAttribute("mess", "SignUp successed.Please login now!");
                signUp.signup(hoten, taikhoan, matkhau, email, diachi, dienthoai, gioitinh);
                request.getRequestDispatcher("login.jsp").forward(request, response);

            } else {
                request.setAttribute("noti", "User already exist.Please signup again!");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
        }}

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
