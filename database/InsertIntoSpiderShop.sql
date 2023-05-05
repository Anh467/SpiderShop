---customer
insert into dbo.customer
values
(   'ID14018900', '08-07-2002', N'Nguyễn Anh Việt', 'Male', '0384859541', 'van123872000@gmail.com', 'viet080702', 0, '533f91b7394a3bd14dac528ef217febebe69f80334cc8735694c2fa17e9a6a3d'),
(   'ID14018901', '07-12-2002', N'Mai Văn Tâm', 'Male', '0772888989', 'hovantam1978@gmail.com', 'anhiuem2', 0, '5c4bb0fe36e0a737eed2ba0c96571d3fbcb59658d7a8784ca3ac6f538981a398'),
(   'ID14018803', '02-12-2002', N'Nguyễn Hồ Ngọc Ấn', 'Female', '0945227000', 'ngocan2002@gmail.com', 'anyeuviet', 0, '4d5d59ff96ce2ab89de9a7c9d02ed058b105c3a9564b4197f5295c5652a2ca1c'),
(   'ID14060109', '01-09-2002', N'Nguyễn Duy Khánh', 'Male', '0339183224', 'duykhanh01092002@gmail.com', 'Abaddon', 0, '5c4bb0fe36e0a737eed2ba0c96571d3fbcb59658d7a8784ca3ac6f538981a398');
-- role of customer
insert into dbo.role_cus
values
(   'ID14018900', 'ADMIN'),
(   'ID14018901', 'USER'),
(   'ID14018803', 'USER'),
(   'ID14060109', 'USER');
--insert for address
insert into dbo.address_delivery
values
(   'ID14018900'  -- user_id - char(20)
  , '0384859541'  -- phone_rec - char(15)
  , N'Số 3L đường Chu Văn An (khu đê bao), phường Trần Phú, thành phố Quảng Ngãi Phường Lê Hồng Phong, Thành Phố Quảng Ngãi, Quảng Ngãi' -- addres_rec - nvarchar(250)
  , N'Nguyễn Anh Việt' -- name_rec - nvarchar(50)
    ),
	(  'ID14018900'  -- user_id - char(20)
  , '0356315873'  -- phone_rec - char(15)
  , N'Hope Garden Plaza, 102 Hẻm 102 Phan Huy Ích Phường 15, Quận Tân Bình, TP. Hồ Chí Minh' -- addres_rec - nvarchar(250)
  , N'Ngô Thị Anh' -- name_rec - nvarchar(50)
    ),
	(  'ID14018900'  -- user_id - char(20)
  , '0384859541'  -- phone_rec - char(15)
  , N'Đại học FPT Đà Nẵng (FPT university Da Nang), Khu đô thị FPT City Phường Hòa Hải, Quận Ngũ Hành Sơn, Đà Nẵng' -- addres_rec - nvarchar(250)
  , N'Nguyễn Anh Việt' -- name_rec - nvarchar(50)
    ),
	(  'ID14018900'  -- user_id - char(20)
  , '0384859541'  -- phone_rec - char(15)
  , N'46 võ chí công Phường Hòa Hải, Quận Ngũ Hành Sơn, Đà Nẵng' -- addres_rec - nvarchar(250)
  , N'Nguyễn Anh Việt' -- name_rec - nvarchar(50)
    );


insert into dbo.mail_seeding
values
('van123872000@gmail.com', ''),
('hovantam1978@gmail.com', ''),
('ngocan2002@gmail.com', ''),
('duykhanh01092002@gmail.com', '');

insert into dbo.Cat
values
(   'CAT001', 'Spider'),
(   'CAT002', 'Frog'),
(   'CAT003', 'Snake'),
(   'CAT004', 'Scopion');

