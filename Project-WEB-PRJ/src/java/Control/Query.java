/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package Control;

/**
 *
 * @author 84384
 */
public class Query {

    final String user = "vietnade160170@fpt.edu.vn";
    final String pass = "nguyenanhviet";
    public String DataBaseName = "SpiderShop1234";
    final String mailShop = "ircnvshop@gmail.com";
//query for bill detail for view
    public String getBillDetailForViewAll() {
        return "select a.bill_id, c.id_ani , c.name_ani, a.num_sling, a.num_semili, a.num_male, a.num_female, (b.sling*a.num_sling + b.semili_mature*a.num_semili + b.mature_male*a.num_male + b.mature_female*a.num_female) as total\n"
                + "from dbo.bill_details a\n"
                + "inner join dbo.Prices b on b.id_ani = a.id_ani\n"
                + "inner join dbo.Ani c on c.id_ani = a.id_ani\n";
    }
    public String getBillDetailForView() {
        return "select a.bill_id, c.id_ani , c.name_ani, a.num_sling, a.num_semili, a.num_male, a.num_female, (b.sling*a.num_sling + b.semili_mature*a.num_semili + b.mature_male*a.num_male + b.mature_female*a.num_female) as total\n"
                + "from dbo.bill_details a\n"
                + "inner join dbo.Prices b on b.id_ani = a.id_ani\n"
                + "inner join dbo.Ani c on c.id_ani = a.id_ani\n"
                + " where a.bill_id=?";
    }
//check mail

    public String checkMail() {
        return "select * from dbo.customer\n"
                + "where user_mail= ?";
    }
//GET price

    public String getPriceAccId() {
        return "select * from dbo.Prices\n"
                + "	where id_ani=?";
    }
//number user

    public String numberUser() {
        return "select count(user_id)\n"
                + "from dbo.customer";
    }
//count order

    public String counOrder() {
        return "select count(bill_id)\n"
                + "from dbo.bill";
    }
//get list income

    public String getListIncome() {
        return "select concat(year(a.bill_date),'-',\n"
                + "	case\n"
                + "        WHEN (month(a.bill_date)<10) THEN  concat('0',month(a.bill_date))\n"
                + "        else CAST(month(a.bill_date) AS VARCHAR)\n"
                + "    END), (sum(b.num_sling*c.sling)+sum(b.num_semili*c.semili_mature)+sum(b.num_male*c.mature_male)+sum(b.num_female* c.mature_female)) as revenue\n"
                + "from dbo.bill a\n"
                + "inner join dbo.bill_details b on b.bill_id = a.bill_id\n"
                + "inner join dbo.Prices c on c.id_ani = b.id_ani\n"
                + "group by year(a.bill_date), month(a.bill_date) \n"
                + "order by concat(year(a.bill_date),'-',\n"
                + "	case\n"
                + "        WHEN (month(a.bill_date)<10) THEN  concat('0',month(a.bill_date))\n"
                + "        else CAST(month(a.bill_date) AS VARCHAR)\n"
                + "    END) asc";
    }
//get role

    public String getRole() {
        return "select* from role_cus\n"
                + "where user_id= ?";
    }

    public String getAllNews() {
        return "select * from news\n"
                + "order by date;";
    }

    public String getCartOfUser() {
        return "SELECT cart.user_id,Ani.id_ani,img.img_link,Ani.name_ani,Prices.sling,dbo.Prices.semili_mature,dbo.Prices.mature_male,dbo.Prices.mature_female,cart.num,cart.num_semili_mature,cart.num_mature_male,cart.nume_mature_female\n"
                + "               FROM dbo.cart\n"
                + "                INNER JOIN dbo.Ani ON Ani.id_ani = cart.id_ani\n"
                + "                INNER JOIN dbo.img ON cart.id_ani = img.id_ani\n"
                + "                INNER JOIN dbo.Prices ON Prices.id_ani = Ani.id_ani\n"
                + "                WHERE cart.user_id= ? and img.stt=1";
    }

    public String deleteAniInCart() {
        return "DELETE FROM dbo.cart WHERE cart.id_ani=?";
    }
//get description by id

