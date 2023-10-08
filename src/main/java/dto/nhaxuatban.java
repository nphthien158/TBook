/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author 9a1ng
 */
public class nhaxuatban {
    private int mansb;
    private String tennsb;

    public nhaxuatban(String tennsb) {
        this.tennsb = tennsb;
    }

    public nhaxuatban(int mansb) {
        this.mansb = mansb;
    }

    public nhaxuatban(int mansb, String tennsb) {
        this.mansb = mansb;
        this.tennsb = tennsb;
    }

    public nhaxuatban() {
    }

    public int getMansb() {
        return mansb;
    }

    public void setMansb(int mansb) {
        this.mansb = mansb;
    }

    public String getTennsb() {
        return tennsb;
    }

    public void setTennsb(String tennsb) {
        this.tennsb = tennsb;
    }
       
}
