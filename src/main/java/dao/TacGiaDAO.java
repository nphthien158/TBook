/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.chude;
import dto.sach;
import dto.tacgia;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author KHOACNTT
 */
public class TacGiaDAO {

    Connection con = null;
    ResultSet rst = null;
    PreparedStatement ps = null;

    public List<tacgia> docTatCa() {
        List<tacgia> ds = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from tacgia");
            rst = ps.executeQuery();
            while (rst.next()) {
                ds.add(new tacgia(rst.getInt(1),
                        rst.getString(2),
                        rst.getString(3),
                        rst.getString(4)));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return ds;
    }

    public List<tacgia> findByIdCd(String matacgia) {
        List<tacgia> ds = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from tacgia where matacgia = ?");
            ps.setString(1, matacgia);
            rst = ps.executeQuery();
            while (rst.next()) {
                ds.add(new tacgia(rst.getInt(1),
                        rst.getString(2),
                        rst.getString(3),
                        rst.getString(4)
                ));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return ds;
    }
     public ArrayList<tacgia> readAll() {
        ArrayList<tacgia> ds = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            Statement stmt = con.createStatement();
            rst = stmt.executeQuery("select * from tacgia");
            while (rst.next()) {
                ds.add(new tacgia(rst.getInt(1),
                        rst.getString(2),
                        rst.getString(3),rst.getString(4)));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return ds;
    }
       public tacgia findByma(String matacgia) {
        tacgia ds = null;
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from tacgia where matacgia = ?");
            ps.setString(1, matacgia);
            rst = ps.executeQuery();
            while (rst.next()) {
                ds = new tacgia(rst.getInt(1),
                        rst.getString(2),
                        rst.getString(3),
                        rst.getString(4)
                );
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return ds;
    }
    public int add(chude x) {
        return 0;
    }

    public int update(chude x) {
        return 0;
    }

    public int delete(int machude) {
        return 0;
    }
}