insert into dbo.Genus
values
--spider
('GN001', 'Brachypelma '),
('GN002', 'Aphonopelma'),
('GN003', 'Augacephalus'),
('GN004', 'Avicularia '),
('GN005', 'Bonnetina'),
('GN006', 'Bumba'),
('GN007', 'Ceratogyrus'),
('GN008', 'Chromatopelma'),
('GN009', 'Cyriopagopus'),
('GN010', 'Eupalaestrus'),
('GN011', 'Grammostola'),
('GN012', 'Harpactira'),
('GN013', 'Heteroscodra'),
('GN014', 'Lampropelma'),
('GN015', 'Monocentropus'),
('GN016', 'Phormictopus'),
('GN017', 'Phormingochilus'),
('GN018', 'Pterinochilus'),
('GN019', 'Pterinopelma'),
--scorpion
('GN020', 'Parabuthus '),
('GN021', 'Hottentotta '),
('GN022', 'Heterometrus '),
('GN023', 'Lychas');
insert into dbo.Ani
values
--spider
(   'SPI002', 'CAT001', 'GN002', 'Diamondback ', N'Mexican diamondback'),
(   'SPI003', 'CAT001', 'GN002', 'seemanni blue', N'Costa Rican Zebra Tarantula'),
(   'SPI004', 'CAT001', 'GN003', 'junodi', N'golden Starburst baboon'),
(   'SPI005', 'CAT001', 'GN004', 'Avicularia', N'Pinktoe Tarantula'),
(   'SPI006', 'CAT001', 'GN004', 'braunshauseni', N'Goliath Pink-Toe'),
(   'SPI007', 'CAT001', 'GN004', 'purpurea', N'Purple Pinktoe Tarantula'),
(   'SPI008', 'CAT001', 'GN004', 'sp Ecuador', N'Avicularia sp Ecuador'),
(   'SPI009', 'CAT001', 'GN004', 'versicolor', N'Avicularia versicolor'),
(   'SPI010', 'CAT001', 'GN005', 'papalutlensis', N'papalutla tarantula'),
(   'SPI011', 'CAT001', 'GN006', 'horrida', N'Brazilian Red Head'),
(   'SPI012', 'CAT001', 'GN007', 'marshalli', N'Straight Horned Baboon'),
(   'SPI013', 'CAT001', 'GN008', 'Cyaneopubescens', N'Green bottle Blue Tarantula'),
(   'SPI014', 'CAT001', 'GN009', 'sp Hati Hati ', N'Purple Earth Tiger'),
(   'SPI015', 'CAT001', 'GN010', 'camperstratus ', N'Pink Zebra Beauty'),
(   'SPI016', 'CAT001', 'GN011', 'pulchripes', N'Chaco Golden Knee'),
(   'SPI017', 'CAT001', 'GN011', 'rosea', N'Chilean Rose Hair'),
(   'SPI018', 'CAT001', 'GN012', 'pulchripes', N'Golden Blue Leg Baboon'),
(   'SPI019', 'CAT001', 'GN013', 'Maculata', N'Togo Starburst'),
(   'SPI020', 'CAT001', 'GN014', 'nigerrimum ', N'Sangihe Black'),
(   'SPI021', 'CAT001', 'GN015', 'balfouri ', N'Socotra Island Blue Baboon Tarantula'),
(   'SPI022', 'CAT001', 'GN016', 'atrichomatus ', N'Red Island Birdeater Tarantula'),
(   'SPI023', 'CAT001', 'GN017', 'sp rufus ', N'Peach Earth Tiger Tarantula'),
(   'SPI024', 'CAT001', 'GN019', 'sazimai ', N'Brazilian Blue'),
(   'SPI025', 'CAT001', 'GN018', 'murinus ', N'Orange Baboon Tarantula'),
--scorpion
(   'SCO001', 'CAT004', 'GN022', 'spinifer ', N'Giant forest scorpion'),
(   'SCO002', 'CAT004', 'GN021', 'caboverdensis ', N'Hottentotta caboverdensis'),
(   'SCO003', 'CAT004', 'GN021', 'hottentotta ', N'hottentotta hottentotta'),
(   'SCO004', 'CAT004', 'GN020', 'transvaalicus ', N'Parabuthus transvaalicus'),
(   'SCO005', 'CAT004', 'GN002', 'scutilus ', N'Lychas scutilus');


