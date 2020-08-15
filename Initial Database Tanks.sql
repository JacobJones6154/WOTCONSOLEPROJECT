drop table if exists countries
create table countries(
	CountryID int primary key,
	CountryName VARCHAR(20)
)
insert into countries(CountryID, CountryName)
Values(1, 'USA'),(2, 'Britain'),(3, 'Germany'),(4, 'France'), (5, 'China'),
		(6, 'Soviet Union')


drop table if exists Tier
create table Tier (
	TierID int Primary Key)

insert into Tier (TierID)
Values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10)


drop table if exists TankClass
create table TankClass(
	ClassID int primary key,
	ClassName varchar(20)
	)
insert into TankClass(ClassID, ClassName)
Values (1, 'Light'),(2, 'Medium'),(3, 'Heavy'),(4, 'Tank Destroyer'),(5, 'Self Propelled Gun')

drop table if exists Tanks
Create table Tanks(
		CountryID int foreign key references countries (CountryID),
		ClassID int foreign key references TankClass (ClassID),
		TierID int foreign key references Tier (TierID),
		TankID int primary key,
		TankName varchar(30),
		HitPoints int,
		ROF decimal, 		
		AimTime decimal,
		Accuracy decimal,
		AvgPenetration int,
		AvgDamage int,
		DPM decimal,
		HullArmor varchar (15),
		TurretArmor varchar (15)
)