    public String getDescriptionById() {
        return "select ani_detail\n"
                + "from texT_detail\n"
                + "where id_ani=?";
    }
//delete address

    public String DeleteAddressAccId() {
        return "delete dbo.address_delivery\n"
                + "where address_id= ?";
    }
//create address

    public String CreatAddressAccID() {
        return "insert into dbo.address_delivery\n"
                + "values\n"
                + "(?,?,?,?);";
    }
//update address
//name       - 1
//phone      - 2
//address    - 3
//address_id - 4

    public String UpdateAddressAccID() {
        return "update dbo.address_delivery\n"
                + "set name_rec=?, phone_rec=?, addres_rec=?\n"
                + "where address_id=?";
    }
//get single acc id   

    public String getSingleAddressAccId() {
        return "select *\n"
                + "from dbo.address_delivery\n"
                + "where address_id= ?";
    }
//get addd acc id

    public String getAddressAccId() {
        return "select *\n"
                + "from dbo.address_delivery\n"
                + "where user_id= ?";
    }
///get single ani by id

    public String getAniByID() {
        return "select trim(a.id_ani), trim(c.name_cat), (trim(b.name_genus)+' '+trim(a.name_species)) as scient_name, trim(a.name_ani)\n"
                + "from dbo.Ani a\n"
                + "inner join dbo.Genus b on b.id_genus = a.id_genus\n"
                + "inner join cat c on c.id_cat = a.id_cat\n"
                + "where a.id_ani =?";
    }
//get user account

    public String get_all_user_account() {
        return "select user_account from dbo.customer";
    }
//add new user

    public String add_new_user() {
        return "insert into dbo.customer\n"
                + "values\n"
                + "(   ?, ? ,  ?, ?, ?, ?, ?, 3, ?);";
    }

    public String get_code_by_mail() {
        return "select code from mail_seeding\n"
                + "where mail=?";
    }

    public String update_mail_seeding() {
        return "update mail_seeding\n"
                + "set code=?\n"
                + "where mail=?";
    }

    public String insert_into_mail_seeding() {
        return "insert into dbo.mail_seeding\n"
                + "values\n"
                + "(?, ?);";
    }

    public String delete_from_mail_seeding() {
        return "delete from mail_seeding \n"
                + "where mail= ?";
    }
//get all animal whatever catergoeris

    public String getAllAnimalWithAllType() {
        return "select trim(a.id_ani), trim(c.name_cat), (trim(b.name_genus)+' '+trim(a.name_species)) as scient_name, trim(a.name_ani)\n"
                + "                from dbo.Ani a\n"
                + "                inner join dbo.Genus b on b.id_genus = a.id_genus\n"
                + "                inner join dbo.Cat c on c.id_cat = a.id_cat";
    }
//duy khanh

    public String getAllAnimal_admin() {
        return "select trim(a.id_ani), trim(c.name_cat),trim(a.name_species),trim(b.id_genus), (trim(b.name_genus)+' '+trim(a.name_species)) as scient_name, trim(a.name_ani), d.num_sling,\n"
                + "                  d.num_semili_mature, d.num_mature_male, d.num_mature_female,e.sling, e.semili_mature, e.mature_male, e.mature_female, f.ani_detail\n"
                + "                 from dbo.Ani a\n"
                + "                inner join dbo.Genus b on b.id_genus = a.id_genus\n"
                + "                inner join cat c on c.id_cat = a.id_cat\n"
                + "                inner join dbo.warehouse d on d.id_ani = a.id_ani\n"
                + "inner join dbo.Prices e on e.id_ani = a.id_ani\n"
                + "inner join dbo.text_detail f on f.id_ani = a.id_ani\n";
    }

    public String getAniById_Admin() {
        return "select trim(a.id_ani), trim(c.name_cat),trim(a.name_species),trim(b.id_genus), (trim(b.name_genus)+' '+trim(a.name_species)) as scient_name, trim(a.name_ani), d.num_sling,\n"
                + "                  d.num_semili_mature, d.num_mature_male, d.num_mature_female,e.sling, e.semili_mature, e.mature_male, e.mature_female, f.ani_detail\n"
                + "                 from dbo.Ani a\n"
                + "                inner join dbo.Genus b on b.id_genus = a.id_genus\n"
                + "                inner join cat c on c.id_cat = a.id_cat\n"
                + "                inner join dbo.warehouse d on d.id_ani = a.id_ani\n"
                + "inner join dbo.Prices e on e.id_ani = a.id_ani\n"
                + "inner join dbo.text_detail f on f.id_ani = a.id_ani\n"
                + "where a.id_ani=?";
    }