--create image
insert into dbo.img
values
--spider
(   'SPI002', 'https://jamiestarantulas.com/wordpress/wp-content/uploads/2021/09/Aphonopelma-diamondback-veracruz-3-1024x799.jpg' , 2),
(   'SPI002' , 'https://jamiestarantulas.com/wordpress/wp-content/uploads/2021/09/Aphonopelma-diamondback-veracruz-2.jpg' , 3 ),
--('SPI002 ', ' https://www.everythingreptiles.com/wp-content/uploads/2021/11/tarantula.jpg ',  1),
('SPI003', ' https://www.thesprucepets.com/thmb/CQDnbRwE5DARQ_7HFjYiNJHMHdo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-585991108-5816b37a3df78cc2e8102279.jpg ',  2),
('SPI002', ' https://i.pinimg.com/736x/bc/2b/b3/bc2bb3b8da17f040531fb49761d94380.jpg ',  1),
('SPI002', '	https://arachnoboards.com/gallery/a-chalcodes.33812/full?d=1464175905 ',  2),
('SPI002', ' https://www.thespidershop.co.uk/wp-content/uploads/2022/02/Mexico_Aphonopelma_diamondback.jpg ',  3),
('SPI003', '	https://empiretarantula.com/wp-content/uploads/2022/01/Costa-Rican-Zebra-Aphonopelma-Seemanni-1-1.jpg ',  1),
('SPI003', 'https://www.thesprucepets.com/thmb/CQDnbRwE5DARQ_7HFjYiNJHMHdo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-585991108-5816b37a3df78cc2e8102279.jpg ',  2),
('SPI003', 'https://tarantulapet.com/wp-content/uploads/2019/10/Costa-Rican-Zebra-tarantula-Aphonopelma-Seemanni.jpg ',  3),
('SPI004', 'https://spideridentifications.com/wp-content/uploads/2019/05/Orange-Baboon-Tarantula-Size.jpg ',  1),
('SPI004', 'https://spideridentifications.com/wp-content/uploads/2019/05/Mombasa-Golden-Starburst-Tarantula.jpg ',  2),
('SPI004', 'https://pet.mgxpr.com/wp-content/uploads/2021/09/Mombasa-Golden-Starburst-Tarantula-2.jpg ',  3),
('SPI005', 'https://spideridentifications.com/wp-content/uploads/2018/12/Pink-Toe-Tarantula-Size.jpg ', 1 ),
('SPI005', 'https://www.morereptiles.com/wp-content/uploads/2022/07/Pink-Toe-Tarantula.jpg ',  2),
('SPI005', 'https://empiretarantula.com/wp-content/uploads/2022/03/Antilles-Pinktoe-Tarantula-1-edited.jpg ',  3),
('SPI006', 'https://cdn.shopify.com/s/files/1/0555/0512/5563/products/braunshauseni_6b070654-cdb3-4f49-98b3-05f84fbb4022_1024x1024@2x.jpg?v=1640293430 ',  1),
('SPI006', 'https://www.mymonsters.co.za/wp-content/uploads/2018/07/AVIBRAJM.jpg ',  2),
('SPI006', 'https://nationalzoo.si.edu/sites/default/files/animals/pinktoedtarantula-001.jpg ',  3),
('SPI007', 'https://spideridentifications.com/wp-content/uploads/2019/03/Purple-Pink-Toe-Tarantula.jpg  ',  1),
('SPI007', 'https://www.backwaterreptiles.com/images/tarantulas/purple-pink-toe-tarantula-for-sale.jpg ',  2),
('SPI007', 'https://www.morereptiles.com/wp-content/uploads/2022/07/Pink-Toe-Tarantula.jpg ',  3),
('SPI021', 'https://www.myhomenature.com/media/catalog/product/cache/25168daec1c0784d4f9701ceb7e8a2a1/s/o/socotra_island_blue_baboon_tarantula_monocentropus_balfouri_1_4.jpg ',  1),
('SPI021', 'https://www.myhomenature.com/media/catalog/product/cache/25168daec1c0784d4f9701ceb7e8a2a1/s/o/socotra_island_blue_baboon_tarantula_monocentropus_balfouri_1_4.jpg ',  2),
('SPI021', 'https://pandpexotics.com/wp-content/uploads/2022/11/IMG_5328.jpg ', 3),
('SPI020', 'https://i.pinimg.com/originals/15/43/32/1543326ed15d7b980086ede83543f0f2.png ',  1),
('SPI020', 'https://www.exotic-pets.co.uk/data/images/3217l.jpg ',  2),
('SPI020', 'https://external-preview.redd.it/aGL58_ZkHiqSxn2aJZEuQzASlE2Xexpxwb2f1N5JbSs.jpg?auto=webp&s=b8afd356b05ea8fd716cbe927673206dd8eb8ba1 ',  3),
('SPI022', 'https://happyforest.store/wp-content/uploads/2020/01/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200202133346.png ',  1),
('SPI022', 'https://i0.wp.com/tarantulafriendly.com/wp-content/uploads/2021/04/Phormictopus-atrichomatus-2-scaled.jpg?fit=2560%2C1707&ssl=1 ',  2),
('SPI022', 'https://i0.wp.com/tarantulafriendly.com/wp-content/uploads/2021/04/Phormictopus-atrichomatus-7.jpg?resize=1024%2C683&ssl=1 ',  3),
('SPI023', 'https://www.mymonsters.co.za/wp-content/uploads/2020/05/PHORUFJF01.jpg ',  1),
('SPI023', 'https://www.myhomenature.com/media/catalog/product/cache/25168daec1c0784d4f9701ceb7e8a2a1/p/e/peach_earth_tiger_tarantula_phormingochilus_sp._rufus_3.jpg ',  2),
('SPI023', 'https://i.ytimg.com/vi/9uoTLQPnfXY/maxresdefault.jpg ',  3),
('SPI024', 'https://spideridentifications.com/wp-content/uploads/2019/06/Sazimas-Tarantula.jpg ',  1),
('SPI024', 'http://static1.squarespace.com/static/5aeb3363365f0249b8a3b543/5aeb35c6f950b706429507d2/5af39598562fa7f1ebec99fa/1633622884327/?format=1500w ',  2),
('SPI024', 'https://www.myhomenature.com/media/catalog/product/cache/6bd3477fa2f2a68d55e0c78c947906e5/i/r/iridescent_blue_tarantula_pterinopelma_sazimai_6_.jpg ',  3),
('SPI025', 'https://upload.wikimedia.org/wikipedia/commons/d/d3/Pterinochilus.jpg ',  1),
('SPI025', 'https://images.squarespace-cdn.com/content/v1/5e3cef84139cb3598eb57c76/1593922227046-ZG2ALPSVKMUGX0XB9AX0/PSX_20200208_131304.jpg?format=1000w ',  2),
('SPI025', 'https://thefridayspider.files.wordpress.com/2014/11/dakue5pl.jpg?w=640 ',  3),
('SPI008', ' https://arachnoboards.com/gallery/avicularia-sp-ecuador.37083/full?d=1480590785',  1),
('SPI008', ' https://live.staticflickr.com/1568/24880180531_331b97d60c_c.jpg ',  2),
('SPI008', ' https://live.staticflickr.com/1597/25092451072_102a42c0c1_c.jpg ',  3),
('SPI009', 'https://live.staticflickr.com/2662/3685447443_26a3be8c11_h.jpg ',  1),
('SPI009', 'https://live.staticflickr.com/2097/2231570671_3ab16f55fd_c.jpg ',  2),
('SPI009', 'https://live.staticflickr.com/4047/4200985213_54f84f895f_c.jpg ',  3),
('SPI010', 'https://static.inaturalist.org/photos/4754162/original.jpeg ',  1),
('SPI010', 'https://static.inaturalist.org/photos/4754162/original.jpeg ',  2),
('SPI010', 'https://inaturalist-open-data.s3.amazonaws.com/photos/10787702/large.jpeg ',  3),
('SPI011', 'https://static.inaturalist.org/photos/70118426/large.jpeg ',  1),
('SPI011', 'https://inaturalist-open-data.s3.amazonaws.com/photos/244631009/large.jpeg ',  2),
('SPI011', ' https://static.inaturalist.org/photos/70571306/large.jpg ',  3),
('SPI012', 'https://inaturalist-open-data.s3.amazonaws.com/photos/97071630/large.jpeg ',  1),
('SPI012', ' https://inaturalist-open-data.s3.amazonaws.com/photos/82022341/large.jpeg ',  2),
('SPI012', ' https://inaturalist-open-data.s3.amazonaws.com/photos/213037235/large.jpg ',  3),
('SPI013', ' https://inaturalist-open-data.s3.amazonaws.com/photos/83081188/large.jpeg ',  1),
('SPI013', 'https://inaturalist-open-data.s3.amazonaws.com/photos/121806447/large.jpg ',  2),
('SPI013', ' https://inaturalist-open-data.s3.amazonaws.com/photos/114527034/large.jpeg',  3),
('SPI008', ' https://arachnoboards.com/gallery/avicularia-sp-ecuador.37083/full?d=1480590785 ',  1),
('SPI008', ' https://live.staticflickr.com/1568/24880180531_331b97d60c_c.jpg ',  2),
('SPI008', ' https://live.staticflickr.com/1597/25092451072_102a42c0c1_c.jpg ',  3),
('SPI009', 'https://live.staticflickr.com/2662/3685447443_26a3be8c11_h.jpg ',  1),
('SPI009', 'https://live.staticflickr.com/2097/2231570671_3ab16f55fd_c.jpg ',  2),
('SPI009', 'https://live.staticflickr.com/4047/4200985213_54f84f895f_c.jpg ',  3),
('SPI010', 'https://static.inaturalist.org/photos/4754162/original.jpeg ',  1),
('SPI010', 'https://static.inaturalist.org/photos/4754162/original.jpeg ',  2),
('SPI010', 'https://inaturalist-open-data.s3.amazonaws.com/photos/10787702/large.jpeg ',  3),
('SPI011', 'https://static.inaturalist.org/photos/70118426/large.jpeg ',  1),
('SPI011', 'https://inaturalist-open-data.s3.amazonaws.com/photos/244631009/large.jpeg ',  2),
('SPI011', ' https://static.inaturalist.org/photos/70571306/large.jpg ',  3),
('SPI012', 'https://inaturalist-open-data.s3.amazonaws.com/photos/97071630/large.jpeg ',  1),
('SPI012', ' https://inaturalist-open-data.s3.amazonaws.com/photos/82022341/large.jpeg',  2),
('SPI012', ' https://inaturalist-open-data.s3.amazonaws.com/photos/213037235/large.jpg',  3),
('SPI013', ' https://inaturalist-open-data.s3.amazonaws.com/photos/83081188/large.jpeg',  1),
('SPI013', 'https://inaturalist-open-data.s3.amazonaws.com/photos/121806447/large.jpg ',  2),
('SPI013', ' https://inaturalist-open-data.s3.amazonaws.com/photos/114527034/large.jpeg ',  3),
('SPI014', ' https://cdn.shopify.com/s/files/1/0555/0512/5563/products/hatihati.jpg?v=1617768473',  1),
('SPI014', '	https://www.mymonsters.co.za/wp-content/uploads/2018/06/CYRHATMF01.jpg ',  2),
('SPI014', '	https://i.ytimg.com/vi/rJcMw52jxAU/maxresdefault.jpg',  3),
('SPI015', 'https://www.mymonsters.co.za/wp-content/uploads/2018/07/EUPCAMMF01.jpg',  1),
('SPI015', 'http://www.tarantulapets.com/wp-content/uploads/2014/12/Eupalaestrus-Campestratus-e1420963508357.jpg',  2),
('SPI015', 'https://k8inverts.com/wp-content/uploads/2016/08/Eupalaestrus-campestratus-Mature-Male.jpg ',  3),
('SPI016', ' https://rozzerstarantulas.co.za/wp-content/uploads/2020/05/G-Pulchripes-01.jpg ', 1),
('SPI016', '	https://upload.wikimedia.org/wikipedia/commons/8/8d/Grammostola_pulchripes_L9_female.jpg',  2),
('SPI016', '	https://www.mymonsters.co.za/wp-content/uploads/2018/06/GRAPULMF2.jpg',  3	 ),
('SPI017', ' https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Grammostola_rosea_adult_weiblich.jpg/1200px-Grammostola_rosea_adult_weiblich.jpg',  1),
('SPI017', ' https://www.zoomontana.org/images/img_45YeXs4PXzenvB9PAW1aoq/taboo-from-bri.jpeg?fit=outside&w=1600&h=1200',  2),
('SPI017', ' https://cdn.shopify.com/s/files/1/1033/5251/articles/4543815643_761c601976_b.jpg?v=1634741861',  3),
('SPI018', ' https://pbs.twimg.com/media/E2azc-7XEAA9YK6.jpg',  1),
('SPI018', '	https://i.pinimg.com/originals/cf/69/3a/cf693a7d4ceefd16ee344a43d3f82958.jpg',  2),
('SPI018', '	https://live.staticflickr.com/4718/38923239255_cdbc752d7b_b.jpg',  3),
('SPI019', ' https://www.mymonsters.co.za/wp-content/uploads/2018/06/HETMACMF01.jpg',  1),
('SPI019', '	https://reptilia.co.za/wp-content/uploads/Media/LiveAnimals/TOGO.jpg',  2),
('SPI019', '	https://www.mymonsters.co.za/wp-content/uploads/2018/06/HETMACMF02.jpg',  3),
--scorpion
	--Giant forest scorpion
	(   'SCO001', 'https://happyhollow.org/wp-content/uploads/2019/04/scorpion-300x215.png', 1),
	(   'SCO001', 'https://chehaw.com/images/Asian_Forest_Scorpion.jpg', 2),
	(   'SCO001', 'https://www.beastsandblossoms.com/wp-content/uploads/2016/06/Giant-forest-scorpion-Heterometrus-sp-Sri-Lanna-1002.jpg', 3),
	--Hottentotta caboverdensis
	(   'SCO002', 'https://www.researchgate.net/publication/322337854/figure/fig1/AS:580901718249472@1515509170428/Hottentotta-caboverdensis-adult-female-from-Cape-Verde-islands.png', 1),
	(   'SCO002', 'https://live.staticflickr.com/5608/15656351386_41800b71af_b.jpg', 2),
	(   'SCO002', 'https://live.staticflickr.com/8643/15678127821_fc75777621_b.jpg', 3),
	--hottentotta hottentotta
	(   'SCO003', 'http://2.bp.blogspot.com/-g5jx-PMZhOg/UnjUYiAOfZI/AAAAAAAAARk/_ysFDJg7Ano/s1600/h_flavidulus_pakistan(f).jpg', 1),
	(   'SCO003', 'https://www.researchgate.net/publication/49619389/figure/fig2/AS:667703379509256@1536204299623/Adult-female-holotype-of-Hottentotta-flavidulus-sp-n-still-alive-in-captivity-when.png', 2),
	(   'SCO003', 'https://static.inaturalist.org/photos/42092872/large.jpg', 3),
	--Parabuthus transvaalicus
	(   'SCO004', 'https://www.researchgate.net/profile/Ruan-Stander-3/publication/363581842/figure/fig3/AS:11431281084579049@1663264898615/Threat-display-of-a-Transvaal-Thick-tail-Scorpion-Parabuthus-transvaalicus-Photo-R.jpg', 1),
	(   'SCO004', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRppYgwufxm4BA3TA3z4jb4e0oSs5mWiXzj6g&usqp=CAU', 2),
	(   'SCO004', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM4Jic8Rn72Erl4rCyj8euEgRezdVmniZY3A&usqp=CAU', 3),
	--Lychas scutilus
	(   'SCO005', 'https://live.staticflickr.com/1482/25741280453_71d26b108c_b.jpg', 1),
	(   'SCO005', 'https://live.staticflickr.com/1605/26277810581_360ccb5051_b.jpg', 2),
	(   'SCO005', 'https://inaturalist-open-data.s3.amazonaws.com/photos/25816678/original.jpg', 3);
--insert price
--spider
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI002', 233000, 1986000, 816000, 1057000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI003', 820000, 1308000, 1972000, 718000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI004', 779000, 1816000, 1839000, 1781000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI005', 734000, 803000, 1143000, 1428000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI006', 208000, 1090000, 484000, 1927000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI007', 968000, 1774000, 1271000, 821000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI008', 1168000, 1041000, 1288000, 707000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI009', 948000, 1225000, 1588000, 1577000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI010', 1826000, 683000, 1461000, 1648000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI011', 895000, 174000, 1075000, 755000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI012', 1441000, 1870000, 1456000, 1336000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI013', 1508000, 1962000, 703000, 1369000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI014', 1739000, 1828000, 802000, 899000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI015', 1081000, 1222000, 213000, 1484000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI016', 1969000, 203000, 1165000, 1845000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI017', 284000, 702000, 1173000, 1275000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI018', 547000, 740000, 1917000, 660000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI019', 1369000, 1434000, 1194000, 1397000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI020', 1851000, 1241000, 1325000, 1823000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI021', 992000, 1398000, 1540000, 1601000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI022', 230000, 780000, 532000, 736000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI023', 352000, 945000, 295000, 665000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI024', 1682000, 305000, 1207000, 939000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SPI025', 119000, 337000, 1397000, 945000);
--scorpion
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SCO001', 1080000, 283000, 879000, 942000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SCO002', 1887000, 1433000, 330000, 193000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SCO003', 427000, 322000, 712000, 988000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SCO004', 840000, 155000, 218000, 1578000);
insert into Prices (id_ani, sling, semili_mature, mature_male, mature_female) values ('SCO005', 614000, 370000, 591000, 842000);