insert into Tanks(CountryID, ClassID, TierID, TankID, TankName, HitPoints, ROF, AimTime, Accuracy, AvgPenetration, AvgDamage, DPM, HullArmor, TurretArmor)
Values 
  (1,1,1,1,'T1 Cunningham',115,30,2.5,0.47,39,30,900,'10/10/10','10/10/10'),
    (1,1,2,2,'M2 Light Tank',160,24,2.1,0.46,48,40,960,'25/25/25','25/25/25'),
    (1,1,2,3,'T2 Light Tank',150,99.34,1.71,0.5,30,12,1192.08,'17/15/6','16/16/16'),
    (1,1,2,4,'T1E6',160,42.86,1.9,0.51,33,30,1285.8,'15.9/6.4/6.4','12.7/6.4/6.4'),
    (1,1,3,5,'M3 Stuart',240,26.09,1.7,0.41,56,40,1043.6,'38/25/25','38/32/32'),
    (1,1,3,6,'M22 Locust',250,26.2,1.71,0.41,56,40,1048,'25/13/13','25/25/25'),
    (1,1,3,7,'MTLS-1G14',250,36.75,1.71,0.48,45,40,1470,'38.1/25.4/25.4','38.1/25.4/25.4'),
    (1,1,4,8,'M5 Stuart',340,26.09,1.7,0.42,56,40,1043.6,'29/25/25','38/25/25'),
    (1,1,5,9,'M24 Chaffee',580,18.18,1.7,0.39,137,115,2090.7,'25/25/19','38/25/25'),
    (1,1,6,10,'T21',590,18.18,2.3,0.4,128,115,2090.7,'28/25/22','28/25/25'),
    (1,1,7,11,'T71',840,16.36,2.3,0.4,128,115,1881.4,'25/22/19','22/22/22'),
    (1,2,2,12,'T2 Medium Tank',170,26.09,1.7,0.46,48,40,1043.6,'22/22/22','25/25/25'),
    (1,2,3,13,'M2 Medium Tank',210,26.09,1.7,0.42,56,40,1043.6,'32/18/13','38/25/25'),
    (1,2,4,14,'M3 Lee',310,20,2.1,0.41,92,110,2200,'51/38/38','51/51/51'),
    (1,2,5,15,'M4 Sherman',460,14.29,2.3,0.43,128,115,1643.35,'51/38/38','63/63/63'),
    (1,2,5,16,'M7',440,26.09,2.1,0.43,105,75,1956.75,'38/32/25','51/38/38'),
    (1,2,5,17,'Ram-II',610,26.2,2.3,0.43,105,75,1965,'76.2/63/38','76.2/76.2/51'),
    (1,2,5,18,'M4A2E4 Sherman',480,15.75,2.06,0.46,92,110,1732.5,'64/38/38','76/50/50'),
    (1,2,6,19,'M4A3E2 Sherman Jumbo',760,18.18,2.3,0.4,128,115,2090.7,'101/76/38','76/50/50'),
    (1,2,6,20,'M4A3E8 Sherman',750,18.18,2.3,0.4,128,115,2090.7,'63/38/38','76/51/51'),
    (1,2,7,21,'T20',1100,6.38,2.3,0.38,160,240,1531.2,'63/50/38','88/63/63'),
    (1,2,8,22,'M26 Pershing',1440,7.32,2.3,0.37,180,240,1756.8,'101/76/50','127/76/63'),
    (1,2,8,23,'T26E4 Super Pershing',1500,7.32,2.3,0.38,170,240,1756.8,'177/76/51','102/76/76'),
    (1,2,8,24,'T23',1440,358.21,1.7,0.57,22,8,2865.68,'76.2/50.8/38.1','76.2/63.5/63.5'),
    (1,2,8,25,'T69',1350,7.27,2.9,0.38,173,240,1744.8,'101/76/38','152/76/114'),
    (1,2,9,26,'M46 Patton',1700,6.45,2.3,0.42,218,390,2515.5,'102/76/51','114/76/76'),
    (1,2,9,27,'T54E1',1750,5.63,2.9,0.4,210,390,2195.7,'110/76/35','127/69/50'),
    (1,2,10,28,'M48A1 Patton',2000,6.82,2,0.4,218,390,2659.8,'110/76/35','178/76/51'),
    (1,2,10,29,'M60',2000,6.82,1.8,0.35,53,480,3273.6,'93/73/25','177/76/51'),
    (1,3,5,30,'T1 Heavy',660,16.67,2.3,0.43,128,115,1917.05,'83/44/41','102/83/83'),
    (1,3,5,31,'T14',690,15.75,2.06,0.46,92,110,1732.5,'50/50/50','101/101/101'),
    (1,3,6,32,'M6',870,7.89,2.3,0.38,160,240,1893.6,'102/44/41','102/83/83'),
    (1,3,7,33,'T29',1250,5.26,2.3,0.42,198,320,1683.2,'102/76/51','279/127/102'),
    (1,3,8,34,'T32',1550,5.66,2.3,0.41,198,320,1811.2,'127/76/51','298/197/152'),
    (1,3,8,35,'T34',1500,4,3.4,0.35,248,400,1600,'102/76/51','279/127/203'),
    (1,3,8,36,'M6A2E1',1500,5.05,2.29,0.42,198,320,1616,'191/44/41','191/89/208'),
    (1,3,9,37,'M103',1850,5.36,2.3,0.37,258,400,2144,'203/51/38','127/127/51'),
    (1,3,10,38,'T110E5',2200,6,2,0.35,258,400,2400,'254/76/38','203/127/70'),
    (1,3,10,39,'T57 Heavy Tank',2250,7.74,2.7,0.35,258,400,3096,'203/50/38','127/137/50'),
    (1,4,2,40,'T18',125,28.57,1.7,0.38,64,45,1285.65,'51/32/25','N/A'),
    (1,4,3,41,'T82',160,21.43,2,0.39,110,75,1607.25,'13/7/13','N/A'),
    (1,4,4,42,'T40',275,16.22,1.7,0.41,128,115,1865.3,'51/38/38','N/A'),
    (1,4,4,43,'M8A1',265,24,1.7,0.39,110,75,1800,'29/29/25','38/25/25'),
    (1,4,5,44,'M10 Wolverine',360,18.75,1.7,0.38,128,115,2156.25,'51/19/25','57/25/25'),
    (1,4,5,45,'T49',360,18.75,1.7,0.41,128,115,2156.25,'21/19/13','25/19/13'),
    (1,4,6,46,'M36 Jackson',590,7.5,1.7,0.35,160,240,1800,'114/25/25','76/25/25'),
    (1,4,6,47,'M18 Hellcat',570,7.5,1.7,0.35,160,240,1800,'13/13/13','76/31/44'),
    (1,4,7,48,'T25 AT',840,6.59,1.7,0.38,198,320,2108.8,'88/76/38','N/A'),
    (1,4,7,49,'T25/2',850,7.79,1.7,0.36,170,240,1869.6,'76/50/38','76/25/25'),
    (1,4,8,50,'T28',1150,6.59,2.1,0.38,248,400,2636,'254/50/50','N/A'),
    (1,4,8,51,'T28 Prototype',1150,5.94,2.3,0.39,248,400,2376,'203/50/50','203/127/101'),
    (1,4,9,52,'T95',1700,3.28,2.5,0.38,276,750,2460,'305/152/51','N/A'),
    (1,4,9,53,'T30',1650,2.86,2.9,0.39,276,750,2145,'102/76/51','279/127/102'),
    (1,4,10,54,'T110E3',2050,3.28,2.5,0.36,295,850,2788,'305/76/38','N/A'),
    (1,4,10,55,'T110E4',2000,2.86,2.9,0.37,295,850,2431,'254/76/38','203/152/152'),
    (1,5,2,56,'T57',80,6.38,5.5,0.8,42,170,1084.6,'29/25/25','N/A'),
    (1,5,3,57,'M7 Priest',140,3,5.5,0.82,53,410,1230,'101/38/12','N/A'),
    (1,5,4,58,'M37',180,4,5,0.8,53,410,1640,'12/12/12','N/A'),
    (1,5,5,59,'M41',230,2.4,7,0.82,78,700,1680,'12/12/12','N/A'),
    (1,5,6,60,'M44',280,2.73,6,0.8,78,700,1911,'12/12/12','N/A'),
    (1,5,7,61,'M12',350,1.6,7.5,0.72,90,1250,2000,'50/19/19','N/A'),
    (1,5,8,62,'M40/M43',400,1.23,7.5,0.86,241,1450,1783.5,'108/25/12','N/A'),
    (1,5,9,63,'M53/M55',450,1.33,7,0.84,241,1450,1928.5,'25/12/12','N/A'),
    (1,5,10,64,'T92',500,1.13,8,0.92,370,1800,2034.0,'25/25/12','N/A'),
    (2,1,2,65,'Cruiser Mk. I',170,24,1.9,0.4,64,45,1080,'10/10/10','14/14/14'),
    (2,1,2,66,'Cruiser Mk. III',150,24,1.9,0.4,64,45,1080,'14/14/14','14/12/14'),
    (2,1,3,67,'A10 Cruiser Mk. II',240,27.27,1.7,0.36,64,45,1227.15,'30/22/12','30/26/30'),
    (2,1,3,68,'A13 Mk. II Cr. Tank Mk. IV',230,27.27,1.7,0.36,64,45,1227.15,'30/14/14','30/12/14'),
    (2,1,4,69,'Valentine',340,13.33,2.5,0.41,110,75,999.75,'60/60/60','65/60/65'),
    (2,1,4,70,'Covenanter',340,28.57,1.7,0.36,78,50,1428.5,'40/30/25','39/19/25'),
    (2,1,5,71,'Crusader',450,27.27,2.3,0.41,110,75,2045.25,'32/27/27','51/23.5/28.5'),
    (2,2,1,72,'Vickers Medium Mk. I',140,13.33,2.3,0.52,57,70,933.1,'6/6/6','8/8/8'),
    (2,2,2,73,'Vickers Medium Mk. II',190,15.79,2.3,0.48,72,70,1105.3,'8/8/8','8/8/8'),
    (2,2,3,74,'Vickers Medium Mk. III',280,20,1.7,0.44,72,70,1400,'14/9/9','14/14/14'),
    (2,2,4,75,'Matilda',370,28.57,1.9,0.36,121,55,1571.35,'75/70/55','75/75/75'),
    (2,2,5,76,'Matilda Black Prince',610,26.09,2.3,0.41,110,75,1956.75,'75/70/55','76/63/57'),
    (2,2,6,77,'Cromwell',750,15.38,2.3,0.36,145,135,2076.3,'64/32/32','76/63.7/56.7'),
    (2,2,7,78,'Comet',1150,15.38,2.3,0.34,148,140,2153.2,'76/43/32','111/63/57'),
    (2,2,8,79,'Centurion Mk. I',1450,7.5,2.3,0.33,226,230,1725,'76/51/38','165/112/90'),
    (2,2,9,80,'Centurion Mk. 7/1',1720,10.53,1.9,0.32,226,230,2421.9,'121/51/35','165/112/112'),
    (2,2,10,81,'FV4202(105)',1950,6.45,2.1,0.32,210,480,3096,'121/51/32','196/196/35'),
    (2,3,5,82,'Excelsior',670,15.79,2.3,0.42,91,110,1736.9,'114/31/108','114/92/92'),
    (2,3,5,83,'Churchill I',700,12.5,2.3,0.36,145,135,1687.5,'177/63/50','88/88/76'),
    (2,3,6,84,'Churchill VII',880,13.95,2.3,0.36,148,140,1953,'152/95/50','152/95/95'),
    (2,3,6,85,'TOG II*',1400,12,2.3,0.36,171,150,1800,'76/76/50','114/76/53'),
    (2,3,7,86,'Black Prince',1450,12,2.3,0.34,171,150,1800,'152/95/25','152/95/95'),
    (2,3,8,87,'Caernarvon',1600,7.69,1.9,0.32,226,230,1768.7,'130/51/38','165/112/90'),
    (2,3,9,88,'Conqueror',1950,5.71,1.9,0.33,259,400,2284,'130/51/38','152/89/70'),
    (2,3,10,89,'FV215b',2500,6.9,1.7,0.32,259,400,2760,'152.4/101/76.2','254/152.4/101'),
    (2,4,2,90,'Universal Carrier 2-pdr',120,18.75,1.7,0.46,72,70,1312.5,'10/7/7','N/A'),
    (2,4,3,91,'Valentine AT',170,21.43,2,0.37,110,75,1607.25,'60/60/60','N/A'),
    (2,4,4,92,'Alecto',270,26.09,1.7,0.37,110,75,1956.75,'10/10/10','N/A'),
    (2,4,5,93,'AT 2',450,26.09,1.7,0.37,110,75,1956.75,'203/101/101','N/A'),
    (2,4,6,94,'Churchill Gun Carrier',650,7.06,2.9,0.34,214,250,1765,'88/63/50','N/A'),
    (2,4,6,95,'AT 8',800,13.95,1.7,0.32,171,150,2092.5,'203/101/101','N/A'),
    (2,4,7,96,'AT 7',1250,10.34,2.1,0.31,226,230,2378.2,'203/101/101','N/A'),
    (2,4,7,97,'AT 15A',850,13.95,1.9,0.32,171,150,2092.5,'228/152/101','N/A'),
    (2,4,8,98,'AT 15',1450,12,1.7,0.3,226,230,2760,'228/152/101','N/A'),
    (2,4,9,99,'Tortoise',2000,8.45,1.7,0.31,259,400,3380.0,'228/152/101','N/A'),
    (2,4,10,100,'FV215b (183)',2000,2,3.4,0.4,310,1150,2300,'152/50/76','254/101/76'),
    (2,5,2,101,'Loyd Gun Carriage',80,6.67,5,0.8,42,165,1100.55,'7/7/7','N/A'),
    (2,5,3,102,'Sexton I',140,5,5.5,0.76,92,180,900,'50.8/31.8/38.1','N/A'),
    (2,5,3,103,'Sexton II',140,5,5.5,0.76,92,180,900,'50/38/38','N/A'),
    (2,5,4,104,'Birch Gun',190,6.25,5,0.72,92,180,1125,'6/6/6','N/A'),
    (2,5,5,105,'Bishop',350,6.82,4.5,0.68,92,180,1227.6,'60/50/60','N/A'),
    (2,5,6,106,'FV304',280,6.98,4.5,0.66,92,180,1256.4,'25/25/25','N/A'),
    (2,5,7,107,'Crusader 5.5-in. SP',350,2.14,6.5,0.72,75,900,1926,'28/28/20','N/A'),
    (2,5,8,108,'FV207',430,1.82,6.5,0.72,258,750,1365,'50/50/50','N/A'),
    (2,5,9,109,'FV3805',450,1.94,6,0.7,258,750,1455,'50/50/50','N/A'),
    (2,5,10,110,'Conqueror Gun Carriage',530,1.03,8.5,1.1,117,2200,2266,'152/50/76','N/A'),
    (3,1,1,111,'Leichttraktor',130,26.09,1.7,0.46,40,36,939.24,'14/12/12','14/14/14'),
    (3,1,2,112,'Pz.Kpfw. I',160,158.24,1.6,0.53,30,11,1740.64,'13/13/13','14/13/13'),
    (3,1,2,113,'Pz.Kpfw. II',170,131.39,1.6,0.45,39,11,1445.29,'30/20/15','30/15/15'),
    (3,1,2,114,'Pz.Kpfw. 35 (t)',180,26.09,1.7,0.41,42,40,1043.6,'25/16/16','35/16/16'),
    (3,1,2,115,'Pz.Kpfw. 38H 735 (f)',160,26.25,1.71,0.4,41,40,1050,'40/40/40','40/40/40'),
    (3,1,3,116,'Pz.Kpfw. I Ausf. C',230,144,1.5,0.45,39,11,1584,'30/20/20','30/14/14'),
    (3,1,3,117,'Pz.Kpfw. II Ausf. G',240,23.23,2.3,0.5,95,30,696.9,'30/20/14','30/14/14'),
    (3,1,3,118,'Pz.Kpfw. III Ausf. A',240,24,2.3,0.48,60,70,1680,'14/14/14','30/30/30'),
    (3,1,3,119,'Pz.Kpfw. 38 (t)',250,26.09,1.7,0.37,62,60,1565.4,'25/15/15','25/15/15'),
    (3,1,3,120,'T-15',260,26.25,1.71,0.41,42,40,1050,'30/20/12','30/25/25'),
    (3,1,3,121,'Pz.Kpfw. II Ausf. J',260,138.46,1.4,0.57,23,11,1523.06,'80/50/50','80/50/50'),
    (3,1,4,122,'Pz.Kpfw. II Luchs',340,32.6,2.1,0.5,95,30,978,'30/20/20','50/30/30'),
    (3,1,4,123,'Pz.Kpfw. 38 (t) n.A.',340,24,2.3,0.4,67,70,1680,'50/25/10','50/25/10'),
    (3,1,5,124,'VK 16.02 Leopard',440,39.53,1.7,0.46,95,30,1185.9,'50/30/20','50/30/30'),
    (3,1,6,125,'VK 28.01',610,16.22,1.7,0.39,110,110,1784.2,'50/30/30','50/30/30'),
    (3,1,7,126,'Aufklarungspanzer Panther',950,15,2,0.34,157,135,2025,'85/50/40','50/30/30'),
    (3,2,3,127,'PzKpfw S35 739 (f)',260,27.63,1.14,0.39,55,52,1436.76,'36/35/25','56/46/46'),
    (3,2,4,128,'VK 20.01 (D)',350,24,2.3,0.4,67,70,1680,'50/40/30','57/30/30'),
    (3,2,4,129,'Pz.Kpfw. III',350,24,2.3,0.4,67,70,1680,'70/30/50','30/30/30'),
    (3,2,5,130,'Pz.Kpfw. III/IV',440,13.95,2.3,0.39,110,110,1534.5,'60/60/40','50/30/30'),
    (3,2,5,131,'Pz.Kpfw. IV',460,15,2.3,0.39,110,110,1650,'80/30/20','50/30/30'),
    (3,2,5,132,'T-25',610,14,2.5,0.41,116,110,1540,'50/45/20','60/60/35'),
    (3,2,5,133,'Pz.Kpfw. IV Hydraulic',550,13.95,2.3,0.39,110,110,1534.5,'50/30/20','50/30/30'),
    (3,2,6,134,'VK 30.01 (D)',770,13.64,2.3,0.35,150,135,1841.4,'60/40/50','80/45/45'),
    (3,2,6,135,'VK 30.01 (P)',710,13.04,2.3,0.35,150,135,1760.4,'75/60/40','100/82/82'),
    (3,2,6,136,'VK 30.02 (M)',840,14.29,2.3,0.35,150,135,1929.15,'60/40/40','100/45/45'),
    (3,2,6,137,'Pz.Kpfw. IV Schmalturm',730,13.04,2.3,0.35,150,135,1760.4,'80/30/20','120/60/60'),
    (3,2,6,138,'Pz.Kpfw. V/IV',870,14,1.71,0.39,110,110,1540,'85/40/40','50/30/30'),
    (3,2,6,139,'Pz.Kpfw. V-IV Alpha',870,14,1.71,0.39,110,110,1540,'85/40/40','50/30/30'),
    (3,2,7,140,'VK 30.02 (D)',1250,15,2.3,0.35,150,135,2025,'80/45/50','120/60/60'),
    (3,2,7,141,'Pz.Kpfw. V Panther',1270,12.5,2.3,0.32,198,135,1687.5,'85/40/40','120/60/60'),
    (3,2,7,142,'Panther/M10',1300,13.33,2.3,0.35,150,135,1799.55,'85/50/40','100/45/45'),
    (3,2,8,143,'Indien-Panzer',1300,8,2.9,0.34,212,240,1920,'90/90/45','90/90/45'),
    (3,2,8,144,'Panther II',1500,8.22,2.7,0.34,203,240,1972.8,'100/60/40','120/60/60'),
    (3,2,9,145,'Leopard prototyp A',1650,10,2.3,0.32,212,240,2400,'70/35/25','52/60/60'),
    (3,2,9,146,'E-50',1750,9.09,2.9,0.3,223,240,2181.6,'150/80/80','185/80/80'),
    (3,2,10,147,'Leopard 1',1950,6.67,1.9,0.3,53,480,3201.6,'70/35/25','52/60/60'),
    (3,2,10,148,'E-50 Ausf. M',2050,6.25,2.1,0.3,60,510,3187.5,'150/80/80','185/80/80'),
    (3,3,4,149,'Pz.Kpfw. B2 740 (f)',400,27.63,1.14,0.39,55,52,1436.76,'60/60/55','46/46/46'),
    (3,3,4,150,'Durchbruchswagen 2',420,25,2.3,0.4,67,70,1750,'50/50/50','50/50/50'),
    (3,3,5,151,'VK 30.01 (H)',660,12,2.5,0.34,157,135,1620,'50/50/50','80/60/60'),
    (3,3,6,152,'VK 36.01 (H)',950,13.04,2.3,0.34,157,135,1760.4,'100/60/60','100/80/80'),
    (3,3,7,153,'Pz.Kpfw. VI Tiger',1500,8.96,2.7,0.34,203,240,2150.4,'100/80/80','100/80/80'),
    (3,3,7,154,'Pz.Kpfw. VI Tiger (P)',1450,6.98,2.9,0.34,203,240,1675.2,'200/80/80','120/80/80'),
    (3,3,8,155,'Pz.Kpfw. Tiger II',1600,5.5,2.3,0.34,225,320,1760,'150/80/80','185/80/80'),
    (3,3,8,156,'VK 45.02 (P) Ausf. A',1570,7.79,2.9,0.34,203,240,1869.6,'120/80/80','185/80/80'),
    (3,3,8,157,'Lowe',1650,5,2.86,0.33,234,320,1600,'120/80/80','120/80/80'),
    (3,3,9,158,'E-75',1920,3.82,2.9,0.38,246,490,1871.8,'160/120/120','252/160/160'),
    (3,3,9,159,'VK 45.02 (P) Ausf. B',1950,3.82,2.9,0.38,246,490,1871.8,'170/100/100','252/160/160'),
    (3,3,10,160,'E-100',2700,4.2,2.9,0.38,246,490,2058,'200/130/150','250/150/150'),
    (3,3,10,161,'Maus',3000,4.03,2.9,0.38,246,490,1974.7,'200/185/160','240/210/210'),
    (3,4,2,162,'Panzerjager I',120,20.69,2.3,0.38,67,70,1448.3,'13/13/13','N/A'),
    (3,4,3,163,'Marder II',165,12,2.9,0.43,118,125,1500,'30/15/15','N/A'),
    (3,4,4,164,'Hetzer',270,15.38,1.7,0.37,110,110,1691.8,'60/20/8','N/A'),
    (3,4,5,165,'StuG III',350,13.33,1.7,0.33,150,135,1799.55,'80/30/30','N/A'),
    (3,4,6,166,'JagdPz IV',600,15.38,1.7,0.33,150,135,2076.3,'80/40/20','N/A'),
    (3,4,6,167,'Dicker Max',550,6.45,2.3,0.36,169,300,1935,'50/20/20','N/A'),
    (3,4,7,168,'Jagdpanther',850,9.84,2.3,0.32,203,240,2361.6,'80/50/40','N/A'),
    (3,4,7,169,'E-25',830,20,1.5,0.3,150,135,2700,'50/30/30','N/A'),
    (3,4,8,170,'Ferdinand',1200,5,2.3,0.35,246,490,2450,'200/80/80','N/A'),
    (3,4,8,171,'Jagdpanther II',1150,5.13,2.3,0.35,246,490,2513.7,'100/60/40','N/A'),
    (3,4,8,172,'8,8 cm PaK 43 Jagdtiger',1300,11.11,2,0.31,203,240,2666.4,'250/80/80','N/A'),
    (3,4,9,173,'Jagdtiger',1800,5.26,2.3,0.33,276,560,2945.6,'250/80/80','N/A'),
    (3,4,10,174,'JagdPz E-100',2200,2.33,2.7,0.35,299,1050,2446.5,'250/120/150','N/A'),
    (3,5,2,175,'G.Pz. Mk. VI (e)',90,2.22,6.5,0.84,53,410,910.2,'22/14/14','N/A'),
    (3,5,3,176,'Sturmpanzer I Bison',130,2.63,6.5,0.86,75,450,1183.5,'13/13/13','N/A'),
    (3,5,3,177,'Wespe',130,3,6,0.76,64,350,1050,'30/14/14','N/A'),
    (3,5,4,178,'Sturmpanzer II',190,3.45,6.5,0.84,75,450,1552.5,'30/15/14','N/A'),
    (3,5,4,179,'Pz.Sfl.IVb',200,3.87,5.5,0.72,64,350,1354.5,'20/14/14','20/14/14'),
    (3,5,5,180,'Grille',240,2.55,6,0.78,75,680,1734.0,'15/15/10','N/A'),
    (3,5,6,181,'Hummel',300,1.92,7,0.76,85,950,1824,'30/20/20','N/A'),
    (3,5,7,182,'G.W. Panther',360,1.74,7,0.7,88,1200,2088,'50/30/20','N/A'),
    (3,5,8,183,'G.W. Tiger (P)',440,1.16,7.5,0.9,303,1550,1798.0,'100/80/16','N/A'),
    (3,5,9,184,'G.W. Tiger',500,1.25,7.5,0.86,303,1550,1937.5,'30/16/16','N/A'),
    (3,5,10,185,'G.W. E 100',550,1.41,7,0.84,303,1550,2185.5,'80/50/40','N/A'),
    (4,1,1,186,'RenaultFT',115,28.57,1.5,0.45,46,27,771.39,'16/16/16','22/22/16'),
    (4,1,2,187,'D1',170,33.33,1.5,0.45,46,27,899.91,'30/30/30','40/40/35'),
    (4,1,2,188,'Hotchkiss H35',140,28.57,1.5,0.45,46,27,771.39,'40/40/40','40/40/40'),
    (4,1,3,189,'AMX 38',220,33.33,1.7,0.45,46,27,899.91,'60/40/40','60/40/40'),
    (4,1,4,190,'AMX 40',300,9.68,2.5,0.46,74,110,1064.8,'70/65/40','80/60/60'),
    (4,1,5,191,'ELC AMX',400,5,2.9,0.38,170,240,1200,'14/12/10','14/12/10'),
    (4,1,6,192,'AMX 12t',600,11.57,2.5,0.36,144,135,1561.95,'50/20/15','40/20/20'),
    (4,1,7,193,'AMX 13 75',900,13.85,2.3,0.36,144,135,1869.75,'40/20/15','40/20/20'),
    (4,1,8,194,'AMX 13 90',1100,6.47,3,0.38,170,240,1552.8,'40/20/15','40/20/20'),
    (4,2,3,195,'D2',230,23.08,2.3,0.39,66,55,1269.4,'40/40/40','46/46/46'),
    (4,2,9,196,'Lorraine 40 t',1550,6.71,3,0.36,232,300,2013,'40/40/25','45/30/20'),
    (4,2,10,197,'Bat.-Chatillon 25 t',1800,7.25,2.7,0.36,232,300,2175,'60/40/30','50/30/15'),
    (4,3,4,198,'B1',420,26.09,1.7,0.39,66,55,1434.95,'60/60/55','46/46/46'),
    (4,3,5,199,'BDR G1B',650,6.32,2.5,0.4,135,240,1516.8,'60/40/60','80/70/60'),
    (4,3,6,200,'ARL 44',820,6,3.4,0.38,212,240,1440,'120/50/50','110/30/30'),
    (4,3,7,201,'AMX M4(1945)',1200,6.98,2.9,0.36,212,240,1675.2,'90/40/40','100/70/40'),
    (4,3,8,202,'AMX 50 100',1400,5.66,3,0.36,232,300,1698,'90/35/30','90/30/30'),
    (4,3,8,203,'FCM 50 t',1500,8,2.3,0.36,212,240,1920,'120/80/80','120/80/60'),
    (4,3,9,204,'AMX 50 120',1750,5.33,3,0.35,257,400,2132,'100/80/60','100/80/60'),
    (4,3,10,205,'AMX 50B',2100,6.4,3,0.35,257,400,2560,'170/30/30','100/50/30'),
    (4,4,2,206,'RenaultFT AC',120,26.09,2,0.37,66,55,1434.95,'16/16/16','N/A'),
    (4,4,3,207,'Renault UE 57',150,21.43,2,0.39,110,75,1607.25,'9/6/6','N/A'),
    (4,4,3,208,'FCM36 PaK40',180,15.92,1.5,0.37,98,110,1751.2,'40/20/40','N/A'),
    (4,4,4,209,'Somua SAu 40',280,15.79,1.7,0.41,100,110,1736.9,'36/35/35','N/A'),
    (4,4,5,210,'S35 CA',330,11.11,2.3,0.36,171,150,1666.5,'56/35/35','N/A'),
    (4,4,6,211,'ARL V39',610,6.67,2.9,0.36,212,240,1600.8,'60/40/60','N/A'),
    (4,4,7,212,'AMX AC Mle. 1946',820,6,2.9,0.34,232,300,1800,'120/40/40','N/A'),
    (4,4,8,213,'AMX AC Mle. 1948',1000,5.77,2.9,0.33,257,400,2308,'150/40/40','N/A'),
    (4,4,9,214,'AMX 50 Foch',1550,6.45,2.3,0.33,257,400,2580,'180/50/50','N/A'),
    (4,4,10,215,'AMX 50 Foch (155)',1850,3,3,0.36,293,850,2550,'180/50/50','N/A'),
    (4,5,2,216,'RenaultBS',80,7.69,4.5,0.77,38,165,1268.85,'16/16/16','N/A'),
    (4,5,3,217,'Lorraine39 L AM',120,2.93,5.5,0.8,53,410,1201.3,'20/9/16','N/A'),
    (4,5,4,218,'AMX 105 AM mle. 47',170,3.75,5.5,0.74,60,445,1668.75,'30/20/15','N/A'),
    (4,5,5,219,'AMX 13 105 AM mle. 50',220,4.29,5,0.7,60,445,1909.05,'40/20/15','N/A'),
    (4,5,5,220,'105 leFH18B2',260,6.45,5.1,0.73,64,350,2257.5,'60/60/55','N/A'),
    (4,5,6,221,'AMX 13 F3 AM',270,1.96,7,0.78,90,950,1862,'40/20/15','N/A'),
    (4,5,7,222,'Lorraine155 50',340,2.01,6.5,0.76,90,950,1909.5,'40/30/20','N/A'),
    (4,5,8,223,'Lorraine155 51',390,1.82,6,0.74,95,1250,2275,'40/30/25','N/A'),
    (4,5,9,224,'Bat.-Chatillon 155 55',440,1.93,5.5,0.7,95,1250,2412.5,'101/76/50','N/A'),
    (4,5,10,225,'Bat.-Chatillon 155 58',490,2.45,5.5,0.68,95,1250,3062.5,'50/30/20','N/A'),
    (6,1,1,226,'MS-1',100,20.69,2.5,0.46,51,47,972.43,'18/16/16','18/16/16'),
    (6,1,2,227,'T-26',180,26.09,2.3,0.39,58,40,1043.6,'15/15/15','15/15/15'),
    (6,1,2,228,'BT-2',160,26.09,2.3,0.39,58,40,1043.6,'15/13/10','26/13/13'),
    (6,1,2,229,'T-60',170,22.22,2.5,0.39,58,40,888.8,'35/15/25','25/25/25'),
    (6,1,2,230,'Tetrarch',140,21,2.29,0.4,64,45,945,'16/14/10','16/14/10'),
    (6,1,3,231,'T-46',250,26.09,2.3,0.37,75,55,1434.95,'22/15/15','15/15/15'),
    (6,1,3,232,'BT-7',220,28.57,1.9,0.39,58,40,1142.8,'20/15/13','20/15/15'),
    (6,1,3,233,'LTP',230,25,2.1,0.46,51,47,1175,'30/20/30','30/30/30'),
    (6,1,3,234,'T-70',230,24,2.3,0.37,75,55,1320,'35/15/25','35/35/35'),
    (6,1,3,235,'T-127',250,26.25,2.06,0.43,51,47,1233.75,'40/30/30','40/30/25'),
    (6,1,3,236,'BT-SV',240,26.25,1.71,0.41,51,47,1233.75,'25/20/16','25/25/25'),
    (6,1,3,237,'M3 Light',220,24,1.9,0.46,48,40,960,'38/25/25','38/25/25'),
    (6,1,4,238,'T-50',360,28.57,2,0.34,75,55,1571.35,'37/37/37','37/37/15'),
    (6,1,4,239,'A-20',340,26.09,1.9,0.37,75,55,1434.95,'20/20/16','37/37/25'),
    (6,1,4,240,'T-80',350,28.57,1.7,0.34,75,55,1571.35,'35/25/25','35/35/35'),
    (6,1,4,241,'Valentine II',380,26.25,1.71,0.41,51,47,1233.75,'60/60/60','65/65/65'),
    (6,1,5,242,'T-50-2',560,20.69,2.3,0.34,112,85,1758.65,'37/37/37','45/40/40'),
    (6,1,6,243,'MT-25',570,22.22,2.3,0.34,112,85,1888.7,'45/40/40','45/45/45'),
    (6,2,4,244,'T-28',350,22.22,2.3,0.34,112,85,1888.7,'30/20/20','20/20/20'),
    (6,2,4,245,'A-32',360,13.13,2.29,0.53,66,105,1378.65,'35/30/16','35/35/35'),
    (6,2,5,246,'T-34',450,10.53,2.9,0.41,125,115,1210.95,'45/45/40','52/52/45'),
    (6,2,5,247,'Matilda IV',610,16.15,1.71,0.41,86,110,1776.5,'75/70/55','75/75/75'),
    (6,2,6,248,'A-43',730,18.18,2.3,0.41,125,115,2090.7,'60/45/40','75/75/75'),
    (6,2,6,249,'T-34-85',720,10,2.3,0.37,144,180,1800,'45/45/45','90/75/52'),
    (6,2,7,250,'A-44',1100,5.71,3.4,0.45,167,300,1713,'150/60/60','90/90/90'),
    (6,2,7,251,'KV-13',1120,10.17,2.3,0.37,144,180,1830.6,'120/85/60','100/90/90'),
    (6,2,7,252,'T-43',1100,11.11,2.3,0.37,144,180,1999.8,'75/75/75','90/90/90'),
    (6,2,8,253,'Object 416',1200,7.5,2.3,0.37,201,320,2400,'75/45/45','110/75/45'),
    (6,2,8,254,'T-44',1300,3.13,3.4,0.43,175,390,1220.7,'90/75/45','120/100/100'),
    (6,2,9,255,'T-54',1650,7.32,2.9,0.39,219,320,2342.4,'120/80/45','200/160/65'),
    (6,2,10,256,'Object 140',1900,9.09,2.1,0.35,50,420,3817.8,'100/80/55','240/183/65'),
    (6,2,10,257,'T-62A',1950,9.09,2,0.34,50,420,3817.8,'102/75/45','240/161/65'),
    (6,3,5,258,'KV-1',640,12,2.9,0.42,120,160,1920,'75/75/70','110/110/110'),
    (6,3,5,259,'Churchill III',700,26.25,2.29,0.43,110,75,1968.75,'176/76/50','88/88/76'),
    (6,3,5,260,'KV-220',690,14,2.29,0.46,99,110,1540,'100/100/80','90/75/75'),
    (6,3,5,261,'KV-220 Beta-Test',690,14,2.29,0.46,99,110,1540,'100/100/80','90/75/75'),
    (6,3,5,262,'KV',660,13.95,2.3,0.46,86,110,1534.5,'75/75/70','90/75/70'),
    (6,3,6,263,'KV-2',860,6.19,3.4,0.45,167,300,1857.0,'75/75/70','75/75/70'),
    (6,3,6,264,'T-150',880,5.88,3.4,0.45,167,300,1764,'90/90/75','100/100/75'),
    (6,3,6,265,'KV-1S',810,3.75,3.4,0.46,175,390,1462.5,'75/60/60','100/90/90'),
    (6,3,7,266,'KV-3',1400,4.88,3.4,0.46,175,390,1903.2,'120/90/80','130/115/115'),
    (6,3,7,267,'IS',1230,4.88,3.4,0.46,175,390,1903.2,'120/90/60','100/90/90'),
    (6,3,8,268,'KV-4',1650,5.41,3.4,0.38,227,320,1731.2,'180/150/90','180/150/140'),
    (6,3,8,269,'IS-3',1500,4.51,3.4,0.4,225,390,1758.9,'110/90/60','220/220/220'),
    (6,3,8,270,'IS-6',1550,5.13,3.4,0.46,175,390,2000.7,'100/100/60','150/150/100'),
    (6,3,8,271,'KV-5',1780,7,2.86,0.43,167,300,2100,'180/150/140','180/150/140'),
    (6,3,9,272,'ST-I',1900,4.51,3.4,0.38,258,440,1984.4,'140/140/100','250/160/160'),
    (6,3,9,273,'IS-8',1800,4.88,2.9,0.38,258,440,2147.2,'120/80/60','201/129/50'),
    (6,3,10,274,'IS-4',2500,5,2.9,0.38,258,440,2200,'140/160/100','250/200/170'),
    (6,3,10,275,'IS-7',2150,4.38,3.4,0.4,250,490,2146.2,'150/150/100','240/185/94'),
    (6,4,2,276,'AT-1',125,19.35,2.3,0.43,75,75,1451.25,'16/15/10','N/A'),
    (6,4,3,277,'SU-76',155,18.75,2.3,0.34,112,85,1593.75,'25/15/15','N/A'),
    (6,4,4,278,'SU-85B',260,13.33,2.3,0.38,130,160,2132.8,'25/20/15','N/A'),
    (6,4,5,279,'SU-85',350,10,2.3,0.34,144,180,1800,'45/45/40','N/A'),
    (6,4,5,280,'SU-85I',380,13.33,2.3,0.42,119,160,2132.8,'60/30/50','N/A'),
    (6,4,6,281,'SU-100',580,4.69,2.9,0.43,175,390,1829.1,'75/45/45','N/A'),
    (6,4,6,282,'SU-100Y',700,3.75,2.9,0.38,196,440,1650,'60/60/60','N/A'),
    (6,4,7,283,'SU-100M1',830,8.7,1.7,0.33,175,250,2175,'90/75/45','N/A'),
    (6,4,7,284,'SU-152',870,8.11,2.9,0.41,175,390,3162.9,'75/60/60','N/A'),
    (6,4,7,285,'SU-122-44',840,7.5,2.9,0.41,175,390,2925,'90/75/45','N/A'),
    (6,4,8,286,'SU-101',990,8.45,2.1,0.36,219,320,2704,'120/75/40','N/A'),
    (6,4,8,287,'ISU-152',1010,3.41,3.4,0.41,286,750,2557.5,'90/75/60','N/A'),
    (6,4,9,288,'SU-122-54',1530,6,2.5,0.36,258,440,2640,'100/80/45','N/A'),
    (6,4,9,289,'Object 704',1600,3.51,2.9,0.39,286,750,2632.5,'120/90/60','N/A'),
    (6,4,10,290,'Object 263',1900,5.45,2.5,0.32,290,550,2997.5,'250/80/50','N/A'),
    (6,4,10,291,'Object 268',1950,3.53,2.7,0.33,303,850,3000.5,'187/100/50','N/A'),
    (6,5,2,292,'SU-18',70,7.5,4.5,0.76,42,164,1230,'18/16/16','N/A'),
    (6,5,3,293,'SU-26',110,9.09,4.5,0.71,80,110,999.9,'15/15/15','10/10/10'),
    (6,5,4,294,'SU-5',160,9.09,4.5,0.71,80,110,999.9,'15/15/15','N/A'),
    (6,5,5,295,'SU-122A',210,1.9,7,0.86,88,910,1729,'25/15/15','N/A'),
    (6,5,6,296,'SU-8',270,2.18,7,0.84,88,910,1983.8,'30/20/20','N/A'),
    (6,5,7,297,'S-51',350,1.06,8,0.9,260,1450,1537,'60/60/60','N/A'),
    (6,5,7,298,'SU-14-1',350,1.08,8,0.9,260,1450,1566,'20/20/10','N/A'),
    (6,5,8,299,'SU-14-2',410,1.3,7.5,0.87,260,1450,1885,'50/30/20','N/A'),
    (6,5,9,300,'212A',460,1.38,7.5,0.84,260,1450,2001.0,'60/45/45','N/A'),
    (6,5,10,301,'Object 261',510,1.71,6.5,0.66,360,1100,1881,'75/50/30','N/A'),
    (5,1,1,302,'Renault NC-31',110,26.09,2,0.46,40,36,939.24,'16/16/16','22/22/16'),
    (5,1,2,303,'Vickers Mk. E Type B',170,26.09,2.3,0.46,51,47,1226.23,'12/12/12','30/15/15'),
    (5,1,3,304,'Type 2597 Chi-Ha',240,20,2.3,0.44,81,70,1400,'25/25/20','25/25/25'),
    (5,1,4,305,'M5A1 Stuart',340,24,2.3,0.42,81,70,1680,'28/28/25','44/31/31'),
    (5,1,6,306,'59-16',580,21.43,2.3,0.34,112,85,1821.55,'30/20/20','45/30/20'),
    (5,1,7,307,'WZ-131',880,6.45,2.9,0.39,181,250,1612.5,'35/20/20','45/35/20'),
    (5,1,7,308,'Type 62',880,10.53,2.3,0.37,145,180,1895.4,'35/20/20','45/35/20'),
    (5,1,8,309,'WZ-132',1050,7.06,2.3,0.36,189,250,1765,'50/25/20','55/35/20'),
    (5,2,5,310,'Type T-34',450,26.09,2.3,0.34,112,85,2217.65,'45/45/40','52/52/45'),
    (5,2,6,311,'Type 58',750,12,2.3,0.38,128,160,1920,'45/45/40','90/75/52'),
    (5,2,7,312,'T-34-1',1050,6.45,3.5,0.42,175,250,1612.5,'60/45/40','170/120/60'),
    (5,2,8,313,'T-34-2',1300,7.06,2.9,0.39,181,250,1765,'70/45/45','180/120/60'),
    (5,2,8,314,'T-34-3',1300,4.17,3.4,0.46,175,390,1626.3,'90/50/50','190/120/60'),
    (5,2,8,315,'Type 59',1300,6.9,2.9,0.39,181,250,1725,'100/80/45','200/130/60'),
    (5,2,8,316,'Type 59 G',1300,6.9,2.9,0.39,181,250,1725,'100/80/45','200/130/60'),
    (5,2,9,317,'WZ-120',1650,5,3.4,0.38,249,440,2200,'100/80/45','220/160/65'),
    (5,2,10,318,'121',1950,6.25,2.7,0.35,258,440,2750,'120/80/60','240/130/60'),
    (5,3,7,319,'IS-2',1280,4.88,3.4,0.46,175,390,1903.2,'90/90/60','100/90/90'),
    (5,3,8,320,'110',1450,6,2.9,0.38,215,320,1920,'120/90/60','201/148/50'),
    (5,3,8,321,'WZ-111',1550,4.8,3.4,0.46,175,390,1872,'120/80/60','230/120/60'),
    (5,3,8,322,'112',1500,4.55,3.4,0.46,175,390,1774.5,'120/80/60','240/130/60'),
    (5,3,9,323,'WZ-111 model 1-4',1850,4.29,2.9,0.4,244,490,2102.1,'120/80/60','230/120/60'),
    (5,3,10,324,'113',2300,5.5,2.7,0.36,249,440,2420,'120/90/70','240/160/80');
	
select *
from Tanks
where AvgPenetration > 200