    public String deleteAni_Admin() {
        return "delete from Ani\n"
                + "where id_ani = ?";
    }

    public String Create_Admin() {
        return "BEGIN TRANSACTION;\n"
                + "\n"
                + "insert into Ani\n"
                + "values(?,?,?,?,?)\n"
                + "\n"
                + "insert into img\n"
                + "values(?,?,?),\n"
                + "(?,?,?),\n"
                + "(?,?,?)\n"
                + "\n"
                + "insert into Prices\n"
                + "values(?,?,?,?,?)\n"
                + "\n"
                + "insert into warehouse\n"
                + "values(?,?,?,?,?)\n"
                + "\n"
                + "insert into text_detail\n"
                + "values(?,?)\n"
                + "\n"
                + "COMMIT;";
    }

    public String UpdateAdmin() {
        return "BEGIN TRANSACTION;\n"
                + "\n"
                + "update Ani\n"
                + "set id_cat=?, id_genus=?, name_species=?, name_ani=?\n"
                + "where id_ani = ?\n"
                + "\n"
                + "\n"
                + "update img\n"
                + "set img_link = ?\n"
                + "where id_ani = ? and stt = 1\n"
                + "\n"
                + "update img\n"
                + "set img_link = ?\n"
                + "where id_ani = ? and stt = 2\n"
                + "\n"
                + "update img\n"
                + "set img_link = ?\n"
                + "where id_ani = ? and stt = 3\n"
                + "\n"
                + "update Prices\n"
                + "set sling =?, semili_mature=?, mature_male=?, mature_female=?\n"
                + "where id_ani=?\n"
                + "\n"
                + "UPDATE text_detail\n"
                + "set ani_detail=?\n"
                + "where id_ani=?\n"
                + "\n"
                + "COMMIT;";
    }

    public String getAllAnimal(String type) {
        String typeID;
        switch (type) {
            case "Spider":
                typeID = "CAT001";
                break;
            case "Frog":
                typeID = "CAT002";
                break;
            case "Snake":
                typeID = "CAT003";
                break;
            case "Scorpion":
                typeID = "CAT004";
                break;
            default:
                typeID = "CAT001";
                break;
        }
        return "select trim(a.id_ani), trim(c.name_cat), (trim(b.name_genus)+' '+trim(a.name_species)) as scient_name, trim(a.name_ani)\n"
                + "                from dbo.Ani a\n"
                + "                inner join dbo.Genus b on b.id_genus = a.id_genus\n"
                + "                inner join dbo.Cat c on c.id_cat = a.id_cat\n"
                + "                where a.id_cat= '" + typeID + "'";
    }

    public String get_price_according_ani_id() {
        return "select sling, semili_mature, mature_male, mature_female\n"
                + "from dbo.Prices \n"
                + "where id_ani=?";
    }

    public String get_link_img_according_ani_id() {
        return "select img.img_link\n"
                + "from dbo.Ani inner join dbo.img on img.id_ani = Ani.id_ani\n"
                + "where dbo.Ani.id_ani= ?";
    }

    public String getSpecAnimal() {
        return "";
    }

    public String getAllUserInfor() {
        return "select * from dbo.customer";
    }

    public String get_infor_by_id() {
        return "select *\n"
                + "from dbo.customer\n"
                + "where user_id=?";
    }

    public String check_login_user_and_pass() {
        return "select user_id, user_account, user_password \n"
                + "from dbo.customer\n"
                + "where user_account= ? and user_password=?";
    }

    public String update_user_information() {
        return "update dbo.customer\n"
                + "set user_name=?, user_mail=?, user_phone= ?, user_Gender=?, user_birth=?\n"
                + "where user_id=?";
    }

    public String get_all_id_user() {
        return "select user_id from dbo.customer";
    }
}
