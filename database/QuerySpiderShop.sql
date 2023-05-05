--get price acc id
	select * from dbo.Prices
	where id_ani='SPI002'
--get role
select* from role_cus
where user_id= 'ID14018900'
--get user infor
select * from dbo.customer
select * from dbo.Ani
--get ani inforamtion
select trim(b.name_cat), (TRIM(c.name_genus)+' '+TRIM(a.name_species)) as scienct_name, trim(a.name_ani) 
from ani a inner join cat b on b.id_cat = a.id_cat inner join dbo.Genús c on c.id_genus = a.id_genus

--ani infor
select trim(a.id_ani), trim(c.name_cat), (trim(b.name_genus)+' '+trim(a.name_species)) as scient_name, trim(a.name_ani)
from dbo.Ani a
inner join dbo.Genus b on b.id_genus = a.id_genus
inner join dbo.Cat c on c.id_cat = a.id_cat
where a.id_cat= 'CAT001'

--get price according ani id
select sling, semili_mature, mature_male, mature_female
from dbo.Prices 
where id_ani='ANI001'

--get link img according ani id
select img.img_link
from dbo.Ani inner join dbo.img on img.id_ani = Ani.id_ani
where dbo.Ani.id_ani= 'SPI002'

select dbo.Ani.id_ani, img.img_link 
from dbo.Ani inner join dbo.img on img.id_ani = Ani.id_ani
ORDER by  dbo.Ani.id_ani asc


--get user infor
select * from dbo.customer
where user_id='ID14018803'

--check login user and pass
select user_id ,user_account, user_password 
from dbo.customer
where user_account= 'viet080702' and user_password='nguyenanhviet'
-- get id by user and pass
-- get infor by id
select *
from dbo.customer
where user_id='ID14018900'
--------------------------------------------
select trim(a.id_ani), trim(c.name_cat), (trim(b.name_genus)+' '+trim(a.name_species)) as scient_name, trim(a.name_ani)
                from dbo.Ani a
                inner join dbo.Genus b on b.id_genus = a.id_genus
                inner join dbo.Cat c on c.id_cat = a.id_cat
                where a.id_cat= 'CAT001'
--------------------------------------------
--get all animal by search text
select trim(a.id_ani), trim(c.name_cat), (trim(b.name_genus)+' '+trim(a.name_species)) as scient_name, trim(a.name_ani)
                from dbo.Ani a
                inner join dbo.Genus b on b.id_genus = a.id_genus
                inner join dbo.Cat c on c.id_cat = a.id_cat
--get single animal
select trim(a.id_ani), trim(c.name_cat), (trim(b.name_genus)+' '+trim(a.name_species)) as scient_name, trim(a.name_ani)
                from dbo.Ani a
               inner join dbo.Genus b on b.id_genus = a.id_genus
               inner join cat c on c.id_cat = a.id_cat
               where a.id_ani ='SPI001'
--------------------------------------------
--update talble customer
update dbo.customer
set user_name='abc', user_mail='email', user_phone= '038xxx', user_Gender='male', user_birth='09-09-2003'
where user_id='abc'
--
select user_mail from dbo.customer
-----------------------------------------
--get all id user
select user_id from dbo.customer
--delete acord email
select * from mail_seeding 

delete from mail_seeding 
where mail= 'van123872000@gmail.com';
insert into dbo.mail_seeding
values
('van123872000@gmail.com', '');
=--update
update mail_seeding
set code='abc'
where mail='van123872000@gmail.com';
---get code by mail
select code from mail_seeding
where mail='van123872000@gmail.com';
----------------
select user_id from dbo.customer

--get user account
select user_account from dbo.customer

