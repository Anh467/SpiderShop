/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package model;

import Connect.*;
import Control.Query;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Ani;
import model.User;

/**
 *
 * @author 84384
 */
public class GetInfor {

    Query getQuery;
    Connection cnn;

    public GetInfor() {
        getQuery = new Query();
        cnn = new connect2().getConnection(new Control.Query().DataBaseName);
    }
    public ArrayList<BillDetailForView> getBillDetailForView(){
        ArrayList<BillDetailForView> list= new ArrayList<>();
        String query= getQuery.getBillDetailForView();
        try(PreparedStatement ps= cnn.prepareStatement(query)) {
            ResultSet rs= ps.executeQuery();
            while (rs.next()) {                
                String bill_id= rs.getString(1);
                String id_ani= rs.getString(2);
                String name_ani= rs.getString(3);
                int num_sling= rs.getInt(4);
                int num_semili= rs.getInt(5);
                int num_male= rs.getInt(6);
                int num_female= rs.getInt(7);
                double total= rs.getDouble(8);
                list.add(new BillDetailForView(bill_id,id_ani , name_ani, num_sling, num_semili, num_male, num_female, total, new model.GetInfor().getImgUrl(id_ani)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
// get Bill Detail For View
    public ArrayList<BillDetailForView> getBillDetailForView(String id_bill){
        ArrayList<BillDetailForView> list= new ArrayList<>();
        String query= getQuery.getBillDetailForView();
        try(PreparedStatement ps= cnn.prepareStatement(query)) {
            ps.setString(1, id_bill);
            ResultSet rs= ps.executeQuery();
            while (rs.next()) {                
                String bill_id= rs.getString(1);
                String id_ani= rs.getString(2);
                String name_ani= rs.getString(3);
                int num_sling= rs.getInt(4);
                int num_semili= rs.getInt(5);
                int num_male= rs.getInt(6);
                int num_female= rs.getInt(7);
                double total= rs.getDouble(8);
                list.add(new BillDetailForView(bill_id,id_ani , name_ani, num_sling, num_semili, num_male, num_female, total, new model.GetInfor().getImgUrl(id_ani)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
//check mail
    public boolean checkMail(String mail){
        String query= getQuery.checkMail();
        try(PreparedStatement ps= cnn.prepareStatement(query)) {
            ps.setString(1, mail);
            ResultSet rs= ps.executeQuery();
            while (rs.next()) {                
                return true;
            }
        } catch (Exception e) {
            
        }
        return false;
    }
///get ani acc text
  public ArrayList<Ani> getAllAnimalWithAllType(String text) {
        if(text== null) text= "";
        ArrayList<Ani> AniList = new ArrayList<>();
        try {
            String Query = getQuery.getAllAnimalWithAllType();
            PreparedStatement ps = cnn.prepareStatement(Query);
            ResultSet rs = ps.executeQuery();
            System.out.println("QR4");

            while (rs.next()) {
//                System.out.println("check:" + rs.getString(1));
                String id_ani= rs.getString(1).trim();
                ArrayList<String> img_url = new ArrayList<>();
                double[] price = new model.GetInfor().getPriceAccorID(id_ani);
                Ani ani = new Ani();
                ani.setId_ani(id_ani);
                ani.setName_cat(rs.getString(2).trim());
                ani.setScient_name(rs.getString(3).trim());
                ani.setName_ani(rs.getString(4).trim());
                ani.setPrice(price);
                ani.setImg_url(getImgUrl(rs.getString(1)));
                if(ani.toString().toLowerCase().contains(text.toLowerCase()))
                    AniList.add(ani);
                String abc= ani.toString();
                System.out.println(abc);
            }
            rs.close();
            ps.close();
            cnn.close();
        } catch (Exception e) {
            System.err.println("WRONG AT CHECKLOGIN");
            e.printStackTrace();
        }
        return AniList;
    }

//get infor for dash table

    public DashBoardModel getDashBoard() {
        String query_get_all_income = getQuery.getListIncome();
        String query_count_order = getQuery.counOrder();
        String query_number_user = getQuery.numberUser();
//list income
        ArrayList<YearMonthIncome> all_income = new ArrayList<>();
        try ( PreparedStatement ps = cnn.prepareStatement(query_get_all_income);) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                all_income.add(new YearMonthIncome(rs.getString(1), rs.getInt(2)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
//count order  
        int count_order = 0;
        try ( PreparedStatement ps = cnn.prepareStatement(query_count_order);) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count_order = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
//number_user
        int number_user = 0;
        try ( PreparedStatement ps = cnn.prepareStatement(query_number_user);) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                 number_user = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new DashBoardModel(all_income, count_order, number_user);
    }
//duy khanh
    public ArrayList<Admin_ani> getAllAniAdmin() {
        ArrayList<Admin_ani> AniList = new ArrayList<>();
        String Query = getQuery.getAllAnimal_admin();
        try {
            PreparedStatement ps = cnn.prepareStatement(Query);
            ResultSet rs;
            rs = ps.executeQuery();
            System.out.println("admintable");
            while (rs.next()) {
//                System.out.println("check:" + rs.getString(1));
                Admin_ani ani = new Admin_ani();
                ani.setId_ani(rs.getString(1).trim());
                ani.setName_cat(rs.getString(2).trim());
                ani.setSpecies_name(rs.getString(3).trim());
                ani.setGenus(rs.getString(4).trim());
                ani.setScient_name(rs.getString(5).trim());
                ani.setName_ani(rs.getString(6).trim());
                ani.setPrice(getPrice(rs.getString(1)));
                ani.setImg_url(getImgUrl(rs.getString(1)));
                ani.setSling(rs.getInt(7));
                ani.setSemili_mature(rs.getInt(8));
                ani.setMale_mature(rs.getInt(9));
                ani.setFemale_mature(rs.getInt(10));
                ani.setPsling(rs.getInt(11));
                ani.setPsemili_mature(rs.getInt(12));
                ani.setPmale_mature(rs.getInt(13));
                ani.setPfemale_mature(rs.getInt(14));
                ani.setDetail(rs.getString(15).trim());
                AniList.add(ani);
//                System.out.println(ani.toString());
            }
            rs.close();
            ps.close();
            cnn.close();
        } catch (Exception e) {
            System.err.println("WRONG AT CHECKLOGIN");
            e.printStackTrace();
        }
        return AniList;
    }
    
    public Admin_ani getAnimalById_Admin(String id) {
        String query = getQuery.getAniById_Admin();
        try {

            PreparedStatement ps = cnn.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Admin_ani ani = new Admin_ani();
                ani.setId_ani(rs.getString(1).trim());
                ani.setName_cat(rs.getString(2).trim());
                ani.setSpecies_name(rs.getString(3).trim());
                ani.setGenus(rs.getString(4).trim());
                ani.setScient_name(rs.getString(5).trim());
                ani.setName_ani(rs.getString(6).trim());
                ani.setPrice(getPrice(rs.getString(1)));
                ani.setImg_url(getImgUrl(rs.getString(1)));
                ani.setSling(rs.getInt(7));
                ani.setSemili_mature(rs.getInt(8));
                ani.setMale_mature(rs.getInt(9));
                ani.setFemale_mature(rs.getInt(10));
                ani.setPsling(rs.getInt(11));
                ani.setPsemili_mature(rs.getInt(12));
                ani.setPmale_mature(rs.getInt(13));
                ani.setPfemale_mature(rs.getInt(14));
                ani.setDetail(rs.getString(15).trim());
                return ani;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    
    
    public void deleteAniById_Admin(String id){
        String query = getQuery.deleteAni_Admin();
        
        try{
            PreparedStatement ps = cnn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        }catch(Exception e){
            
        }
    }
    
    public void Add_Admin(String id, String species, String name, String speci_name, String gen,
            String img1, String img2, String img3, int PSling, int PSemili, int PMale,
            int PFemale, int QSling, int QSemili, int QMale, int QFemale, String detail){
        String query = getQuery.Create_Admin();
        String id_cat= null;
        if(species.equalsIgnoreCase("Spider")){
            id_cat="CAT001";
        }
        if(species.equalsIgnoreCase("Scopion")){
            id_cat="CAT004";
        }
        if(species.equalsIgnoreCase("Frog")){
            id_cat="CAT002";
        }
        try {
            PreparedStatement ps = cnn.prepareStatement(query);      
            ps.setString(1, id);
            ps.setString(2, id_cat);
            ps.setString(3, gen);
            ps.setString(4, speci_name);
            ps.setString(5, name);
            
            ps.setString(6, id);
            ps.setString(7, img1);
            ps.setInt(8, 1);
            ps.setString(9, id);
            ps.setString(10, img2);
            ps.setInt(11, 2);
            ps.setString(12, id);
            ps.setString(13, img3);
            ps.setInt(14, 3);
            
            ps.setString(15, id);
            ps.setInt(16, PSling);
            ps.setInt(17, PSemili);
            ps.setInt(18, PMale);
            ps.setInt(19, PFemale);
            
            ps.setString(20, id);
            ps.setInt(21, QSling);
            ps.setInt(22, QSemili);
            ps.setInt(23, QMale);
            ps.setInt(24, QFemale);
            
            ps.setString(25, id);
            ps.setString(26, detail);
            ps.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void Update_Admin(String id, String species, String name, String speci_name, String gen,
            String img1, String img2, String img3, int PSling, int PSemili, int PMale,
            int PFemale, String detail){
        String query = getQuery.UpdateAdmin();
        String id_cat= null;
        if(species.equalsIgnoreCase("Spider")){
            id_cat="CAT001";
        }
        if(species.equalsIgnoreCase("Scopion")){
            id_cat="CAT004";
        }
        if(species.equalsIgnoreCase("Frog")){
            id_cat="CAT002";
        }
        try {
            PreparedStatement ps = cnn.prepareStatement(query);      
            ps.setString(1, id_cat);
            ps.setString(2, gen);
            ps.setString(3, speci_name);
            ps.setString(4, name);            
            ps.setString(5, id);
            
            ps.setString(6, img1);
            ps.setString(7, id);
           
            ps.setString(8, img2);
            ps.setString(9, id);

            ps.setString(10, img3);
            ps.setString(11, id);
            
            ps.setInt(12, PSling);
            ps.setInt(13, PSemili);
            ps.setInt(14, PMale);
            ps.setInt(15, PFemale);
            ps.setString(16, id);
            
            ps.setString(17, detail);
            ps.setString(18, id);
            ps.executeQuery();
        } catch (Exception e) {
        }
    }

    public String UpdateQuery(String size) {
        String query1 = "update cart\n"
                + "set num = ?\n"
                + "where id_ani= ?;";

        String query2 = "update cart\n"
                + "set num_semili_mature = ?\n"
                + "where id_ani= ?;";

        String query3 = "update cart\n"
                + "set num_mature_male = ?\n"
                + "where id_ani= ?;";

        String query4 = "update cart\n"
                + "set num_mature_female = ?\n"
                + "where id_ani= ?;";

        if (size.equalsIgnoreCase("Sling")) {
            return query1;
        }
        if (size.equalsIgnoreCase("Semi li-mature")) {
            return query2;
        }
        if (size.equalsIgnoreCase("Mature-Male")) {
            return query3;
        }
        if (size.equalsIgnoreCase("Mature-Female")) {
            return query4;
        }
        return null;
    }

    public void UpdateCart(String id_ani, int number, String size) {
        try {
            PreparedStatement ps = cnn.prepareStatement(UpdateQuery(size));
            ps.setInt(1, number);
            ps.setString(2, id_ani);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public String getCartByIdAni(String id_ani) {
        String query = "select id_ani from cart\n where id_ani =?";
        try {
            PreparedStatement ps = cnn.prepareStatement(query);
            ps.setString(1, id_ani);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {

        }
        return null;
    }

    public void AddToCart(String id_user, String id_ani, int sling, int semili, int male, int female) {
        String query = "insert cart values(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = cnn.prepareStatement(query);
            ps.setString(1, id_user);
            ps.setString(2, id_ani);
            ps.setInt(3, sling);
            ps.setInt(4, semili);
            ps.setInt(5, male);
            ps.setInt(6, female);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
// ngoc an
    public ArrayList<News> getAllNews() {
        ArrayList<News> NewsList = new ArrayList<>();
        String Query = "select * from news";
        try {
            PreparedStatement ps = cnn.prepareStatement(Query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                News news = new News();
                news.setId(rs.getString(1));
                news.setTitle(rs.getString(2));
                news.setImg(rs.getString(3));
                news.setDescribe(rs.getString(4));
                news.setAuthor(rs.getString(5));
                news.setDate(rs.getString(6));
                NewsList.add(news);
            }
        } catch (Exception e) {
        }
        return NewsList;
    }    

public News getNewsById(String id) {
        String Query = "select * from news where id = ?";
        try {
            PreparedStatement ps = cnn.prepareStatement(Query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new News(rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6));
            }
            rs.close();
            ps.close();
            cnn.close();
        } catch (Exception e) {
        }
        return null;
    }


    public void deleteNews(String did) {
        String query = "delete from news where id = ?";
        try {
            PreparedStatement ps = cnn.prepareStatement(query);
            ps.setString(1, did);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void createNews(String title, String img, String describe, String author, String date) {
        String query = "insert news values(?,?,?,?,?)";
        try {
            PreparedStatement ps = cnn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, img);
            ps.setString(3, describe);
            ps.setString(4, author);
            ps.setString(5, date);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateNews(String id, String title, String img, String describe, String author, String date) {
        String query = "update news set title = ?, imgn_link = ?, describe = ? , author = ?, date = ? where id = ?";
        try {
            PreparedStatement ps = cnn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, img);
            ps.setString(3, describe);
            ps.setString(4, author);
            ps.setString(5, date);
            ps.setString(6, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

//get role

    public String getRole(String id) {
        if(id==null) 
            id= "";
        id= id.trim();
        String query = getQuery.getRole();
        try {
            PreparedStatement ps = cnn.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(2);
            }
        } catch (Exception e) {
        }
        return "";
    }

//get description by id animal
    public String getDescriptionByID(String id_ani) {
        String query = getQuery.getDescriptionById();

        try {
            PreparedStatement ps = cnn.prepareStatement(query);
            ps.setString(1, id_ani);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
            System.err.println("error at getinfor");
            e.printStackTrace();
        }
        return null;
    }
//get all newsD

//    public ArrayList<News> getAllNews() {
//        ArrayList<News> NewsList = new ArrayList<>();
//        try {
//            String Query = getQuery.getAllNews();
//            PreparedStatement ps = cnn.prepareStatement(Query);
//            ResultSet rs = ps.executeQuery();
//            System.out.println("QR4");
//            while (rs.next()) {
//                ArrayList<String> img_url = new ArrayList<>();
//                News news = new News();
//                news.setTitle(rs.getString(1).trim());
//                news.setDescribe(rs.getString(2).trim());
//                news.setAuthor(rs.getString(3).trim());
//                news.setDate(rs.getString(4).trim());
//                news.setImg_url(getImgUrl(rs.getString(1)));
//                NewsList.add(news);
//            }
//            rs.close();
//            ps.close();
//            cnn.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return NewsList;
//    }
//delete address acc id

    public void DeleteAddressAccId(String id_address) {
        String Query = getQuery.DeleteAddressAccId();
        try {
            PreparedStatement ps = cnn.prepareStatement(Query);
            ps.setString(1, id_address);
            ps.executeUpdate();

        } catch (Exception e) {
            System.err.println("error from GetInfor");
            e.printStackTrace();

        }

    }
//create address acc id
//    user_id
//    phone_rec
//    addres_rec
//    name_rec

    public void CreateAddressAccID(String user_id, String phone_rec, String addres_rec, String name_rec) {
        String Query = getQuery.CreatAddressAccID();
        try {
            PreparedStatement ps = cnn.prepareStatement(Query);
            ps.setString(1, user_id);
            ps.setString(2, phone_rec);
            ps.setString(3, addres_rec);
            ps.setString(4, name_rec);
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.print("error at GetInfor");
            e.printStackTrace();
        }
    }
//update address acc id
//name       - 1
//phone      - 2
//address    - 3
//address_id - 4

    public void UpdateAddressAccID(String address_id, String name, String phone, String address) {
        System.out.println("run update address");
        String Query = getQuery.UpdateAddressAccID();
        try {
            PreparedStatement ps = cnn.prepareStatement(Query);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, address);
            ps.setString(4, address_id);
            System.out.println("update address thanh cong row update: " + ps.executeUpdate());
        } catch (Exception e) {
            System.out.println("update address that bai");
            e.printStackTrace();
        }
    }
    //get a address arcording id  

    public AddressUser getSignleAddressUser(String id_address) {
        String Query = getQuery.getSingleAddressAccId();
        try {
            PreparedStatement ps = cnn.prepareStatement(Query);
            ps.setString(1, id_address);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new AddressUser(rs.getString(1), rs.getString(2), rs.getString(3), rs.getNString(4), rs.getNString(5));
            }
        } catch (Exception e) {
            System.err.println("wwrong");
            e.printStackTrace();
        }
        return null;
    }
//get all address arcording id

    public ArrayList<AddressUser> getAddressUser(String id) {
        String Query = getQuery.getAddressAccId();
        ArrayList<AddressUser> addList = new ArrayList<>();
        try {
            PreparedStatement ps = cnn.prepareStatement(Query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                addList.add(new AddressUser(rs.getString(1), rs.getString(2), rs.getString(3), rs.getNString(4), rs.getNString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return addList;
    }
//public void check exist account

    public Ani getAnimalById(String id) {
        String query = new Query().getAniByID();
        try {
            PreparedStatement ps = cnn.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            double[] price = new model.GetInfor().getPriceAccorID(id);
            while (rs.next()) {
                Ani ani = new Ani();
                ani.setId_ani(rs.getString(1).trim());
                ani.setName_cat(rs.getString(2).trim());
                ani.setScient_name(rs.getString(3).trim());
                ani.setName_ani(rs.getString(4).trim());
                ani.setPrice(price);
                ani.setImg_url(getImgUrl(rs.getString(1)));
                return ani;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public boolean check_exist_account(String account) {
        String Query = new Control.Query().get_all_user_account();
        try {
            Connection cnn = new connect2().getConnection(new Control.Query().DataBaseName);
            PreparedStatement ps = cnn.prepareStatement(Query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if (account.trim().equalsIgnoreCase(rs.getString(1).trim())) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {

            e.printStackTrace();

        }
        return true;
    }
//add new user

    public void add_new_user(User user) {
        String Query = new Control.Query().add_new_user();
        Connection cnn = new connect2().getConnection(new Control.Query().DataBaseName);
        try {
            System.out.println("dbo: " + user.getUser_birth());
            PreparedStatement ps = cnn.prepareStatement(Query);
            ps.setString(1, user.getUser_id().trim());
            ps.setString(2, user.getUser_birth());
            ps.setString(3, user.getUser_name());
            ps.setString(4, user.getUser_Gender());
            ps.setString(5, user.getUser_phone());
            ps.setString(6, user.getUser_mail());
            ps.setString(7, user.getUser_account());
            ps.setString(8, user.getUser_password());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("GetInfor.java");
            e.printStackTrace();
        }

    }

    public String getCodeSentToMail(String mail) {
        String Query = new Control.Query().get_code_by_mail();
        try {
            Connection cnn = new connect2().getConnection(new Control.Query().DataBaseName);
            PreparedStatement ps = cnn.prepareStatement(Query);
            ps.setString(1, mail);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void addCodeToEmail(String mail) {
        //delete
        String Query = new Control.Query().delete_from_mail_seeding();
        try {
            Connection cnn = new connect2().getConnection(new Control.Query().DataBaseName);
            PreparedStatement ps = cnn.prepareStatement(Query);
            ps.setString(1, mail);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("GetInfor.java");
            e.printStackTrace();
        }

        //update
        String code = new Control.Rand().getStringNum(7);
        Query = new Control.Query().insert_into_mail_seeding();
        try {
            Connection cnn = new connect2().getConnection(new Control.Query().DataBaseName);
            PreparedStatement ps = cnn.prepareStatement(Query);
            ps.setString(1, mail);
            ps.setString(2, code);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("GetInfor.java");
            e.printStackTrace();
        }
        System.out.println("code: " + code);
        new Control.Send().sendEmail(mail, "Verify code", code);
    }

    public User GetUser(String id) {
        System.out.println("runed get user");
        try {

            String Query = getQuery.get_infor_by_id();
            Connection cnn = new connect2().getConnection(new Control.Query().DataBaseName);
            PreparedStatement ps = cnn.prepareStatement(Query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1), rs.getDate(2) + "", rs.getNString(3) + "", rs.getString(4) + "", rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(9));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<User> GetAllUser() {
        ArrayList<User> UserList = new ArrayList<>();
        try {
            String Query = getQuery.getAllUserInfor();
            Connection cnn = new connect2().getConnection(new Control.Query().DataBaseName);
            PreparedStatement ps = cnn.prepareStatement(Query);
            ResultSet rs = ps.executeQuery();
            System.out.println("QR4");
            while (rs.next()) {
                System.out.println("check:" + rs.getString(1));
                UserList.add(new User(rs.getString(1), rs.getDate(2) + "", rs.getNString(3) + "", rs.getString(4) + "", rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(9)));
            }
            rs.close();
            ps.close();
            cnn.close();
        } catch (Exception e) {
            System.err.println("WRONG AT CHECKLOGIN");
            e.printStackTrace();
        }
        return UserList;
    }

    public double[] getPrice(String id) {
        double[] price = {0.0, 0.0, 0.0, 0.0};
        try {
            PreparedStatement ps = cnn.prepareStatement(getQuery.get_price_according_ani_id());
            ResultSet rs = ps.executeQuery();
            ps.setString(1, id);
            rs.next();
            price[0] = rs.getDouble(1);
            price[1] = rs.getDouble(2);
            price[2] = rs.getDouble(3);
            price[3] = rs.getDouble(4);
        } catch (Exception e) {
        }
        return price;
    }

    public ArrayList<String> getImgUrl(String id) {
        ArrayList<String> imgList = new ArrayList<>();
        try {
            PreparedStatement ps = cnn.prepareStatement(getQuery.get_link_img_according_ani_id());
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                imgList.add(rs.getString(1).trim());
            }
        } catch (Exception e) {
        }
        return imgList;
    }
    public double[] getPriceAccorID(String id){
        double[] price= new double[4];
        try (PreparedStatement ps= cnn.prepareStatement(getQuery.getPriceAccId())){
            ps.setString(1, id);
            ResultSet rs= ps.executeQuery();
            while (rs.next()) {                
                price[0]= rs.getDouble(2);
                price[1]= rs.getDouble(3);
                price[2]= rs.getDouble(4);
                price[3]= rs.getDouble(5);
                return price;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return price;
    }
    public ArrayList<Ani> GetAllAni(String type) {
        ArrayList<Ani> AniList = new ArrayList<>();
        try {
            String Query = getQuery.getAllAnimal(type);
            PreparedStatement ps = cnn.prepareStatement(Query);
            ResultSet rs = ps.executeQuery();
            System.out.println("QR4");

            while (rs.next()) {
//                System.out.println("check:" + rs.getString(1));
                String id_ani= rs.getString(1).trim();
                ArrayList<String> img_url = new ArrayList<>();
                double[] price = new model.GetInfor().getPriceAccorID(id_ani);
                Ani ani = new Ani();
                ani.setId_ani(id_ani);
                ani.setName_cat(rs.getString(2).trim());
                ani.setScient_name(rs.getString(3).trim());
                ani.setName_ani(rs.getString(4).trim());
                ani.setPrice(price);
                ani.setImg_url(getImgUrl(rs.getString(1)));
                AniList.add(ani);
                String abc= ani.toString();
                System.out.println(abc);
            }
            rs.close();
            ps.close();
            cnn.close();
        } catch (Exception e) {
            System.err.println("WRONG AT CHECKLOGIN");
            e.printStackTrace();
        }
        return AniList;
    }

    public static void main(String[] args) {

    }
}
