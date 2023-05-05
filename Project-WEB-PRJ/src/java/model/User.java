/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package model;

/**
 *
 * @author 84384
 */
public class User {

    /**
     * @param args the command line arguments
     */
    private String user_id, user_birth, user_name, user_Gender, user_phone, user_mail, user_account;
    private int prioty;
    private String user_password;

    public User() {
    }

    public User(String user_id, String user_birth, String user_name, String user_Gender, String user_phone, String user_mail, String user_account, int prioty, String user_password) {
        this.user_id = user_id;
        this.user_birth = user_birth;
        this.user_name = user_name;
        this.user_Gender = user_Gender;
        this.user_phone = user_phone;
        this.user_mail = user_mail;
        this.user_account = user_account;
        this.prioty = prioty;
        this.user_password = user_password;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_birth() {
        return user_birth;
    }

    public void setUser_birth(String user_birth) {
        this.user_birth = user_birth;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_Gender() {
        return user_Gender;
    }

    public void setUser_Gender(String user_Gender) {
        this.user_Gender = user_Gender;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getUser_mail() {
        return user_mail;
    }

    public void setUser_mail(String user_mail) {
        this.user_mail = user_mail;
    }

    public String getUser_account() {
        return user_account;
    }

    public void setUser_account(String user_account) {
        this.user_account = user_account;
    }

    public int getPrioty() {
        return prioty;
    }

    public void setPrioty(int prioty) {
        this.prioty = prioty;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    @Override
    public String toString() {
        return "User{" + "user_id=" + user_id + ", user_birth=" + user_birth + ", user_name=" + user_name + ", user_Gender=" + user_Gender + ", user_phone=" + user_phone + ", user_mail=" + user_mail + ", user_account=" + user_account + ", prioty=" + prioty + ", user_password=" + user_password + '}';
    }
  
   
}
