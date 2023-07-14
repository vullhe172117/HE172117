/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;


import context.DBConnect;
import entity.Brand;
import entity.Cars;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC LONG VU
 */
public class DAO {
    
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Cars> getAllCars(){
        List<Cars> list = new ArrayList<>();
        String query = "select * from cars";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Cars(
                        rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getInt(6), 
                        rs.getString(7), 
                        rs.getInt(8), 
                        rs.getInt(9), 
                        rs.getString(10), 
                        rs.getInt(11), 
                        rs.getInt(12), 
                        rs.getString(13), 
                        rs.getDouble(14), 
                        rs.getString(15)));
            }
        } catch (Exception e) {
    }      
        return list;
    }
    
    public List<Brand> getAllBrand(){
        List<Brand> list = new ArrayList<>();
        String query = "select * from brand";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Brand(
                        rs.getInt(1), 
                        rs.getString(2)
                        ));
            }
        } catch (Exception e) {
    }      
        return list;
    }
    
    public static void main(String[] args){
        DAO dao = new DAO();
        List<Cars> list = dao.getAllCars();
        List<Brand> listB = dao.getAllBrand();
        for (Brand o : listB) {
            System.out.println(o);
        }
    }
}
