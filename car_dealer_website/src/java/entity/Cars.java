/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;


/**
 *
 * @author PC LONG VU
 */
public class Cars {
    private int Id;
    private String Type;
    private String Brand;
    private String Model;
    private String FirstRegistration;
    private int Mileage;
    private String FuelType;
    private int Engine;
    private int Power;
    private String Gearbox;
    private int NumberOfSeats;
    private int NumberOfDoors;
    private String Color;
    private double Price;
    private String Image_url;

    public Cars() {
    }

    public Cars(int Id, String Type, String Brand, String Model, String FirstRegistration, int Mileage, String FuelType, int Engine, int Power, String Gearbox, int NumberOfSeats, int NumberOfDoors, String Color, double Price, String Image_url) {
        this.Id = Id;
        this.Type = Type;
        this.Brand = Brand;
        this.Model = Model;
        this.FirstRegistration = FirstRegistration;
        this.Mileage = Mileage;
        this.FuelType = FuelType;
        this.Engine = Engine;
        this.Power = Power;
        this.Gearbox = Gearbox;
        this.NumberOfSeats = NumberOfSeats;
        this.NumberOfDoors = NumberOfDoors;
        this.Color = Color;
        this.Price = Price;
        this.Image_url = Image_url;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getType() {
        return Type;
    }

    public void setType(String Type) {
        this.Type = Type;
    }

    public String getBrand() {
        return Brand;
    }

    public void setBrand(String brand) {
        this.Brand = brand;
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
        return Power;
    }

    public void setPower(int Power) {
        this.Power = Power;
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
        return Color;
    }

    public void setColor(String Color) {
        this.Color = Color;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double Price) {
        this.Price = Price;
    }

    public String getImage_url() {
        return Image_url;
    }

    public void setImage_url(String Image_url) {
        this.Image_url = Image_url;
    }

    @Override
    public String toString() {
        return "Cars{" + "Id=" + Id + ", Type=" + Type + ", Brand=" + Brand + ", Model=" + Model + ", FirstRegistration=" + FirstRegistration + ", Mileage=" + Mileage + ", FuelType=" + FuelType + ", Engine=" + Engine + ", Power=" + Power + ", Gearbox=" + Gearbox + ", NumberOfSeats=" + NumberOfSeats + ", NumberOfDoors=" + NumberOfDoors + ", color=" + Color + ", price=" + Price + ", image_url=" + Image_url + '}';
    }
    
    
}
