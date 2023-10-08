/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.chude;
import dto.nhaxuatban;
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
public class SachDAO {

    Connection con = null;
    ResultSet rst = null;
    PreparedStatement ps = null;

    public List<sach> docTatCa() {
        List<sach> ds = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from sach");
            rst = ps.executeQuery();
            while (rst.next()) {
                ds.add(new sach(
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
                ));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return ds;
    }

    public static void main(String[] args) {
        SachDAO s = new SachDAO();
        s.create("Học Hóa", 19000, "hehe", "Cứng", "28/03/2002", 1, 1, 1, "18.png", true, 190, 80);

    }

    public List<sach> findByIdCd(String machude) {
        List<sach> kq = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from sach where machude = ?");
            ps.setString(1, machude);
            rst = ps.executeQuery();
            while (rst.next()) {
                kq.add(new sach(
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
                ));
            }

            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return kq;
    }

    public sach sachbyid8() {
        sach kq = null;
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from sach where masach = 8");
            rst = ps.executeQuery();
            while (rst.next()) {
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
                        rst.getInt(12), rst.getInt(13)
                );
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return kq;
    }

    public sach sachbyid(int id) {
        sach kq = null;
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from sach where masach = ?");
            ps.setInt(1, id);
            rst = ps.executeQuery();
            while (rst.next()) {
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
                        rst.getInt(12), rst.getInt(13)
                );
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return kq;
    }

    public List<sach> sachbyidtg() {
        List<sach> kq = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from sach where matacgia = 1");
            rst = ps.executeQuery();
            while (rst.next()) {
                kq.add(new sach(
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
                        rst.getInt(12), rst.getInt(13)
                ));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return kq;
    }

    public List<sach> findbyIdtg(String idtg) {
        List<sach> kq = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from sach where matacgia = ?");
            ps.setString(1, idtg);
            rst = ps.executeQuery();
            while (rst.next()) {
                kq.add(new sach(
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
                        rst.getInt(12), rst.getInt(13)
                ));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return kq;
    }

    public List<sach> randomhot4() {
        List<sach> kq = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select top 4 *\n"
                    + "from Sach\n"
                    + "where hot=1\n"
                    + "ORDER BY NEWID()");
            rst = ps.executeQuery();
            while (rst.next()) {
                kq.add(new sach(
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
                        rst.getInt(12), rst.getInt(13)
                ));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return kq;
    }

    public List<sach> sachbestselling() {
        List<sach> kq = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select *\n"
                    + "from Sach\n"
                    + "where hot=1");
            rst = ps.executeQuery();
            while (rst.next()) {
                kq.add(new sach(
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
                        rst.getInt(12), rst.getInt(13)
                ));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return kq;
    }

    public List<sach> search(String tensach) {
        List<sach> kq = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            PreparedStatement pstmt = con.prepareStatement("select * from sach where tensach like ?");
            pstmt.setString(1, "%" + tensach + "%");
            rst = pstmt.executeQuery();
            //xu ly ket qua tra ve               
            while (rst.next()) {
                kq.add(new sach(
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
                        rst.getInt(12), rst.getInt(13)
                ));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL:" + ex.toString());
        }
        return kq;
    }

    public List<sach> countByIdcd() {
        List<sach> kq = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("SELECT Sach.MaChuDe,COUNT(*) \n"
                    + "FROM Sach \n"
                    + "GROUP BY Sach.MaChuDe;");
            rst = ps.executeQuery();
            while (rst.next()) {
                kq.add(new sach(
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
                        rst.getInt(12), rst.getInt(13)
                ));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return kq;
    }

    public nhaxuatban tennsbbymansb(int mansb) {
        nhaxuatban kq = null;
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select tennsb from nhaxuatban where mansb=?");
            ps.setInt(1, mansb);
            rst = ps.executeQuery();
            while (rst.next()) {
                kq = new nhaxuatban(
                        rst.getString(1)
                );
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return kq;
    }

    public chude tenchudebyma(int ma) {
        chude kq = null;
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select tenchude from chude where machude=?");
            ps.setInt(1, ma);
            rst = ps.executeQuery();
            while (rst.next()) {
                kq = new chude(
                        rst.getString(1)
                );
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return kq;
    }

    public tacgia tentacgiabyma(int ma) {
        tacgia kq = null;
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select tentacgia from tacgia where matacgia=?");
            ps.setInt(1, ma);
            rst = ps.executeQuery();
            while (rst.next()) {
                kq = new tacgia(
                        rst.getString(1)
                );
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return kq;
    }

    public List<nhaxuatban> readnxb() {
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

    public ArrayList<chude> readchude() {
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

    public ArrayList<tacgia> readtacgia() {
        ArrayList<tacgia> ds = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            Statement stmt = con.createStatement();
            rst = stmt.executeQuery("select * from tacgia");
            while (rst.next()) {
                ds.add(new tacgia(rst.getInt(1),
                        rst.getString(2),
                        rst.getString(3)));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return ds;
    }

    public void Update(int masach, String tensach, int giaban, String mota, String anhbia, String ngaycapnhat, int mansb, int machude, int matacgia, String hinh, Boolean hot, int discount, int quantity) {
        try {
            Connection con = DbContext.getConnection();
            PreparedStatement pstmt = con.prepareStatement("update [sach] set tensach=?,giaban=?,mota=?,anhbia=?,ngaycapnhat=?,mansb=?,machude=?,matacgia=?,hinh=?,hot=?,discount=?,quantity=?where masach=?");
            pstmt.setString(1, tensach);
            pstmt.setInt(2, giaban);
            pstmt.setString(3, mota);
            pstmt.setString(4, anhbia);
            pstmt.setString(5, ngaycapnhat);
            pstmt.setInt(6, mansb);
            pstmt.setInt(7, machude);
            pstmt.setInt(8, matacgia);
            pstmt.setString(9, hinh);
            pstmt.setBoolean(10, hot);
            pstmt.setInt(11, discount);
            pstmt.setInt(12, quantity);
            pstmt.setInt(13, masach);

            //thi hanh SQL
            pstmt.executeUpdate();
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL:" + ex.toString());
        }
    }

    public void create(String tensach, int giaban, String mota, String anhbia, String ngaycapnhat, int mansb, int machude, int matacgia, String hinh, Boolean hot, int discount, int quantity) {
        String query = "insert into [sach] values (?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, tensach);
            ps.setInt(2, giaban);
            ps.setString(3, mota);
            ps.setString(4, anhbia);
            ps.setString(5, ngaycapnhat);
            ps.setInt(6, mansb);
            ps.setInt(7, machude);
            ps.setInt(8, matacgia);
            ps.setString(9, hinh);
            ps.setBoolean(10, hot);
            ps.setInt(11, discount);
            ps.setInt(12, quantity);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Loi SQL:" + e.toString());
        }

    }

    public sach sachbyma(int id) {
        sach kq = null;
        try {
            con = DbContext.getConnection();
            ps = con.prepareStatement("select * from sach where masach = ?");
            ps.setInt(1, id);
            rst = ps.executeQuery();
            while (rst.next()) {
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
                        rst.getBoolean(11),
                        rst.getInt(12), rst.getInt(13)
                );
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL :" + ex.toString());
        }
        return kq;
    }

    public int Delete(int masach) {
        int kq = 0;
        try {
            Connection conn = DbContext.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("delete from [sach] where masach=?");
            pstmt.setInt(1, masach);
            //thi hanh SQL
            kq = pstmt.executeUpdate();
            conn.close();
        } catch (SQLException ex) {
            System.out.println("Loi SQL:" + ex.toString());
        }
        return kq;
    }

    public ArrayList<sach> getAll() {
        ArrayList<sach> ds = new ArrayList<>();
        try {
            con = DbContext.getConnection();
            Statement stmt = con.createStatement();
            rst = stmt.executeQuery("select * from sach");
            while (rst.next()) {
                ds.add(new sach(
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
                        rst.getBoolean(11),
                        rst.getInt(12),
                        rst.getInt(13)
                ));
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
