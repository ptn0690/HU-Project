package com.it.spring.model;

public class ReceiptTest {
    private int rec_Id;
    private int ord_Id;
    private int shm_id;
    private int pam_id;
    private int rec_status;
    private String rec_receiveAddress;

    public ReceiptTest() {
    }

    public int getRec_Id() {
        return rec_Id;
    }

    public void setRec_Id(int rec_Id) {
        this.rec_Id = rec_Id;
    }

    public int getOrd_Id() {
        return ord_Id;
    }

    public void setOrd_Id(int ord_Id) {
        this.ord_Id = ord_Id;
    }

    public int getShm_id() {
        return shm_id;
    }

    public void setShm_id(int shm_id) {
        this.shm_id = shm_id;
    }

    public int getPam_id() {
        return pam_id;
    }

    public void setPam_id(int pam_id) {
        this.pam_id = pam_id;
    }

    public int getRec_status() {
        return rec_status;
    }

    public void setRec_status(int rec_status) {
        this.rec_status = rec_status;
    }

    public String getRec_receiveAddress() {
        return rec_receiveAddress;
    }

    public void setRec_receiveAddress(String rec_receiveAddress) {
        this.rec_receiveAddress = rec_receiveAddress;
    }
    
    
    
}
