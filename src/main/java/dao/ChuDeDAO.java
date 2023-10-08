/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.chude;
import dto.nhaxuatban;
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
public class ChuDeDAO {

    Connection con = null;
    ResultSet rst = null;
    PreparedStatement ps = null;

    public List<chude> docTatCa() {
        List<chude> ds = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from chude");
            rst = ps.executeQuery();
            while (rst.next()) {
                ds.add(new chude(rst.getInt(1),
                        rst.getString(2)));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return ds;
    }

    public ArrayList<chude> readAll() {
        ArrayList<chude> ds = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            Statement stmt = con.createStatement();
            rst = stmt.executeQuery("select * from chude");
            while (rst.next()) {
                ds.add(new chude(rst.getInt(1),
                        rst.getString(2)));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return ds;
    }

    public List<chude> findByIdCd(String machude) {
        List<chude> ds = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from chude where machude = ?");
            ps.setString(1, machude);
            rst = ps.executeQuery();
            while (rst.next()) {
                ds.add(new chude(rst.getInt(1),
                        rst.getString(2)));
            }

            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return ds;
    }

    public List<nhaxuatban> docTatCansb() {
        List<nhaxuatban> ds = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from nhaxuatban");
            rst = ps.executeQuery();
            while (rst.next()) {
                ds.add(new nhaxuatban(rst.getInt(1),
                        rst.getString(2)));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return ds;
    }

    public chude findBymacd(String machude) {
        chude ds = null;
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from chude where machude = ?");
            ps.setString(1, machude);
            rst = ps.executeQuery();
            while (rst.next()) {
                ds = new chude(rst.getInt(1),
                        rst.getString(2));
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
