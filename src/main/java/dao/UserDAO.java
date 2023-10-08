/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Acer
 */
public class UserDAO {

    Connection con = null;
    ResultSet rst = null;
    PreparedStatement ps = null;

    public user login(String taikhoan, String matkhau) {
        user u = null;
        String query = "select * from [user] where taikhoan = ? and matkhau= ?";
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, taikhoan);
            ps.setString(2, matkhau);
            rst = ps.executeQuery();
            while (rst.next()) {
                u = new user(
                        rst.getInt(1),
                        rst.getString(2),
                        rst.getString(3),
                        rst.getString(4),
                        rst.getString(5),
                        rst.getString(6),
                        rst.getString(7),
                        rst.getBoolean(8),
                        rst.getBoolean(9));
            }
            System.out.println("da than cong");
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("that bai");
        }
        return u;
    }

    public void signup(String hoten, String taikhoan, String matkhau, String email, String diachi, String dienthoai, Boolean gioitinh) {
        String query = "insert into [user] values (?,?,?,?,?,?,?,0)";
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, hoten);
            ps.setString(2, taikhoan);
            ps.setString(3, matkhau);
            ps.setString(4, email);
            ps.setString(5, diachi);
            ps.setString(6, dienthoai);
            ps.setBoolean(7, gioitinh);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("that bai");
        }
    }
        public void creat(String hoten, String taikhoan, String matkhau, String email, String diachi, String dienthoai, Boolean gioitinh,Boolean vaitro) {
        String query = "insert into [user] values (?,?,?,?,?,?,?,?)";
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, hoten);
            ps.setString(2, taikhoan);
            ps.setString(3, matkhau);
            ps.setString(4, email);
            ps.setString(5, diachi);
            ps.setString(6, dienthoai);
            ps.setBoolean(7, gioitinh);
            ps.setBoolean(8, vaitro);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("that bai");
        }
    }

    public user findUser(String taikhoan) {
        user u = null;
        String query = "select * from [user] where taikhoan =?";
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, taikhoan);
            rst = ps.executeQuery();
            while (rst.next()) {
                u = new user(
                        rst.getInt("makh"),
                        rst.getString("hoten"),
                        rst.getString("taikhoan"),
                        rst.getString("matkhau"),
                        rst.getString("dienthoai"),
                        rst.getString("email"),
                        rst.getString("diachi"),
                        rst.getBoolean("gioitinh"),
                        rst.getBoolean("vaitro")
                
                );
            }
            System.out.println("da than cong");
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("that bai");
        }
        return u;
    }

    public ArrayList<user> search(String taikhoan) {
        ArrayList<user> kq = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from [user] where taikhoan like ?");
            ps.setString(1, "%" + taikhoan + "%");
            rst = ps.executeQuery();
            //xu ly ket qua tra ve               
            while (rst.next()) //duyet qua tung mau tin truy van duoc
            {
                kq.add(new user(rst.getString("hoten"),
                        rst.getString("taikhoan"),
                        rst.getString("matkhau"),
                        rst.getString("diachi"),
                        rst.getString("dienthoai"),
                        rst.getString("email"),
                        rst.getBoolean("gioitinh"),
                        rst.getBoolean("vaitro")));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL:" + ex.toString());
        }
        return kq;
    }

    public user findUserByID(int makh) {
        user u = null;
        String query = "select * from [user] where makh =?";
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, makh);
            rst = ps.executeQuery();
            while (rst.next()) {
                u = new user(
                        rst.getInt(1),
                        rst.getString(2),
                        rst.getString(3),
                        rst.getString(4),
                        rst.getString(5),
                        rst.getString(6),
                        rst.getString(7),
                        rst.getBoolean(8),
                        rst.getBoolean(9));
            }
            System.out.println("da than cong");
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("that bai");
        }
        return u;
    }

    public ArrayList<user> readAll() {
        ArrayList<user> ds = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            Statement stmt = con.createStatement();
            rst = stmt.executeQuery("select * from [user]");
            while (rst.next()) {
                ds.add(new user(
                        rst.getInt(1),
                        rst.getString(2),
                        rst.getString(3),
                        rst.getString(4),
                        rst.getString(5),
                        rst.getString(6),
                        rst.getString(7),
                        rst.getBoolean(8),
                        rst.getBoolean(9)
                ));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return ds;
    }

    public void Update(String hoten,String dienthoai,String email,String diachi,Boolean gioitinh,Boolean vaitro,String taikhoan) {
        try {
            Connection con = DbContext.getConnection();
            PreparedStatement pstmt = con.prepareStatement("update [user] set hoten=?,dienthoai=?,email=?,diachi=?,gioitinh=?,vaitro=? where taikhoan=?");
            pstmt.setString(1, hoten);
            pstmt.setString(2, dienthoai);
            pstmt.setString(3, email);
            pstmt.setString(4, diachi);
            pstmt.setBoolean(5, gioitinh);
            pstmt.setBoolean(6, vaitro);
            pstmt.setString(7, taikhoan);
            //thi hanh SQL
            pstmt.executeUpdate();
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL:" + ex.toString());
        }
    }

      public int Delete(String taikhoan){
          int kq=0;
       try {            
            Connection conn = DbContext.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("delete from [user] where taikhoan=?");      
            pstmt.setString(1,taikhoan);
            //thi hanh SQL
          kq =  pstmt.executeUpdate();                     
            conn.close();            
        } catch (SQLException ex) {
            System.out.println("Loi SQL:" + ex.toString());
        }   
       return kq;
    }      
    public static void main(String[] args) {
        UserDAO us = new UserDAO();
        user u = new user();
        System.out.println(u.toString());
    }
}
