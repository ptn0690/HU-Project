package com.it.spring.model;
public class Receipt {
    private Userz  userz;
    private PaymentMethod paymentMedthod;
    private ShippingMethod shippingMethod;
    private Product product;
    private int   quantity;
    private double priceOfEach;
    private double totalOfEach;
    private Order order;

    public Receipt() {
    }
    
    
    //getter and setter
    public Userz getUserz() {
        return userz;
    }

    public void setUserz(Userz userz) {
        this.userz = userz;
    }

    public PaymentMethod getPaymentMedthod() {
        return paymentMedthod;
    }

    public void setPaymentMedthod(PaymentMethod paymentMedthod) {
        this.paymentMedthod = paymentMedthod;
    }

    public ShippingMethod getShippingMethod() {
        return shippingMethod;
    }

    public void setShippingMethod(ShippingMethod shippingMethod) {
        this.shippingMethod = shippingMethod;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPriceOfEach() {
        return priceOfEach;
    }

    public void setPriceOfEach(double priceOfEach) {
        this.priceOfEach = priceOfEach;
    }

    public double getTotalOfEach() {
        return totalOfEach;
    }

    public void setTotalOfEach(double totalOfEach) {
        this.totalOfEach = totalOfEach;
    }
    
    

}