--bill
insert into bill ( user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '11/23/2021', '5746157253', '53068 Goodland Way', 'Lincoln Abley');
insert into bill ( user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '08/30/2022', '8833839450', '9 Riverside Avenue', 'Kathi Ashall');
insert into bill ( user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '02/10/2022', '9677153921', '69 Fisk Center', 'Winthrop Mattholie');
insert into bill (user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '04/19/2020', '9819599442', '3 Nobel Parkway', 'Allison St. Hill');
insert into bill (user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '01/16/2023', '5634698998', '0 Brentwood Drive', 'Erskine Moloney');
insert into bill (user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '06/05/2021', '1264953270', '54 Cottonwood Parkway', 'Shamus Benedit');
insert into bill (user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '08/25/2022', '9296050473', '35561 Village Green Street', 'Waldo Westwood');
insert into bill (user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '07/15/2022', '3186826992', '81 Loftsgordon Court', 'Archer Fulford');
insert into bill (user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '01/20/2023', '4348820441', '2657 Marquette Street', 'Cris Eastcott');
insert into bill (user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '09/28/2020', '7531646296', '77 Sloan Drive', 'Yuri Labdon');
insert into bill ( user_id, bill_date, phone_rec, addres_rec, name_rec) values ('ID14018900', '12/12/2021', '8903446841', '0 Nelson Drive', 'Abel Mulcock');
insert into bill ( user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '05/13/2021', '9527822362', '83382 Bobwhite Drive', 'Jeanie Hilhouse');
insert into bill ( user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '04/15/2021', '5834600943', '59 Emmet Way', 'Roman Deeks');
insert into bill ( user_id, bill_date, phone_rec, addres_rec, name_rec) values ('ID14018900', '04/26/2021', '1427071466', '5875 Forest Junction', 'Dulciana Martinet');
insert into bill ( user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '10/04/2020', '3726933693', '2 Sutherland Park', 'Mira Ballantine');
insert into bill ( user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '07/28/2022', '3443595709', '433 Russell Drive', 'Minnnie Leggat');
insert into bill (user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '07/05/2021', '2363680717', '6102 Schmedeman Drive', 'Christel Scoines');
insert into bill ( user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '07/21/2022', '1943057932', '5 Darwin Point', 'Dun Beadle');
insert into bill (user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '11/21/2021', '9939611686', '9 Schlimgen Way', 'Rosemonde Ricard');
insert into bill ( user_id, bill_date, phone_rec, addres_rec, name_rec) values ( 'ID14018900', '01/26/2021', '2533356356', '8 Randy Alley', 'Debee O''Logan');

