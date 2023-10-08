/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.sach;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author 9a1ng
 */
public class CartDAO {
    Connection con = null;
    ResultSet rst = null;
    PreparedStatement ps = null;
    public sach findByID(int id){
        sach kq = null;
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from sach where masach = ?");
            ps.setInt(1, id);
            rst = ps.executeQuery();
            if (rst.next()) {
                kq = new sach(
                        rst.getInt(1),
                        rst.getString(2),
                        rst.getInt(3),
                        rst.getString(4),
                        rst.getString(5),
                        rst.getString(6),
                        rst.getInt(7),
                        rst.getInt(8),
                        rst.getInt(9),
                        rst.getString(10),
                        Boolean.TRUE,
                        rst.getInt(12),                        
                        rst.getInt(13)
                );
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return kq;
    }
//    HashMap<Integer,Item> cart;
//
//    public CartDAO() {
//        cart =new HashMap<>();
//    }
//    public void addSach(int id){
//        if(cart.containsKey(id)){
//            Item item = cart.get(id);
//            item.setSoluong(item.getSoluong()+1);
//        }else{
//            sach sachs= new SachDAO().sachbyid(id);
//            Item item = new Item();
//            item.setSachs(sachs);
//            item.setSoluong(1);
//            cart.put(id, item);
//            
//        }
//    }
//    public List<Item> getList(){
//        List<Item> list = new ArrayList<>();
//        for(Item i: cart.values()){
//            list.add(i);
//        }
//        return list;
//    } 
}
