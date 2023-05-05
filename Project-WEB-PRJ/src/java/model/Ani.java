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
public class Ani {

    private String id_ani, name_cat, scient_name, name_ani;
    private double[] price = new double[4];
//    price[0] is price of sling
//    price[1] is price of semili mature
//    price[2] is price of male mature
//    price[3] is price of female mature
    private ArrayList<String> img_url = new ArrayList<>();

    public Ani() {
    }

    public Ani(String id_ani, String name_cat, String scient_name, String name_ani, ArrayList<String> img_url) {
        this.id_ani = id_ani;
        this.name_cat = name_cat;
        this.scient_name = scient_name;
        this.name_ani = name_ani;
        this.img_url = img_url;
    }

    public String getId_ani() {
        return id_ani;
    }

    public void setId_ani(String id_ani) {
        this.id_ani = id_ani;
    }

    public String getName_cat() {
        return name_cat;
    }

    public void setName_cat(String name_cat) {
        this.name_cat = name_cat;
    }

    public String getScient_name() {
        return scient_name;
    }

    public void setScient_name(String scient_name) {
        this.scient_name = scient_name;
    }

    public String getName_ani() {
        return name_ani;
    }

    public void setName_ani(String name_ani) {
        this.name_ani = name_ani;
    }

    public double[] getPrice() {
        return price;
    }

    public void setPrice(double[] price) {
        for (int i = 0;  i< this.price.length; i++) {
            double c= price[i];
            this.price[i]= price[i];
        }
    }

    public ArrayList<String> getImg_url() {
        return img_url;
    }

    public void setImg_url(ArrayList<String> img_url) {
        this.img_url = img_url;
    }

    @Override
    public String toString() {
        String str = "Ani{" + "id_ani=" + id_ani + ", name_cat=" + name_cat + ", scient_name=" + scient_name + ", name_ani=" + name_ani + "\n";
        for (int i = 0; i < img_url.size(); i++) {
            str = str + "          " + img_url.get(i) + "\n";
        }
        for (int i = 0; i < price.length; i++) {
            str = str + price[i] + " ";
        }
        return str;
    }
}
