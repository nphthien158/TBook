/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author 9a1ng
 */
public class Item {

    public sach s;
    public int soluong;

    public Item() {
    }

    public sach getS() {
        return s;
    }

    public void setS(sach s) {
        this.s = s;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public Item(sach s, int soluong) {
        this.s = s;
        this.soluong = soluong;
    }

    
}
