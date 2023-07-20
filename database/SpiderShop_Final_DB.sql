USE [SpiderShop]
GO
/****** Object:  Table [dbo].[address_delivery]    Script Date: 7/20/2023 9:16:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address_delivery](
	[address_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [char](20) NOT NULL,
	[phone_rec] [char](15) NOT NULL,
	[addres_rec] [nvarchar](250) NOT NULL,
	[name_rec] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ani]    Script Date: 7/20/2023 9:16:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ani](
	[id_ani] [char](10) NOT NULL,
	[id_cat] [char](10) NULL,
	[id_genus] [char](20) NULL,
	[name_species] [char](50) NULL,
	[name_ani] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ani] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 7/20/2023 9:16:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [char](20) NULL,
	[bill_date] [datetime] NULL,
	[phone_rec] [char](15) NOT NULL,
	[addres_rec] [nvarchar](250) NOT NULL,
	[name_rec] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_details]    Script Date: 7/20/2023 9:16:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_details](
	[bill_id] [int] NULL,
	[id_ani] [char](10) NULL,
	[num_sling] [int] NULL,
	[num_semili] [int] NULL,
	[num_male] [int] NULL,
	[num_female] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 7/20/2023 9:16:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[user_id] [char](20) NOT NULL,
	[id_ani] [char](10) NOT NULL,
	[num] [int] NULL,
	[num_semili_mature] [int] NULL,
	[num_mature_male] [int] NULL,
	[nume_mature_female] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[id_ani] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cat]    Script Date: 7/20/2023 9:16:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cat](
	[id_cat] [char](10) NOT NULL,
	[name_cat] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 7/20/2023 9:16:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[user_id] [char](20) NOT NULL,
	[user_birth] [date] NULL,
	[user_name] [nvarchar](50) NULL,
	[user_Gender] [varchar](10) NULL,
	[user_phone] [char](15) NULL,
	[user_mail] [char](50) NULL,
	[user_account] [char](50) NULL,
	[prioty] [int] NULL,
	[user_password] [char](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genus]    Script Date: 7/20/2023 9:16:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genus](
	[id_genus] [char](20) NOT NULL,
	[name_genus] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_genus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[img]    Script Date: 7/20/2023 9:16:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[img](
	[id_ani] [char](10) NULL,
	[img_link] [varchar](350) NULL,
	[stt] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mail_seeding]    Script Date: 7/20/2023 9:16:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mail_seeding](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mail] [varchar](150) NOT NULL,
	[code] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news]    Script Date: 7/20/2023 9:16:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[imgn_link] [varchar](350) NULL,
	[describe] [varchar](1300) NULL,
	[author] [varchar](50) NULL,
	[date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prices]    Script Date: 7/20/2023 9:16:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prices](
	[id_ani] [char](10) NOT NULL,
	[sling] [money] NULL,
	[semili_mature] [money] NULL,
	[mature_male] [money] NULL,
	[mature_female] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ani] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role_cus]    Script Date: 7/20/2023 9:16:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_cus](
	[user_id] [char](20) NOT NULL,
	[user_role] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[text_detail]    Script Date: 7/20/2023 9:16:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[text_detail](
	[id_ani] [char](10) NOT NULL,
	[ani_detail] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ani] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[warehouse]    Script Date: 7/20/2023 9:16:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[warehouse](
	[id_ani] [char](10) NOT NULL,
	[num_sling] [int] NULL,
	[num_semili_mature] [int] NULL,
	[num_mature_male] [int] NULL,
	[num_mature_female] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ani] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[address_delivery] ON 

INSERT [dbo].[address_delivery] ([address_id], [user_id], [phone_rec], [addres_rec], [name_rec]) VALUES (1, N'ID14018900          ', N'0384859541     ', N'Số 3L đường Chu Văn An (khu đê bao), phường Trần Phú, thành phố Quảng Ngãi Phường Lê Hồng Phong, Thành Phố Quảng Ngãi, Quảng Ngãi', N'Nguyễn Anh Việt')
INSERT [dbo].[address_delivery] ([address_id], [user_id], [phone_rec], [addres_rec], [name_rec]) VALUES (2, N'ID14018900          ', N'0356315873     ', N'Hope Garden Plaza, 102 Hẻm 102 Phan Huy Ích Phường 15, Quận Tân Bình, TP. Hồ Chí Minh', N'Ngô Thị Anh')
INSERT [dbo].[address_delivery] ([address_id], [user_id], [phone_rec], [addres_rec], [name_rec]) VALUES (3, N'ID14018900          ', N'0384859541     ', N'Đại học FPT Đà Nẵng (FPT university Da Nang), Khu đô thị FPT City Phường Hòa Hải, Quận Ngũ Hành Sơn, Đà Nẵng', N'Nguyễn Anh Việt')
INSERT [dbo].[address_delivery] ([address_id], [user_id], [phone_rec], [addres_rec], [name_rec]) VALUES (4, N'ID14018900          ', N'0384859541     ', N'46 võ chí công Phường Hòa Hải, Quận Ngũ Hành Sơn, Đà Nẵng', N'Nguyễn Anh Việt')
SET IDENTITY_INSERT [dbo].[address_delivery] OFF
GO
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SCO001    ', N'CAT004    ', N'GN022               ', N'spinifer                                          ', N'Giant forest scorpion')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SCO002    ', N'CAT004    ', N'GN021               ', N'caboverdensis                                     ', N'Hottentotta caboverdensis')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SCO003    ', N'CAT004    ', N'GN021               ', N'hottentotta                                       ', N'hottentotta hottentotta')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SCO004    ', N'CAT004    ', N'GN020               ', N'transvaalicus                                     ', N'Parabuthus transvaalicus')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SCO005    ', N'CAT004    ', N'GN002               ', N'scutilus                                          ', N'Lychas scutilus')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI002    ', N'CAT001    ', N'GN002               ', N'Diamondback                                       ', N'Mexican diamondback')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI003    ', N'CAT001    ', N'GN002               ', N'seemanni blue                                     ', N'Costa Rican Zebra Tarantula')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI004    ', N'CAT001    ', N'GN003               ', N'junodi                                            ', N'golden Starburst baboon')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI005    ', N'CAT001    ', N'GN004               ', N'Avicularia                                        ', N'Pinktoe Tarantula')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI006    ', N'CAT001    ', N'GN004               ', N'braunshauseni                                     ', N'Goliath Pink-Toe')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI007    ', N'CAT001    ', N'GN004               ', N'purpurea                                          ', N'Purple Pinktoe Tarantula')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI008    ', N'CAT001    ', N'GN004               ', N'sp Ecuador                                        ', N'Avicularia sp Ecuador')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI009    ', N'CAT001    ', N'GN004               ', N'versicolor                                        ', N'Avicularia versicolor')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI010    ', N'CAT001    ', N'GN005               ', N'papalutlensis                                     ', N'papalutla tarantula')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI011    ', N'CAT001    ', N'GN006               ', N'horrida                                           ', N'Brazilian Red Head')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI012    ', N'CAT001    ', N'GN007               ', N'marshalli                                         ', N'Straight Horned Baboon')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI013    ', N'CAT001    ', N'GN008               ', N'Cyaneopubescens                                   ', N'Green bottle Blue Tarantula')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI014    ', N'CAT001    ', N'GN009               ', N'sp Hati Hati                                      ', N'Purple Earth Tiger')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI015    ', N'CAT001    ', N'GN010               ', N'camperstratus                                     ', N'Pink Zebra Beauty')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI016    ', N'CAT001    ', N'GN011               ', N'pulchripes                                        ', N'Chaco Golden Knee')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI017    ', N'CAT001    ', N'GN011               ', N'rosea                                             ', N'Chilean Rose Hair')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI018    ', N'CAT001    ', N'GN012               ', N'pulchripes                                        ', N'Golden Blue Leg Baboon')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI019    ', N'CAT001    ', N'GN013               ', N'Maculata                                          ', N'Togo Starburst')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI020    ', N'CAT001    ', N'GN014               ', N'nigerrimum                                        ', N'Sangihe Black')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI021    ', N'CAT001    ', N'GN015               ', N'balfouri                                          ', N'Socotra Island Blue Baboon Tarantula')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI022    ', N'CAT001    ', N'GN016               ', N'atrichomatus                                      ', N'Red Island Birdeater Tarantula')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI023    ', N'CAT001    ', N'GN017               ', N'sp rufus                                          ', N'Peach Earth Tiger Tarantula')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI024    ', N'CAT001    ', N'GN019               ', N'sazimai                                           ', N'Brazilian Blue')
INSERT [dbo].[Ani] ([id_ani], [id_cat], [id_genus], [name_species], [name_ani]) VALUES (N'SPI025    ', N'CAT001    ', N'GN018               ', N'murinus                                           ', N'Orange Baboon Tarantula')
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (1, N'ID14018900          ', CAST(N'2021-11-23T00:00:00.000' AS DateTime), N'5746157253     ', N'53068 Goodland Way', N'Lincoln Abley')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (2, N'ID14018900          ', CAST(N'2022-08-30T00:00:00.000' AS DateTime), N'8833839450     ', N'9 Riverside Avenue', N'Kathi Ashall')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (3, N'ID14018900          ', CAST(N'2022-02-10T00:00:00.000' AS DateTime), N'9677153921     ', N'69 Fisk Center', N'Winthrop Mattholie')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (4, N'ID14018900          ', CAST(N'2020-04-19T00:00:00.000' AS DateTime), N'9819599442     ', N'3 Nobel Parkway', N'Allison St. Hill')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (5, N'ID14018900          ', CAST(N'2023-01-16T00:00:00.000' AS DateTime), N'5634698998     ', N'0 Brentwood Drive', N'Erskine Moloney')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (6, N'ID14018900          ', CAST(N'2021-06-05T00:00:00.000' AS DateTime), N'1264953270     ', N'54 Cottonwood Parkway', N'Shamus Benedit')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (7, N'ID14018900          ', CAST(N'2022-08-25T00:00:00.000' AS DateTime), N'9296050473     ', N'35561 Village Green Street', N'Waldo Westwood')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (8, N'ID14018900          ', CAST(N'2022-07-15T00:00:00.000' AS DateTime), N'3186826992     ', N'81 Loftsgordon Court', N'Archer Fulford')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (9, N'ID14018900          ', CAST(N'2023-01-20T00:00:00.000' AS DateTime), N'4348820441     ', N'2657 Marquette Street', N'Cris Eastcott')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (10, N'ID14018900          ', CAST(N'2020-09-28T00:00:00.000' AS DateTime), N'7531646296     ', N'77 Sloan Drive', N'Yuri Labdon')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (11, N'ID14018900          ', CAST(N'2021-12-12T00:00:00.000' AS DateTime), N'8903446841     ', N'0 Nelson Drive', N'Abel Mulcock')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (12, N'ID14018900          ', CAST(N'2021-05-13T00:00:00.000' AS DateTime), N'9527822362     ', N'83382 Bobwhite Drive', N'Jeanie Hilhouse')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (13, N'ID14018900          ', CAST(N'2021-04-15T00:00:00.000' AS DateTime), N'5834600943     ', N'59 Emmet Way', N'Roman Deeks')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (14, N'ID14018900          ', CAST(N'2021-04-26T00:00:00.000' AS DateTime), N'1427071466     ', N'5875 Forest Junction', N'Dulciana Martinet')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (15, N'ID14018900          ', CAST(N'2020-10-04T00:00:00.000' AS DateTime), N'3726933693     ', N'2 Sutherland Park', N'Mira Ballantine')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (16, N'ID14018900          ', CAST(N'2022-07-28T00:00:00.000' AS DateTime), N'3443595709     ', N'433 Russell Drive', N'Minnnie Leggat')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (17, N'ID14018900          ', CAST(N'2021-07-05T00:00:00.000' AS DateTime), N'2363680717     ', N'6102 Schmedeman Drive', N'Christel Scoines')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (18, N'ID14018900          ', CAST(N'2022-07-21T00:00:00.000' AS DateTime), N'1943057932     ', N'5 Darwin Point', N'Dun Beadle')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (19, N'ID14018900          ', CAST(N'2021-11-21T00:00:00.000' AS DateTime), N'9939611686     ', N'9 Schlimgen Way', N'Rosemonde Ricard')
INSERT [dbo].[bill] ([bill_id], [user_id], [bill_date], [phone_rec], [addres_rec], [name_rec]) VALUES (20, N'ID14018900          ', CAST(N'2021-01-26T00:00:00.000' AS DateTime), N'2533356356     ', N'8 Randy Alley', N'Debee O''Logan')
SET IDENTITY_INSERT [dbo].[bill] OFF
GO
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (1, N'SPI002    ', 4, 5, 0, 5)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (2, N'SPI002    ', 1, 5, 5, 5)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (3, N'SPI002    ', 2, 2, 0, 2)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (4, N'SPI002    ', 2, 3, 5, 5)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (5, N'SPI002    ', 4, 5, 0, 5)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (6, N'SPI002    ', 4, 2, 5, 4)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (7, N'SPI002    ', 2, 3, 1, 5)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (8, N'SPI002    ', 4, 2, 1, 1)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (9, N'SPI002    ', 5, 2, 2, 3)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (10, N'SPI002    ', 1, 4, 4, 3)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (11, N'SPI002    ', 0, 3, 2, 5)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (12, N'SPI002    ', 0, 5, 5, 5)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (13, N'SPI002    ', 1, 0, 3, 4)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (14, N'SPI002    ', 4, 1, 0, 5)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (15, N'SPI002    ', 1, 5, 5, 5)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (16, N'SPI002    ', 4, 1, 2, 5)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (17, N'SPI002    ', 4, 1, 2, 1)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (18, N'SPI002    ', 4, 3, 2, 1)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (19, N'SPI002    ', 4, 0, 3, 0)
INSERT [dbo].[bill_details] ([bill_id], [id_ani], [num_sling], [num_semili], [num_male], [num_female]) VALUES (20, N'SPI002    ', 4, 3, 4, 3)
GO
INSERT [dbo].[Cat] ([id_cat], [name_cat]) VALUES (N'CAT001    ', N'Spider                                            ')
INSERT [dbo].[Cat] ([id_cat], [name_cat]) VALUES (N'CAT002    ', N'Frog                                              ')
INSERT [dbo].[Cat] ([id_cat], [name_cat]) VALUES (N'CAT003    ', N'Snake                                             ')
INSERT [dbo].[Cat] ([id_cat], [name_cat]) VALUES (N'CAT004    ', N'Scopion                                           ')
GO
INSERT [dbo].[customer] ([user_id], [user_birth], [user_name], [user_Gender], [user_phone], [user_mail], [user_account], [prioty], [user_password]) VALUES (N'ID14018803          ', CAST(N'2002-02-12' AS Date), N'Nguyễn Hồ Ngọc Ấn', N'Female', N'0945227000     ', N'ngocan2002@gmail.com                              ', N'anyeuviet                                         ', 0, N'4d5d59ff96ce2ab89de9a7c9d02ed058b105c3a9564b4197f5295c5652a2ca1c                                    ')
INSERT [dbo].[customer] ([user_id], [user_birth], [user_name], [user_Gender], [user_phone], [user_mail], [user_account], [prioty], [user_password]) VALUES (N'ID14018900          ', CAST(N'2002-08-07' AS Date), N'Nguyễn Anh Việt', N'Male', N'0384859541     ', N'van123872000@gmail.com                            ', N'viet080702                                        ', 0, N'533f91b7394a3bd14dac528ef217febebe69f80334cc8735694c2fa17e9a6a3d                                    ')
INSERT [dbo].[customer] ([user_id], [user_birth], [user_name], [user_Gender], [user_phone], [user_mail], [user_account], [prioty], [user_password]) VALUES (N'ID14018901          ', CAST(N'2002-07-12' AS Date), N'Mai Văn Tâm', N'Male', N'0772888989     ', N'hovantam1978@gmail.com                            ', N'anhiuem2                                          ', 0, N'5c4bb0fe36e0a737eed2ba0c96571d3fbcb59658d7a8784ca3ac6f538981a398                                    ')
INSERT [dbo].[customer] ([user_id], [user_birth], [user_name], [user_Gender], [user_phone], [user_mail], [user_account], [prioty], [user_password]) VALUES (N'ID14060109          ', CAST(N'2002-01-09' AS Date), N'Nguyễn Duy Khánh', N'Male', N'0339183224     ', N'duykhanh01092002@gmail.com                        ', N'Abaddon                                           ', 0, N'5c4bb0fe36e0a737eed2ba0c96571d3fbcb59658d7a8784ca3ac6f538981a398                                    ')
GO
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN001               ', N'Brachypelma                                       ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN002               ', N'Aphonopelma                                       ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN003               ', N'Augacephalus                                      ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN004               ', N'Avicularia                                        ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN005               ', N'Bonnetina                                         ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN006               ', N'Bumba                                             ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN007               ', N'Ceratogyrus                                       ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN008               ', N'Chromatopelma                                     ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN009               ', N'Cyriopagopus                                      ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN010               ', N'Eupalaestrus                                      ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN011               ', N'Grammostola                                       ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN012               ', N'Harpactira                                        ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN013               ', N'Heteroscodra                                      ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN014               ', N'Lampropelma                                       ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN015               ', N'Monocentropus                                     ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN016               ', N'Phormictopus                                      ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN017               ', N'Phormingochilus                                   ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN018               ', N'Pterinochilus                                     ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN019               ', N'Pterinopelma                                      ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN020               ', N'Parabuthus                                        ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN021               ', N'Hottentotta                                       ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN022               ', N'Heterometrus                                      ')
INSERT [dbo].[Genus] ([id_genus], [name_genus]) VALUES (N'GN023               ', N'Lychas                                            ')
GO
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI002    ', N'https://jamiestarantulas.com/wordpress/wp-content/uploads/2021/09/Aphonopelma-diamondback-veracruz-3-1024x799.jpg', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI002    ', N'https://jamiestarantulas.com/wordpress/wp-content/uploads/2021/09/Aphonopelma-diamondback-veracruz-2.jpg', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI003    ', N' https://www.thesprucepets.com/thmb/CQDnbRwE5DARQ_7HFjYiNJHMHdo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-585991108-5816b37a3df78cc2e8102279.jpg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI002    ', N' https://i.pinimg.com/736x/bc/2b/b3/bc2bb3b8da17f040531fb49761d94380.jpg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI002    ', N'	https://arachnoboards.com/gallery/a-chalcodes.33812/full?d=1464175905 ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI002    ', N' https://www.thespidershop.co.uk/wp-content/uploads/2022/02/Mexico_Aphonopelma_diamondback.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI003    ', N'	https://empiretarantula.com/wp-content/uploads/2022/01/Costa-Rican-Zebra-Aphonopelma-Seemanni-1-1.jpg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI003    ', N'https://www.thesprucepets.com/thmb/CQDnbRwE5DARQ_7HFjYiNJHMHdo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-585991108-5816b37a3df78cc2e8102279.jpg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI003    ', N'https://tarantulapet.com/wp-content/uploads/2019/10/Costa-Rican-Zebra-tarantula-Aphonopelma-Seemanni.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI004    ', N'https://spideridentifications.com/wp-content/uploads/2019/05/Orange-Baboon-Tarantula-Size.jpg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI004    ', N'https://spideridentifications.com/wp-content/uploads/2019/05/Mombasa-Golden-Starburst-Tarantula.jpg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI004    ', N'https://pet.mgxpr.com/wp-content/uploads/2021/09/Mombasa-Golden-Starburst-Tarantula-2.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI005    ', N'https://spideridentifications.com/wp-content/uploads/2018/12/Pink-Toe-Tarantula-Size.jpg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI005    ', N'https://www.morereptiles.com/wp-content/uploads/2022/07/Pink-Toe-Tarantula.jpg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI005    ', N'https://empiretarantula.com/wp-content/uploads/2022/03/Antilles-Pinktoe-Tarantula-1-edited.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI006    ', N'https://cdn.shopify.com/s/files/1/0555/0512/5563/products/braunshauseni_6b070654-cdb3-4f49-98b3-05f84fbb4022_1024x1024@2x.jpg?v=1640293430 ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI006    ', N'https://www.mymonsters.co.za/wp-content/uploads/2018/07/AVIBRAJM.jpg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI006    ', N'https://nationalzoo.si.edu/sites/default/files/animals/pinktoedtarantula-001.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI007    ', N'https://spideridentifications.com/wp-content/uploads/2019/03/Purple-Pink-Toe-Tarantula.jpg  ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI007    ', N'https://www.backwaterreptiles.com/images/tarantulas/purple-pink-toe-tarantula-for-sale.jpg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI007    ', N'https://www.morereptiles.com/wp-content/uploads/2022/07/Pink-Toe-Tarantula.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI021    ', N'https://www.myhomenature.com/media/catalog/product/cache/25168daec1c0784d4f9701ceb7e8a2a1/s/o/socotra_island_blue_baboon_tarantula_monocentropus_balfouri_1_4.jpg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI021    ', N'https://www.myhomenature.com/media/catalog/product/cache/25168daec1c0784d4f9701ceb7e8a2a1/s/o/socotra_island_blue_baboon_tarantula_monocentropus_balfouri_1_4.jpg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI021    ', N'https://pandpexotics.com/wp-content/uploads/2022/11/IMG_5328.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI020    ', N'https://i.pinimg.com/originals/15/43/32/1543326ed15d7b980086ede83543f0f2.png ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI020    ', N'https://www.exotic-pets.co.uk/data/images/3217l.jpg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI020    ', N'https://external-preview.redd.it/aGL58_ZkHiqSxn2aJZEuQzASlE2Xexpxwb2f1N5JbSs.jpg?auto=webp&s=b8afd356b05ea8fd716cbe927673206dd8eb8ba1 ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI022    ', N'https://happyforest.store/wp-content/uploads/2020/01/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200202133346.png ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI022    ', N'https://i0.wp.com/tarantulafriendly.com/wp-content/uploads/2021/04/Phormictopus-atrichomatus-2-scaled.jpg?fit=2560%2C1707&ssl=1 ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI022    ', N'https://i0.wp.com/tarantulafriendly.com/wp-content/uploads/2021/04/Phormictopus-atrichomatus-7.jpg?resize=1024%2C683&ssl=1 ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI023    ', N'https://www.mymonsters.co.za/wp-content/uploads/2020/05/PHORUFJF01.jpg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI023    ', N'https://www.myhomenature.com/media/catalog/product/cache/25168daec1c0784d4f9701ceb7e8a2a1/p/e/peach_earth_tiger_tarantula_phormingochilus_sp._rufus_3.jpg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI023    ', N'https://i.ytimg.com/vi/9uoTLQPnfXY/maxresdefault.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI024    ', N'https://spideridentifications.com/wp-content/uploads/2019/06/Sazimas-Tarantula.jpg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI024    ', N'http://static1.squarespace.com/static/5aeb3363365f0249b8a3b543/5aeb35c6f950b706429507d2/5af39598562fa7f1ebec99fa/1633622884327/?format=1500w ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI024    ', N'https://www.myhomenature.com/media/catalog/product/cache/6bd3477fa2f2a68d55e0c78c947906e5/i/r/iridescent_blue_tarantula_pterinopelma_sazimai_6_.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI025    ', N'https://upload.wikimedia.org/wikipedia/commons/d/d3/Pterinochilus.jpg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI025    ', N'https://images.squarespace-cdn.com/content/v1/5e3cef84139cb3598eb57c76/1593922227046-ZG2ALPSVKMUGX0XB9AX0/PSX_20200208_131304.jpg?format=1000w ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI025    ', N'https://thefridayspider.files.wordpress.com/2014/11/dakue5pl.jpg?w=640 ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI008    ', N' https://arachnoboards.com/gallery/avicularia-sp-ecuador.37083/full?d=1480590785', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI008    ', N' https://live.staticflickr.com/1568/24880180531_331b97d60c_c.jpg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI008    ', N' https://live.staticflickr.com/1597/25092451072_102a42c0c1_c.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI009    ', N'https://live.staticflickr.com/2662/3685447443_26a3be8c11_h.jpg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI009    ', N'https://live.staticflickr.com/2097/2231570671_3ab16f55fd_c.jpg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI009    ', N'https://live.staticflickr.com/4047/4200985213_54f84f895f_c.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI010    ', N'https://static.inaturalist.org/photos/4754162/original.jpeg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI010    ', N'https://static.inaturalist.org/photos/4754162/original.jpeg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI010    ', N'https://inaturalist-open-data.s3.amazonaws.com/photos/10787702/large.jpeg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI011    ', N'https://static.inaturalist.org/photos/70118426/large.jpeg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI011    ', N'https://inaturalist-open-data.s3.amazonaws.com/photos/244631009/large.jpeg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI011    ', N' https://static.inaturalist.org/photos/70571306/large.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI012    ', N'https://inaturalist-open-data.s3.amazonaws.com/photos/97071630/large.jpeg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI012    ', N' https://inaturalist-open-data.s3.amazonaws.com/photos/82022341/large.jpeg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI012    ', N' https://inaturalist-open-data.s3.amazonaws.com/photos/213037235/large.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI013    ', N' https://inaturalist-open-data.s3.amazonaws.com/photos/83081188/large.jpeg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI013    ', N'https://inaturalist-open-data.s3.amazonaws.com/photos/121806447/large.jpg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI013    ', N' https://inaturalist-open-data.s3.amazonaws.com/photos/114527034/large.jpeg', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI008    ', N' https://arachnoboards.com/gallery/avicularia-sp-ecuador.37083/full?d=1480590785 ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI012    ', N' https://inaturalist-open-data.s3.amazonaws.com/photos/82022341/large.jpeg', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI012    ', N' https://inaturalist-open-data.s3.amazonaws.com/photos/213037235/large.jpg', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI013    ', N' https://inaturalist-open-data.s3.amazonaws.com/photos/83081188/large.jpeg', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI013    ', N' https://inaturalist-open-data.s3.amazonaws.com/photos/114527034/large.jpeg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI014    ', N' https://cdn.shopify.com/s/files/1/0555/0512/5563/products/hatihati.jpg?v=1617768473', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI014    ', N'	https://www.mymonsters.co.za/wp-content/uploads/2018/06/CYRHATMF01.jpg ', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI014    ', N'	https://i.ytimg.com/vi/rJcMw52jxAU/maxresdefault.jpg', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI015    ', N'https://www.mymonsters.co.za/wp-content/uploads/2018/07/EUPCAMMF01.jpg', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI015    ', N'http://www.tarantulapets.com/wp-content/uploads/2014/12/Eupalaestrus-Campestratus-e1420963508357.jpg', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI015    ', N'https://k8inverts.com/wp-content/uploads/2016/08/Eupalaestrus-campestratus-Mature-Male.jpg ', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI016    ', N' https://rozzerstarantulas.co.za/wp-content/uploads/2020/05/G-Pulchripes-01.jpg ', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI016    ', N'	https://upload.wikimedia.org/wikipedia/commons/8/8d/Grammostola_pulchripes_L9_female.jpg', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI016    ', N'	https://www.mymonsters.co.za/wp-content/uploads/2018/06/GRAPULMF2.jpg', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI017    ', N' https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Grammostola_rosea_adult_weiblich.jpg/1200px-Grammostola_rosea_adult_weiblich.jpg', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI017    ', N' https://www.zoomontana.org/images/img_45YeXs4PXzenvB9PAW1aoq/taboo-from-bri.jpeg?fit=outside&w=1600&h=1200', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI017    ', N' https://cdn.shopify.com/s/files/1/1033/5251/articles/4543815643_761c601976_b.jpg?v=1634741861', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI018    ', N' https://pbs.twimg.com/media/E2azc-7XEAA9YK6.jpg', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI018    ', N'	https://i.pinimg.com/originals/cf/69/3a/cf693a7d4ceefd16ee344a43d3f82958.jpg', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI018    ', N'	https://live.staticflickr.com/4718/38923239255_cdbc752d7b_b.jpg', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI019    ', N' https://www.mymonsters.co.za/wp-content/uploads/2018/06/HETMACMF01.jpg', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI019    ', N'	https://reptilia.co.za/wp-content/uploads/Media/LiveAnimals/TOGO.jpg', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SPI019    ', N'	https://www.mymonsters.co.za/wp-content/uploads/2018/06/HETMACMF02.jpg', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO001    ', N'https://happyhollow.org/wp-content/uploads/2019/04/scorpion-300x215.png', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO001    ', N'https://chehaw.com/images/Asian_Forest_Scorpion.jpg', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO001    ', N'https://www.beastsandblossoms.com/wp-content/uploads/2016/06/Giant-forest-scorpion-Heterometrus-sp-Sri-Lanna-1002.jpg', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO002    ', N'https://www.researchgate.net/publication/322337854/figure/fig1/AS:580901718249472@1515509170428/Hottentotta-caboverdensis-adult-female-from-Cape-Verde-islands.png', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO002    ', N'https://live.staticflickr.com/5608/15656351386_41800b71af_b.jpg', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO002    ', N'https://live.staticflickr.com/8643/15678127821_fc75777621_b.jpg', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO003    ', N'http://2.bp.blogspot.com/-g5jx-PMZhOg/UnjUYiAOfZI/AAAAAAAAARk/_ysFDJg7Ano/s1600/h_flavidulus_pakistan(f).jpg', 1)
GO
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO003    ', N'https://www.researchgate.net/publication/49619389/figure/fig2/AS:667703379509256@1536204299623/Adult-female-holotype-of-Hottentotta-flavidulus-sp-n-still-alive-in-captivity-when.png', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO003    ', N'https://static.inaturalist.org/photos/42092872/large.jpg', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO004    ', N'https://www.researchgate.net/profile/Ruan-Stander-3/publication/363581842/figure/fig3/AS:11431281084579049@1663264898615/Threat-display-of-a-Transvaal-Thick-tail-Scorpion-Parabuthus-transvaalicus-Photo-R.jpg', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO004    ', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRppYgwufxm4BA3TA3z4jb4e0oSs5mWiXzj6g&usqp=CAU', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO004    ', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM4Jic8Rn72Erl4rCyj8euEgRezdVmniZY3A&usqp=CAU', 3)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO005    ', N'https://live.staticflickr.com/1482/25741280453_71d26b108c_b.jpg', 1)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO005    ', N'https://live.staticflickr.com/1605/26277810581_360ccb5051_b.jpg', 2)
INSERT [dbo].[img] ([id_ani], [img_link], [stt]) VALUES (N'SCO005    ', N'https://inaturalist-open-data.s3.amazonaws.com/photos/25816678/original.jpg', 3)
GO
SET IDENTITY_INSERT [dbo].[mail_seeding] ON 

INSERT [dbo].[mail_seeding] ([id], [mail], [code]) VALUES (1, N'van123872000@gmail.com', N'')
INSERT [dbo].[mail_seeding] ([id], [mail], [code]) VALUES (2, N'hovantam1978@gmail.com', N'')
INSERT [dbo].[mail_seeding] ([id], [mail], [code]) VALUES (3, N'ngocan2002@gmail.com', N'')
INSERT [dbo].[mail_seeding] ([id], [mail], [code]) VALUES (4, N'duykhanh01092002@gmail.com', N'')
SET IDENTITY_INSERT [dbo].[mail_seeding] OFF
GO
SET IDENTITY_INSERT [dbo].[news] ON 

INSERT [dbo].[news] ([id], [title], [imgn_link], [describe], [author], [date]) VALUES (1, N'Tarantula spiders are fascinating creatures', N'https://animals.sandiegozoo.org/sites/default/files/2016-08/animals_hero_spiders.jpg', N'Tarantula spiders are fascinating creatures with many interesting 
facts and behaviors. Researchers have discovered that some species
of tarantulas have a unique way of deterring predators by producing 
a hissing noise that sounds like a snake, scaring off potential attackers. While many people may be afraid of these spiders, 
they can actually be helpful to humans. In South America, tarantula venom is used
for medicinal purposes and is believed to have healing properties for conditions 
such as arthritis and muscle pain. Tarantulas are also known for their ability to 
regenerate lost limbs, and they are often kept as pets due to their docile nature. 
Overall, tarantulas are fascinating creatures with many unique characteristics that 
continue to intrigue researchers and enthusiasts alike.', N'Nguyen Ho Ngoc An', CAST(N'2023-03-15' AS Date))
INSERT [dbo].[news] ([id], [title], [imgn_link], [describe], [author], [date]) VALUES (2, N'TMating behavior of Tarantulas', N'https://assets-us-01.kc-usercontent.com/c61eb7fd-e251-00cf-9d94-adb777e2f7b2/9c593afb-dfe6-4bc6-ba18-00db887ea76f/tarantula-crawling-in-a-garden.jpg?q=75&w=760&h=480', N'Another interesting fact about tarantulas is their mating behavior. 
Male tarantulas often have to perform a courtship dance or display to attract a female. 
If the female is receptive, the male will approach her cautiously and deposit a sperm 
packet on the ground, which the female will then pick up with her genital opening. Some 
species of tarantulas also have complex mating rituals that involve drumming or vibrating 
their bodies to communicate with potential mates.', N'Nguyen Ho Ngoc An', CAST(N'2023-03-16' AS Date))
SET IDENTITY_INSERT [dbo].[news] OFF
GO
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SCO001    ', 1080000.0000, 283000.0000, 879000.0000, 942000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SCO002    ', 1887000.0000, 1433000.0000, 330000.0000, 193000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SCO003    ', 427000.0000, 322000.0000, 712000.0000, 988000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SCO004    ', 840000.0000, 155000.0000, 218000.0000, 1578000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SCO005    ', 614000.0000, 370000.0000, 591000.0000, 842000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI002    ', 233000.0000, 1986000.0000, 816000.0000, 1057000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI003    ', 820000.0000, 1308000.0000, 1972000.0000, 718000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI004    ', 779000.0000, 1816000.0000, 1839000.0000, 1781000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI005    ', 734000.0000, 803000.0000, 1143000.0000, 1428000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI006    ', 208000.0000, 1090000.0000, 484000.0000, 1927000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI007    ', 968000.0000, 1774000.0000, 1271000.0000, 821000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI008    ', 1168000.0000, 1041000.0000, 1288000.0000, 707000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI009    ', 948000.0000, 1225000.0000, 1588000.0000, 1577000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI010    ', 1826000.0000, 683000.0000, 1461000.0000, 1648000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI011    ', 895000.0000, 174000.0000, 1075000.0000, 755000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI012    ', 1441000.0000, 1870000.0000, 1456000.0000, 1336000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI013    ', 1508000.0000, 1962000.0000, 703000.0000, 1369000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI014    ', 1739000.0000, 1828000.0000, 802000.0000, 899000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI015    ', 1081000.0000, 1222000.0000, 213000.0000, 1484000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI016    ', 1969000.0000, 203000.0000, 1165000.0000, 1845000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI017    ', 284000.0000, 702000.0000, 1173000.0000, 1275000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI018    ', 547000.0000, 740000.0000, 1917000.0000, 660000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI019    ', 1369000.0000, 1434000.0000, 1194000.0000, 1397000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI020    ', 1851000.0000, 1241000.0000, 1325000.0000, 1823000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI021    ', 992000.0000, 1398000.0000, 1540000.0000, 1601000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI022    ', 230000.0000, 780000.0000, 532000.0000, 736000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI023    ', 352000.0000, 945000.0000, 295000.0000, 665000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI024    ', 1682000.0000, 305000.0000, 1207000.0000, 939000.0000)
INSERT [dbo].[Prices] ([id_ani], [sling], [semili_mature], [mature_male], [mature_female]) VALUES (N'SPI025    ', 119000.0000, 337000.0000, 1397000.0000, 945000.0000)
GO
INSERT [dbo].[role_cus] ([user_id], [user_role]) VALUES (N'ID14018803          ', N'USER      ')
INSERT [dbo].[role_cus] ([user_id], [user_role]) VALUES (N'ID14018900          ', N'ADMIN     ')
INSERT [dbo].[role_cus] ([user_id], [user_role]) VALUES (N'ID14018901          ', N'USER      ')
INSERT [dbo].[role_cus] ([user_id], [user_role]) VALUES (N'ID14060109          ', N'USER      ')
GO
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SCO001    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SCO002    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SCO003    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SCO004    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SCO005    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI002    ', N'-The first time I saw this species I was taken back. See for yourself, this spider looks like it was dipped in black ink! One half is black, the other half is blond.</br> </br>
-This stunning spiders color dip even goes across the carapace in a diamond pattern, consistent with the color coordination. What a unique tarantula, indeed! </br></br>
-Aphonopelma sp. diamondback Veracruz is not just gorgeous, they are also incredibly hard, docile and long-lived. A true gem </br></br>
-Smaller slings like to burrow while larger specimens are often content to adopt a hide, and are more likely to be out in the open for viewing.</br></br>
-I can''t get enough of this one. I hope to see more of it in the hobby.</br></br>
<a href="https://www.jamiestarantulas.com/blog-post/aphonopelma-sp-diamondback-veracruz-care-sheet">Link reference</a>
')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI003    ', N'123s')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI004    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI005    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI006    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI007    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI008    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI009    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI010    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI011    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI012    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI013    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI014    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI015    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI016    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI017    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI018    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI019    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI020    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI021    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI022    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI023    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI024    ', N'')
INSERT [dbo].[text_detail] ([id_ani], [ani_detail]) VALUES (N'SPI025    ', N'')
GO
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SCO001    ', 85, 52, 44, 30)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SCO002    ', 66, 35, 63, 46)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SCO003    ', 62, 85, 30, 52)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SCO004    ', 96, 39, 56, 85)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SCO005    ', 58, 62, 50, 42)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI002    ', 57, 47, 79, 52)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI003    ', 71, 35, 35, 45)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI004    ', 48, 43, 84, 43)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI005    ', 87, 78, 30, 55)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI006    ', 55, 82, 81, 89)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI007    ', 68, 79, 83, 93)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI008    ', 86, 53, 58, 88)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI009    ', 71, 54, 90, 97)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI010    ', 30, 60, 96, 41)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI011    ', 45, 95, 99, 41)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI012    ', 90, 68, 94, 84)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI013    ', 85, 87, 45, 32)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI014    ', 52, 44, 38, 47)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI015    ', 46, 35, 54, 40)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI016    ', 62, 50, 74, 99)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI017    ', 88, 37, 45, 56)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI018    ', 64, 61, 38, 84)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI019    ', 88, 93, 54, 33)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI020    ', 100, 92, 48, 44)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI021    ', 97, 79, 30, 42)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI022    ', 66, 81, 55, 83)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI023    ', 63, 45, 58, 99)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI024    ', 67, 94, 99, 60)
INSERT [dbo].[warehouse] ([id_ani], [num_sling], [num_semili_mature], [num_mature_male], [num_mature_female]) VALUES (N'SPI025    ', 85, 37, 94, 98)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__customer__959D86A751C43773]    Script Date: 7/20/2023 9:16:34 AM ******/
ALTER TABLE [dbo].[customer] ADD UNIQUE NONCLUSTERED 
(
	[user_account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[address_delivery]  WITH CHECK ADD  CONSTRAINT [fk_user_id_address] FOREIGN KEY([user_id])
REFERENCES [dbo].[customer] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[address_delivery] CHECK CONSTRAINT [fk_user_id_address]
GO
ALTER TABLE [dbo].[Ani]  WITH CHECK ADD  CONSTRAINT [fk_id_cat] FOREIGN KEY([id_cat])
REFERENCES [dbo].[Cat] ([id_cat])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ani] CHECK CONSTRAINT [fk_id_cat]
GO
ALTER TABLE [dbo].[Ani]  WITH CHECK ADD  CONSTRAINT [fk_id_genus] FOREIGN KEY([id_genus])
REFERENCES [dbo].[Genus] ([id_genus])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ani] CHECK CONSTRAINT [fk_id_genus]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [fk_user_id_bill] FOREIGN KEY([user_id])
REFERENCES [dbo].[customer] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [fk_user_id_bill]
GO
ALTER TABLE [dbo].[bill_details]  WITH CHECK ADD  CONSTRAINT [fk_id_ani_bill_details] FOREIGN KEY([id_ani])
REFERENCES [dbo].[Ani] ([id_ani])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill_details] CHECK CONSTRAINT [fk_id_ani_bill_details]
GO
ALTER TABLE [dbo].[bill_details]  WITH CHECK ADD  CONSTRAINT [fk_user_id_bill_details] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([bill_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill_details] CHECK CONSTRAINT [fk_user_id_bill_details]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [fk_id_ani_cart] FOREIGN KEY([id_ani])
REFERENCES [dbo].[Ani] ([id_ani])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [fk_id_ani_cart]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [fk_user_id_cart] FOREIGN KEY([user_id])
REFERENCES [dbo].[customer] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [fk_user_id_cart]
GO
ALTER TABLE [dbo].[img]  WITH CHECK ADD  CONSTRAINT [fk_id_ani] FOREIGN KEY([id_ani])
REFERENCES [dbo].[Ani] ([id_ani])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[img] CHECK CONSTRAINT [fk_id_ani]
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD  CONSTRAINT [FK_ID_price_spider] FOREIGN KEY([id_ani])
REFERENCES [dbo].[Ani] ([id_ani])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Prices] CHECK CONSTRAINT [FK_ID_price_spider]
GO
ALTER TABLE [dbo].[role_cus]  WITH CHECK ADD  CONSTRAINT [fk_user_id_role_cus] FOREIGN KEY([user_id])
REFERENCES [dbo].[customer] ([user_id])
GO
ALTER TABLE [dbo].[role_cus] CHECK CONSTRAINT [fk_user_id_role_cus]
GO
ALTER TABLE [dbo].[text_detail]  WITH CHECK ADD  CONSTRAINT [fk_id_ani_text_detail] FOREIGN KEY([id_ani])
REFERENCES [dbo].[Ani] ([id_ani])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[text_detail] CHECK CONSTRAINT [fk_id_ani_text_detail]
GO
ALTER TABLE [dbo].[warehouse]  WITH CHECK ADD  CONSTRAINT [fk_id_cat_warehouse] FOREIGN KEY([id_ani])
REFERENCES [dbo].[Ani] ([id_ani])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[warehouse] CHECK CONSTRAINT [fk_id_cat_warehouse]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD CHECK  (([num]>=(0)))
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD CHECK  (([user_Gender]='Unknown' OR [user_Gender]='Female' OR [user_Gender]='Male'))
GO
ALTER TABLE [dbo].[role_cus]  WITH CHECK ADD CHECK  (([user_role]='ADMIN' OR [user_role]='USER'))
GO
