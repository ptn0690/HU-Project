package com.it.spring.model;

public class StatictisQuantity {
    private String proName;
    private int orginialQuantity;
    private int currentQuantity;

    public StatictisQuantity() {
    }
    
    //getter and setter
    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public int getOrginialQuantity() {
        return orginialQuantity;
    }

    public void setOrginialQuantity(int orginialQuantity) {
        this.orginialQuantity = orginialQuantity;
    }

    public int getCurrentQuantity() {
        return currentQuantity;
    }

    public void setCurrentQuantity(int currentQuantity) {
        this.currentQuantity = currentQuantity;
    }
    
    
}