--bill detail

insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('1', 'SPI002', 4, 5, 0, 5);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('2', 'SPI002', 1, 5, 5, 5);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('3', 'SPI002', 2, 2, 0, 2);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('4', 'SPI002', 2, 3, 5, 5);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('5', 'SPI002', 4, 5, 0, 5);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('6', 'SPI002', 4, 2, 5, 4);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('7', 'SPI002', 2, 3, 1, 5);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('8', 'SPI002', 4, 2, 1, 1);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('9', 'SPI002', 5, 2, 2, 3);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('10', 'SPI002', 1, 4, 4, 3);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('11', 'SPI002', 0, 3, 2, 5);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('12', 'SPI002', 0, 5, 5, 5);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('13', 'SPI002', 1, 0, 3, 4);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('14', 'SPI002', 4, 1, 0, 5);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('15', 'SPI002', 1, 5, 5, 5);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('16', 'SPI002', 4, 1, 2, 5);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('17', 'SPI002', 4, 1, 2, 1);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('18', 'SPI002', 4, 3, 2, 1);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('19', 'SPI002', 4, 0, 3, 0);
insert into bill_details (bill_id, id_ani, num_sling, num_semili, num_male, num_female) values ('20', 'SPI002', 4, 3, 4, 3);
-----news----

