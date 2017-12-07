package com.it.spring.model;

public class Product {

    private Supplier supplier;
    private Category category;
    private int id;
    private String name;
    private String description;
    private String pro_os;
    private String pro_cpu;
    private String pro_ram;
    private String pro_graphic;
    private String pro_monitor;
    private String pro_battery;
    private String pro_size;
    private String pro_camera;
    private double price;
    private String producer;
    private int pro_isnew;
    private int pro_ishot;
    private String image;
    private String pro_largeImage;
     private CartCustomer car_quantity;
     private String pro_smallImage;

    public String getPro_smallImage() {
        return pro_smallImage;
    }

    public void setPro_smallImage(String pro_smallImage) {
        this.pro_smallImage = pro_smallImage;
    }
     
     

    public CartCustomer getCar_quantity() {
        return car_quantity;
    }

    public void setCar_quantity(CartCustomer car_quantity) {
        this.car_quantity = car_quantity;
    }
     

    public String getPro_smallImgae() {
        return image;
    }

    public void setPro_smallImgae(String pro_smallImgae) {
        this.image = pro_smallImgae;
    }

    public String getPro_largeImage() {
        return pro_largeImage;
    }

    public void setPro_largeImage(String pro_largeImage) {
        this.pro_largeImage = pro_largeImage;
    }

    public Product() {
    }

    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPro_os() {
        return pro_os;
    }

    public void setPro_os(String pro_os) {
        this.pro_os = pro_os;
    }

    public String getPro_cpu() {
        return pro_cpu;
    }

    public void setPro_cpu(String pro_cpu) {
        this.pro_cpu = pro_cpu;
    }

    public String getPro_ram() {
        return pro_ram;
    }

    public void setPro_ram(String pro_ram) {
        this.pro_ram = pro_ram;
    }

    public String getPro_graphic() {
        return pro_graphic;
    }

    public void setPro_graphic(String pro_graphic) {
        this.pro_graphic = pro_graphic;
    }

    public String getPro_monitor() {
        return pro_monitor;
    }

    public void setPro_monitor(String pro_monitor) {
        this.pro_monitor = pro_monitor;
    }

    public String getPro_battery() {
        return pro_battery;
    }

    public void setPro_battery(String pro_battery) {
        this.pro_battery = pro_battery;
    }

    public String getPro_size() {
        return pro_size;
    }

    public void setPro_size(String pro_size) {
        this.pro_size = pro_size;
    }

    public String getPro_camera() {
        return pro_camera;
    }

    public void setPro_camera(String pro_camera) {
        this.pro_camera = pro_camera;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getPro_isnew() {
        return pro_isnew;
    }

    public void setPro_isnew(int pro_isnew) {
        this.pro_isnew = pro_isnew;
    }

    public int getPro_ishot() {
        return pro_ishot;
    }

    public void setPro_ishot(int pro_ishot) {
        this.pro_ishot = pro_ishot;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }



    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
}
