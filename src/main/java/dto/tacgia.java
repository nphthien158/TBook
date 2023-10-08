/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author 9a1ng
 */
public class tacgia {
    private int matacgia;
    private String tentacgia;
    private String tieusu;

    public tacgia(int matacgia, String tentacgia, String tieusu) {
        this.matacgia = matacgia;
        this.tentacgia = tentacgia;
        this.tieusu = tieusu;
    }
    private String hinh;

    public tacgia(String tentacgia) {
        this.tentacgia = tentacgia;
    }

    public tacgia(int matacgia, String tentacgia, String tieusu, String hinh) {
        this.matacgia = matacgia;
        this.tentacgia = tentacgia;
        this.tieusu = tieusu;
        this.hinh = hinh;
    }

    public tacgia() {
    }

    public int getMatacgia() {
        return matacgia;
    }

    public void setMatacgia(int matacgia) {
        this.matacgia = matacgia;
    }

    public String getTentacgia() {
        return tentacgia;
    }

    public void setTentacgia(String tentacgia) {
        this.tentacgia = tentacgia;
    }

    public String getTieusu() {
        return tieusu;
    }

    public void setTieusu(String tieusu) {
        this.tieusu = tieusu;
    }

    public String getHinh() {
        return hinh;
    }

    public void setHinh(String hinh) {
        this.hinh = hinh;
    }

    
}
