/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author ngocan
 */
public class News {

//    private String title, describe, author, date;
//
//    private ArrayList<String> imgn_link = new ArrayList<>();
//
//    public News() {
//    }
//
//    public News(String title, String describe, String author, String date) {
//        this.title = title;
//        this.describe = describe;
//        this.author = author;
//        this.date = date;
//    }
//
//    public String getTitle() {
//        return title;
//    }
//
//    public void setTitle(String title) {
//        this.title = title;
//    }
//
//    public String getDescribe() {
//        return describe;
//    }
//
//    public void setDescribe(String describe) {
//        this.describe = describe;
//    }
//
//    public String getAuthor() {
//        return author;
//    }
//
//    public void setAuthor(String author) {
//        this.author = author;
//    }
//
//    public String getDate() {
//        return date;
//    }
//
//    public void setDate(String date) {
//        this.date = date;
//    }
//     public ArrayList<String> getImgn_link() {
//        return imgn_link;
//    }
//
//    public void setImgn_link(ArrayList<String> imgn_link) {
//        this.imgn_link = imgn_link;
//    }
    private String id, title,img,describe,author,date;
    public News(){}

    public News(String id, String title, String img, String describe, String author, String date) {
        this.id = id;
        this.title = title;
        this.img = img;
        this.describe = describe;
        this.author = author;
        this.date = date;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    

}