insert into news (title,imgn_link, describe ,author, date) values ('Tarantula spiders are fascinating creatures',
'https://animals.sandiegozoo.org/sites/default/files/2016-08/animals_hero_spiders.jpg', 
'Tarantula spiders are fascinating creatures with many interesting 
facts and behaviors. Researchers have discovered that some species
of tarantulas have a unique way of deterring predators by producing 
a hissing noise that sounds like a snake, scaring off potential attackers. While many people may be afraid of these spiders, 
they can actually be helpful to humans. In South America, tarantula venom is used
for medicinal purposes and is believed to have healing properties for conditions 
such as arthritis and muscle pain. Tarantulas are also known for their ability to 
regenerate lost limbs, and they are often kept as pets due to their docile nature. 
Overall, tarantulas are fascinating creatures with many unique characteristics that 
continue to intrigue researchers and enthusiasts alike.', 
'Nguyen Ho Ngoc An', '3/15/2023');

insert into news (title,imgn_link, describe ,author, date) values ('TMating behavior of Tarantulas',
'https://assets-us-01.kc-usercontent.com/c61eb7fd-e251-00cf-9d94-adb777e2f7b2/9c593afb-dfe6-4bc6-ba18-00db887ea76f/tarantula-crawling-in-a-garden.jpg?q=75&w=760&h=480', 
'Another interesting fact about tarantulas is their mating behavior. 
Male tarantulas often have to perform a courtship dance or display to attract a female. 
If the female is receptive, the male will approach her cautiously and deposit a sperm 
packet on the ground, which the female will then pick up with her genital opening. Some 
species of tarantulas also have complex mating rituals that involve drumming or vibrating 
their bodies to communicate with potential mates.', 
'Nguyen Ho Ngoc An', '3/16/2023');

------------------------------------------------------------------------PROCEDUCE-----------------------------------------------
