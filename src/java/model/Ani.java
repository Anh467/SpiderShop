/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package model;

/**
 *
 * @author 84384
 */
public class Ani {
    private String name_cat, scient_name, name_ani;

    public Ani(String name_cat, String scient_name, String name_ani) {
        this.name_cat = name_cat;
        this.scient_name = scient_name;
        this.name_ani = name_ani;
    }

    public Ani() {
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
    
}
