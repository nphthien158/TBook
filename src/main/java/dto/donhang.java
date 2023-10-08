/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author 9a1ng
 */
public class donhang {
    private int madonhang,tongtien;
    private String ngaydat,ngaygiao;
    private int makh;

    public int getMadonhang() {
        return madonhang;
    }

    public void setMadonhang(int madonhang) {
        this.madonhang = madonhang;
    }

    public int getDathanhtoan() {
        return tongtien;
    }

    public void setDathanhtoan(int tongtien) {
        this.tongtien = tongtien;
    }

    public String getNgaydat() {
        return ngaydat;
    }

    public void setNgaydat(String ngaydat) {
        this.ngaydat = ngaydat;
    }

    public String getNgaygiao() {
        return ngaygiao;
    }

    public void setNgaygiao(String ngaygiao) {
        this.ngaygiao = ngaygiao;
    }

    public int getMakh() {
        return makh;
    }

    public void setMakh(int makh) {
        this.makh = makh;
    }

    public donhang(int madonhang, int tongtien, String ngaydat, String ngaygiao, int makh) {
        this.madonhang = madonhang;
        this.tongtien = tongtien;
        this.ngaydat = ngaydat;
        this.ngaygiao = ngaygiao;
        this.makh = makh;
    }

    public donhang() {
    }
}
