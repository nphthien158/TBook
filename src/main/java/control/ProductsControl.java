/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.ChuDeDAO;
import dao.SachDAO;
import dao.TacGiaDAO;
import dto.chude;
import dto.sach;
import dto.tacgia;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 9a1ng
 */
@WebServlet(name = "ProductsControl", urlPatterns = {"/products"})
public class ProductsControl extends HttpServlet {

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
        // b1 : get data from dao
        SachDAO sdao = new SachDAO();
        List<sach> list = sdao.docTatCa();
        ChuDeDAO cdao = new ChuDeDAO();
        List<chude> listc = cdao.docTatCa();
        TacGiaDAO tgdao = new TacGiaDAO();
        List<tacgia> listtg = tgdao.docTatCa();
        sach p = sdao.sachbyid8();
        List<sach> pp = sdao.sachbyidtg();
        List<sach> top4 = sdao.randomhot4();
        String tensach = request.getParameter("txtsach");
        List<sach> seach = sdao.search(tensach);

        //b2 : set data to jsp
        request.setAttribute("listc", listc);
        request.setAttribute("listtg", listtg);
        request.setAttribute("p", p);
        request.setAttribute("pp", pp);
        request.setAttribute("top4", top4);
        if (request.getParameter("btnseach") != null) {
            request.setAttribute("listS", seach);

        } else{
            request.setAttribute("listS", list);
        }

        request.getRequestDispatcher("products.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
