/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Acer
 */
public class user {

    private int makh;
    private String hoten;
    private String taikhoan;
    private String matkhau;
    private String dienthoai;
    private String email;
    private String diachi;
    private Boolean gioitinh;
    private Boolean vaitro;

    @Override
    public String toString() {
        return "user{" + "makh=" + makh + ", hoten=" + hoten + ", taikhoan=" + taikhoan + ", matkhau=" + matkhau + ", dienthoai=" + dienthoai + ", email=" + email + ", diachi=" + diachi + ", gioitinh=" + gioitinh + ", vaitro=" + vaitro + '}';
    }

    public user(String hoten, String taikhoan, String dienthoai, String email, String diachi, Boolean gioitinh, Boolean vaitro) {
        this.hoten = hoten;
        this.taikhoan = taikhoan;
        this.dienthoai = dienthoai;
        this.email = email;
        this.diachi = diachi;
        this.gioitinh = gioitinh;
        this.vaitro = vaitro;
    }

    public int getMakh() {
        return makh;
    }

    public void setMakh(int makh) {
        this.makh = makh;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getTaikhoan() {
        return taikhoan;
    }

    public void setTaikhoan(String taikhoan) {
        this.taikhoan = taikhoan;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public String getDienthoai() {
        return dienthoai;
    }

    public void setDienthoai(String dienthoai) {
        this.dienthoai = dienthoai;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public Boolean getGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(Boolean gioitinh) {
        this.gioitinh = gioitinh;
    }

    public Boolean getVaitro() {
        return vaitro;
    }

    public void setVaitro(Boolean vaitro) {
        this.vaitro = vaitro;
    }

    public user(int makh, String hoten, String taikhoan, String matkhau, String dienthoai, String email, String diachi, Boolean gioitinh, Boolean vaitro) {
        this.makh = makh;
        this.hoten = hoten;
        this.taikhoan = taikhoan;
        this.matkhau = matkhau;
        this.dienthoai = dienthoai;
        this.email = email;
        this.diachi = diachi;
        this.gioitinh = gioitinh;
        this.vaitro = vaitro;
    }

    public user(String hoten, String taikhoan, String matkhau, String dienthoai, String email, String diachi, Boolean gioitinh, Boolean vaitro) {
        this.hoten = hoten;
        this.taikhoan = taikhoan;
        this.matkhau = matkhau;
        this.dienthoai = dienthoai;
        this.email = email;
        this.diachi = diachi;
        this.gioitinh = gioitinh;
        this.vaitro = vaitro;
    }

    public user() {
    }

    
   
}
