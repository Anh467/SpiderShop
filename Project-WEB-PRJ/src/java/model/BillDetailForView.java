/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author 84384
 */
public class BillDetailForView {

    private String bill_id, ani_id, name_ani;
    private int num_sling, num_semili, num_male, num_female;
    private double total;
    private ArrayList<String> img_link;

    public BillDetailForView() {
    }

    public BillDetailForView(String bill_id, String ani_id, String name_ani, int num_sling, int num_semili, int num_male, int num_female, double total, ArrayList<String> img_link) {
        this.bill_id = bill_id;
        this.ani_id = ani_id;
        this.name_ani = name_ani;
        this.num_sling = num_sling;
        this.num_semili = num_semili;
        this.num_male = num_male;
        this.num_female = num_female;
        this.total = total;
        this.img_link = img_link;
    }

    public String getBill_id() {
        return bill_id;
    }

    public void setBill_id(String bill_id) {
        this.bill_id = bill_id;
    }

    public String getAni_id() {
        return ani_id;
    }

    public void setAni_id(String ani_id) {
        this.ani_id = ani_id;
    }

    public String getName_ani() {
        return name_ani;
    }

    public void setName_ani(String name_ani) {
        this.name_ani = name_ani;
    }

    public int getNum_sling() {
        return num_sling;
    }

    public void setNum_sling(int num_sling) {
        this.num_sling = num_sling;
    }

    public int getNum_semili() {
        return num_semili;
    }

    public void setNum_semili(int num_semili) {
        this.num_semili = num_semili;
    }

    public int getNum_male() {
        return num_male;
    }

    public void setNum_male(int num_male) {
        this.num_male = num_male;
    }

    public int getNum_female() {
        return num_female;
    }

    public void setNum_female(int num_female) {
        this.num_female = num_female;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public ArrayList<String> getImg_link() {
        return img_link;
    }

    public void setImg_link(ArrayList<String> img_link) {
        this.img_link = img_link;
    }

    
}
