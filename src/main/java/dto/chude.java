/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author 9a1ng
 */
public class chude {
    private int machude;
    private String tenchude;

    public chude(String tenchude) {
        this.tenchude = tenchude;
    }

    public chude() {
    }

    public chude(int machude) {
        this.machude = machude;
    }

    public int getMachude() {
        return machude;
    }

    public chude(int machude, String tenchude) {
        this.machude = machude;
        this.tenchude = tenchude;
    }

    public void setMachude(int machude) {
        this.machude = machude;
    }

    public String getTenchude() {
        return tenchude;
    }

    public void setTenchude(String tenchude) {
        this.tenchude = tenchude;
    }
       
}
