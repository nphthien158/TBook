/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Cart;
import dto.Item;
import dto.user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

/**
 *
 * @author 9a1ng
 */
public class DonHangDAO {
    Connection con = null;
    ResultSet rst = null;
    PreparedStatement ps = null;
//    public void addOrder(user u, Cart cart){
//        LocalDate datenow = java.time.LocalDate.now();
//        String date = datenow.toString();
//        try{
//            String sql = "insert into donhang values(?,?,?,?)";
//            ps = con.prepareStatement(sql);
//            ps.setInt(1,cart.getTotalMoney());
//            ps.setString(2,date);
//            ps.setString(3, date);
//            ps.setInt(4,u.getMakh());
//            ps.executeUpdate();
//            
//            // Lay ra id cua DONHANG vua add
//            String sql2="select top 1 madonhang from doonhang order by madonhang desc";
//            PreparedStatement ps2 = con.prepareStatement(sql2);
//            rst = ps2.executeQuery();
//            // ADD vao bang chitietDH
//            if(rst.next()){
//                int makh = rst.getInt(1);
//                for(Item i:cart.getItems()){
//                    String sql3 = "insert into chitietdh values(?,?,?,?)";
//                    PreparedStatement ps3 = con.prepareStatement(sql3);
//                    ps3.setInt(1, makh);
//                    ps3.setInt(2, i.getSachs().getMasach());
//                    ps3.setInt(3,i.getSoluong());
//                    ps3.setInt(4,i.getGiaban());
//                    ps3.executeUpdate();
//                }
//            }
//            
//            
//        }catch(Exception e){
//            System.out.println("Loi"+e.toString());
//        }
//    }
}