--get address according id
select *
from dbo.address_delivery
where user_id= 'ID14018900'
--get add
--get address according id
select *
from dbo.address_delivery
where address_id= 'ID00000001'
--update address
update dbo.address_delivery
set name_rec='abcd', phone_rec='1234', addres_rec='qwert'
where address_id='ID00000001'
-- create addess
insert into dbo.address_delivery
values
(   ?, ?, N?, N?)
--delete
delete dbo.address_delivery
where address_id= '1'
--get description by id
select ani_detail
from texT_detail
where id_ani='SPI002'
-----------------------
SELECT cart.user_id,Ani.id_ani,img.img_link,Ani.name_ani,Prices.sling,dbo.Prices.semili_mature,dbo.Prices.mature_male,dbo.Prices.mature_female,cart.num,cart.num_semili_mature,cart.num_mature_male,cart.nume_mature_female
               FROM dbo.cart
                INNER JOIN dbo.Ani ON Ani.id_ani = cart.id_ani
                INNER JOIN dbo.img ON cart.id_ani = img.id_ani
                INNER JOIN dbo.Prices ON Prices.id_ani = Ani.id_ani
                WHERE cart.user_id= 'ID14018803' and img.stt=1
----laays danh sach news
select * from news
order by date;
----------------
--get list income

select concat(year(a.bill_date),'-',
	case
        WHEN (month(a.bill_date)<10) THEN  concat('0',month(a.bill_date))
        else CAST(month(a.bill_date) AS VARCHAR)
    END), (sum(b.num_sling*c.sling)+sum(b.num_semili*c.semili_mature)+sum(b.num_male*c.mature_male)+sum(b.num_female* c.mature_female)) as revenue
from dbo.bill a
inner join dbo.bill_details b on b.bill_id = a.bill_id
inner join dbo.Prices c on c.id_ani = b.id_ani
group by year(a.bill_date), month(a.bill_date) 
order by concat(year(a.bill_date),'-',
	case
        WHEN (month(a.bill_date)<10) THEN  concat('0',month(a.bill_date))
        else CAST(month(a.bill_date) AS VARCHAR)
    END) asc
--(LEN(month(a.bill_date))=1?concat('0',month(a.bill_date)):month(a.bill_date))
--total income
select (sum(b.num_sling*c.sling)+sum(b.num_semili*c.semili_mature)+sum(b.num_male*c.mature_male)+sum(b.num_female* c.mature_female)) as revenue
from dbo.bill a
inner join dbo.bill_details b on b.bill_id = a.bill_id
inner join dbo.Prices c on c.id_ani = b.id_ani
inner join dbo.customer d on d.user_id = a.user_id
--count order
select count(bill_id)
from dbo.bill
--number user
select count(user_id)
from dbo.customer
--check mail
select * from dbo.customer
where user_mail= 'van123872000@gmail.com'
---------------------------------------------nest query----------------------------
select trim(a.id_ani), trim(c.name_cat),trim(a.name_species),trim(b.id_genus), (trim(b.name_genus)+' '+trim(a.name_species)) as scient_name, trim(a.name_ani), d.num_sling,
					d.num_semili_mature, d.num_mature_male, d.num_mature_female,e.sling, e.semili_mature, e.mature_male, e.mature_female, f.ani_detail
					from dbo.Ani a
					inner join dbo.Genus b on b.id_genus = a.id_genus
					inner join cat c on c.id_cat = a.id_cat
					inner join dbo.warehouse d on d.id_ani = a.id_ani
					inner join dbo.Prices e on e.id_ani = a.id_ani
					inner join dbo.text_detail f on f.id_ani = a.id_ani
-------------------------------
select bill_id, name_rec, phone_rec, addres_rec,bill_date
from dbo.bill
--kinxh
select a.bill_id, c.id_ani , c.name_ani, a.num_sling, a.num_semili, a.num_male, a.num_female, (b.sling*a.num_sling + b.semili_mature*a.num_semili + b.mature_male*a.num_male + b.mature_female*a.num_female) as total
from dbo.bill_details a
inner join dbo.Prices b on b.id_ani = a.id_ani
inner join dbo.Ani c on c.id_ani = a.id_ani
 where a.bill_id='21'

 select a.bill_id, c.id_ani , c.name_ani, a.num_sling, a.num_semili, a.num_male, a.num_female, (b.sling*a.num_sling + b.semili_mature*a.num_semili + b.mature_male*a.num_male + b.mature_female*a.num_female) as total
from dbo.bill_details a
inner join dbo.Prices b on b.id_ani = a.id_ani
inner join dbo.Ani c on c.id_ani = a.id_ani
--query get ani
select * from dbo.Ani a
inner join dbo.warehouse b on b.id_ani = a.id_ani
where id_cat='CAT001'

