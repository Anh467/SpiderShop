/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author TCNJK
 */
public class BillDetailList {
    String user;
    int bill_id;
    String[]ani;

    public BillDetailList(String user, int bill_id, String[] ani) {
        this.user = user;
        this.bill_id = bill_id;
        this.ani=ani;
        get();
    }
    private void get(){
        for (String aniId : ani) {
            new BillDetail(user, aniId,bill_id);
        }
    }
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public int getBill_id() {
        return bill_id;
    }

    public void setBill_id(int bill_id) {
        this.bill_id = bill_id;
    }
}
