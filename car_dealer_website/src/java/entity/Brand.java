/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author PC LONG VU
 */
public class Brand {
    private int Bid;
    private String Bname;

    public Brand() {
    }

    public Brand(int Bid, String Bname) {
        this.Bid = Bid;
        this.Bname = Bname;
    }

    public int getBid() {
        return Bid;
    }

    public void setBid(int Bid) {
        this.Bid = Bid;
    }

    public String getBname() {
        return Bname;
    }

    public void setBname(String Bname) {
        this.Bname = Bname;
    }

    @Override
    public String toString() {
        return "Brand{" + "Bid=" + Bid + ", Bname=" + Bname + '}';
    }
    
    
   
}
