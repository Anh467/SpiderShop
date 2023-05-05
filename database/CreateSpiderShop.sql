--create database SpiderShop123;
--create database SpiderShop12345;
--create database  SpiderShop1111
--create database categories
--create database SpiderShop123
--create database SpiderShop1234
--create database  SpiderShop1

create table Cat(
	id_cat char(10) primary key not null,
	name_cat char(50),
)


--create database spider;
create table Genus(
	id_genus char(20) primary key not null,
	name_genus char(50),
)
create table Ani(
	id_ani char(10) primary key not null,
	id_cat char(10),
	id_genus char(20),
	name_species char(50),
	name_ani nvarchar(50),
	constraint fk_id_cat foreign key (id_cat) references dbo.Cat(id_cat)ON DELETE CASCADE,
	constraint fk_id_genus foreign key (id_genus) references dbo.Genus(id_genus) ON DELETE CASCADE
)
--kho chua hang
create table warehouse(
	id_ani char(10) primary key not null,
	num_sling int,
	num_semili_mature int,
	num_mature_male int,
	num_mature_female int,
	constraint fk_id_cat_warehouse foreign key (id_ani) references dbo.Ani(id_ani) ON DELETE CASCADE,
)

--văn bản giới thiệu động vật
create table text_detail(
	id_ani char(10) primary key not null,
	ani_detail text,
	constraint fk_id_ani_text_detail foreign key (id_ani) references dbo.Ani(id_ani) ON DELETE CASCADE,
)

create table Prices(
	id_ani char(10) primary key,
	sling money,
	semili_mature money,
	mature_male money,
	mature_female money,
	CONSTRAINT FK_ID_price_spider FOREIGN KEY (id_ani) REFERENCES Ani(id_ani) ON DELETE CASCADE
)
create table img(
	id_ani char(10),
	img_link varchar(350),
	stt smallint,
	constraint fk_id_ani foreign key (id_ani) references dbo.Ani(id_ani) ON DELETE CASCADE,
)



-- user
create table customer(
	user_id char(20) primary key not null,
	user_birth  date,
	user_name nvarchar(50),
	user_Gender varchar(10),
	user_phone char(15),
	user_mail char(50),
	user_account char(50) unique,
	prioty int,
	user_password char(100) ,
	check(user_Gender in ('Male', 'Female', 'Unknown'))
)
--role user
create table role_cus(
	user_id char(20) primary key not null,
	user_role char(10) check(user_role= 'ADMIN' or user_role='USER'),
	constraint fk_user_id_role_cus  foreign key (user_id) references dbo.customer(user_id),
)



-- Hóa Đơn
create table bill(
	bill_id int identity(1,1) primary key not null,
	user_id char(20),
	bill_date datetime,
	phone_rec char(15) not null,
	addres_rec nvarchar(250) not null,
	name_rec nvarchar(50),
	constraint fk_user_id_bill  foreign key (user_id) references dbo.customer(user_id)ON DELETE CASCADE,
)

create table bill_details(
	bill_id int,
	id_ani char(10),
	num_sling int,
	num_semili int,
	num_male int,
	num_female int,
	constraint fk_user_id_bill_details  foreign key (bill_id) references dbo.bill(bill_id)ON DELETE CASCADE,
	constraint fk_id_ani_bill_details foreign key (id_ani) references dbo.Ani(id_ani)ON DELETE CASCADE,
)

-- địa chỉ
--address delivery
create table address_delivery(
	address_id int IDENTITY(1,1) PRIMARY KEY,
	user_id char(20) not null,
	phone_rec char(15) not null,
	addres_rec nvarchar(250) not null,
	name_rec nvarchar(50),
	constraint fk_user_id_address foreign key (user_id) references dbo.customer(user_id) on DELETE CASCADE,
)

--create cart
create table cart(
	user_id char(20),
	id_ani char(10),
	num int,
	primary key(user_id, id_ani),
	check(num>=0),
	constraint fk_user_id_cart  foreign key (user_id) references dbo.customer(user_id) on DELETE CASCADE,
	constraint fk_id_ani_cart foreign key (id_ani) references dbo.Ani(id_ani) on DELETE CASCADE,
)
ALTER TABLE dbo.cart
ADD num_semili_mature INT, num_mature_male int, nume_mature_female int



-- vấn đề về đăng kí tài khoản, media, mail, sign up
create table mail_seeding(
	id int identity(1,1) not null,
	mail varchar(150) not null,
	code varchar(20)
)


-- taoj news
create table news (
	id int identity(1,1) primary key,
	title VARCHAR(50),
	imgn_link varchar(350),
	describe VARCHAR(1300),
	author VARCHAR(50),
	date DATE
);

