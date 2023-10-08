/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.CartDAO;

import dto.Item;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 9a1ng
 */
@WebServlet(name = "CartControl", urlPatterns = {"/cart"})
public class CartControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        CartDAO cadao = new CartDAO();
        int ids = 1;
        if (request.getParameter("ids") != null) {
            ids = Integer.parseInt(request.getParameter("ids"));
        }
        if (action != null) {
            HttpSession session = request.getSession();
            List<Item> cart = (List<Item>) session.getAttribute("cart");
            if (cart == null) {
                cart = new ArrayList<>();
            }
            if (action.equals("addcart")) {
                // Tìm sản phẩm trong giỏ hàng
                Item existingItem = null;
                for (Item item : cart) {
                    if (item.getS().getMasach() == ids) {
                        existingItem = item;
                        break;
                    }
                }
                if (existingItem != null) {
                    //Sản phẩm đã tồn tại trong giở hàng vì vậy tăng số lượng lên
                    existingItem.setSoluong(existingItem.getSoluong() + 1);

                } else {
                    //Sản phẩm chưa tồn tại trong giỏ hàng vì vậy thêm mới
                    cart.add(new Item(cadao.findByID(ids), 1));
                }
            } else if (action.equals("delete")) {
                Item itemToRemove = null;
                for (Item item : cart) {
                    if (item.getS().getMasach() == ids) {
                        itemToRemove = item;
                        break;
                    }
                }
                if (itemToRemove != null) {
                    // Xóa sản phẩm khỏi giỏ hàng
                    cart.remove(itemToRemove);
                }else if(action.equals("deleteall")){
                    cart.clear();
                }
            }else if(action.equals("checkout")){
                cart.clear();
                response.encodeRedirectURL("checkout.jsp");
            }
            double totalAmount = 0.0;
            for (Item item : cart) {
                double itemPrice = item.getS().getDiscount(); // Thay thế "getPrice()" bằng phương thức lấy giá của sản phẩm của bạn.
                int itemQuantity = item.getSoluong();

                double itemTotal = itemPrice * itemQuantity;
                totalAmount += itemTotal;
            }

// totalAmount chứa tổng tiền của tất cả các mặt hàng trong giỏ hàng
            session.setAttribute("cart", cart);
            session.setAttribute("size", cart.size());
            session.setAttribute("total", totalAmount);
        }
        request.getRequestDispatcher("cart.jsp").forward(request, response);
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
