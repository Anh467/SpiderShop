package model;

import java.util.ArrayList;

public class Admin_ani {
     private String id_ani, name_cat, scient_name, name_ani, genus, species_name, detail;
     int sling, semili_mature, male_mature, female_mature, quantity;
     int psling, psemili_mature, pmale_mature, pfemale_mature;

     private double[] price;
     private ArrayList<String> img_url = new ArrayList<>();
             
    public Admin_ani() {
    }

    public Admin_ani(String id_ani, String name_cat, String scient_name, String name_ani,
            int sling, int semili_mature, int male_mature, int female_mature) {
        this.id_ani = id_ani;
        this.name_cat = name_cat;
        this.scient_name = scient_name;
        this.name_ani = name_ani;
        this.sling=sling;
        this.semili_mature=semili_mature;
        this.male_mature=male_mature;
        this.female_mature=female_mature;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    
    
    public int getPsling() {
        return psling;
    }

    public void setPsling(int psling) {
        this.psling = psling;
    }

    public int getPsemili_mature() {
        return psemili_mature;
    }

    public void setPsemili_mature(int psemili_mature) {
        this.psemili_mature = psemili_mature;
    }

    public int getPmale_mature() {
        return pmale_mature;
    }

    public void setPmale_mature(int pmale_mature) {
        this.pmale_mature = pmale_mature;
    }

    public int getPfemale_mature() {
        return pfemale_mature;
    }

    public void setPfemale_mature(int pfemale_mature) {
        this.pfemale_mature = pfemale_mature;
    }
    
    
    
    public String getGenus() {
        return genus;
    }

    public void setGenus(String genus) {
        this.genus = genus;
    }

    public String getSpecies_name() {
        return species_name;
    }

    public void setSpecies_name(String species) {
        this.species_name = species;
    }
    
    

    public int getSling() {
        return sling;
    }

    public void setSling(int sling) {
        this.sling = sling;
    }

    public int getSemili_mature() {
        return semili_mature;
    }

    public void setSemili_mature(int semili_mature) {
        this.semili_mature = semili_mature;
    }

    public int getMale_mature() {
        return male_mature;
    }

    public void setMale_mature(int male_mature) {
        this.male_mature = male_mature;
    }

    public int getFemale_mature() {
        return female_mature;
    }

    public void setFemale_mature(int female_mature) {
        this.female_mature = female_mature;
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

    public int getQuantity() {
        return sling+semili_mature+male_mature+female_mature;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public double[] getPrice() {
        return price;
    }

    public void setPrice(double[] price) {
        this.price = price;
    }

    public ArrayList<String> getImg_url() {
        return img_url;
    }

    public void setImg_url(ArrayList<String> img_url) {
        this.img_url = img_url;
    }
     
    public static void main(String[] args) {

    }
}
