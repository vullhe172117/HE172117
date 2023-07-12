/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.math.BigDecimal;

/**
 *
 * @author PC LONG VU
 */
public class Cars {
    private int id;
    private String Type;
    private String brand;
    private String Model;
    private String FirstRegistration;
    private int Mileage;
    private String FuelType;
    private int Engine;
    private int power;
    private String Gearbox;
    private int NumberOfSeats;
    private int NumberOfDoors;
    private String color;
    private double price;
    private String image_url;

    public Cars() {
    }

    public Cars(int id, String Type, String brand, String Model, String FirstRegistration, int Mileage, String FuelType, int Engine, int power, String Gearbox, int NumberOfSeats, int NumberOfDoors, String color, double price, String image_url) {
        this.id = id;
        this.Type = Type;
        this.brand = brand;
        this.Model = Model;
        this.FirstRegistration = FirstRegistration;
        this.Mileage = Mileage;
        this.FuelType = FuelType;
        this.Engine = Engine;
        this.power = power;
        this.Gearbox = Gearbox;
        this.NumberOfSeats = NumberOfSeats;
        this.NumberOfDoors = NumberOfDoors;
        this.color = color;
        this.price = price;
        this.image_url = image_url;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return Type;
    }

    public void setType(String Type) {
        this.Type = Type;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return Model;
    }

    public void setModel(String Model) {
        this.Model = Model;
    }

    public String getFirstRegistration() {
        return FirstRegistration;
    }

    public void setFirstRegistration(String FirstRegistration) {
        this.FirstRegistration = FirstRegistration;
    }

    public int getMileage() {
        return Mileage;
    }

    public void setMileage(int Mileage) {
        this.Mileage = Mileage;
    }

    public String getFuelType() {
        return FuelType;
    }

    public void setFuelType(String FuelType) {
        this.FuelType = FuelType;
    }

    public int getEngine() {
        return Engine;
    }

    public void setEngine(int Engine) {
        this.Engine = Engine;
    }

    public int getPower() {
        return power;
    }

    public void setPower(int power) {
        this.power = power;
    }

    public String getGearbox() {
        return Gearbox;
    }

    public void setGearbox(String Gearbox) {
        this.Gearbox = Gearbox;
    }

    public int getNumberOfSeats() {
        return NumberOfSeats;
    }

    public void setNumberOfSeats(int NumberOfSeats) {
        this.NumberOfSeats = NumberOfSeats;
    }

    public int getNumberOfDoors() {
        return NumberOfDoors;
    }

    public void setNumberOfDoors(int NumberOfDoors) {
        this.NumberOfDoors = NumberOfDoors;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    @Override
    public String toString() {
        return "Cars{" + "id=" + id + ", Type=" + Type + ", brand=" + brand + ", Model=" + Model + ", FirstRegistration=" + FirstRegistration + ", Mileage=" + Mileage + ", FuelType=" + FuelType + ", Engine=" + Engine + ", power=" + power + ", Gearbox=" + Gearbox + ", NumberOfSeats=" + NumberOfSeats + ", NumberOfDoors=" + NumberOfDoors + ", color=" + color + ", price=" + price + ", image_url=" + image_url + '}';
    }
    
    
}
