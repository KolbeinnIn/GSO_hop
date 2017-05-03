CREATE DATABASE kennitala_lokaverkefni

CREATE TABLE utgefandi
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55) NOT NULL,
	land VARCHAR(55),
	arStofnad CHAR(4),
	stofnandi VARCHAR(55)
);
CREATE TABLE flokkur(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55) NOT NULL
);
CREATE TABLE tegund(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn NOT NULL
);
CREATE TABLE flytjandi(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55) NOT NULL,
	faedingardagur DATE,
	danardagur DATE,
	flokkur_ID INT,
	FOREIGN KEY flokkur_ID REFERENCES flokkur(ID)
);
CREATE TABLE diskur(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55),
	utgafudagur DATE,
	utgefandi_ID INT,
	FOREIGN KEY utgefandi_ID REFERENCES utgefandi(ID)
);
CREATE TABLE lag(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55) NOT NULL,
	hofundur VARCHAR(55) NOT NULL,
	lengd TIME, --"HH:MM:SS"
	texti VARCHAR(n),
	tegund_ID INT,
	flytjandi_ID INT,
	diskur_ID INT
	FOREIGN KEY flytjandi_ID REFERENCES flytjandi(ID),
	FOREIGN KEY tegund_ID REFERENCES tegund(ID),
	FOREIGN KEY diskur_ID REFERENCES diskur(ID)
);
	
INSERT INTO
	utgefandi(nafn,land,arStofnad)
VALUES
	("Kristbergur Útgáfa", "Ísland","1978","Kristberg Rúnar Pálsson"),
	("SH Records", "Bandaríkin", "2001","Sherlock Holmes"),
	("Fueled by Ramen LLC.","Bandaríkin", "1996","Vinnie Fiorello");
	
INSERT INTO
	flokkur(nafn)
VALUES
	("Sóló"),
	("Hljómsveit"),
	("Dúó"),
	("Kvartett"),
	("Kór");
	
INSERT INTO
	tegund(nafn)
VALUES
	1("Popp"),
	2("Rokk"),
	3("Electronic"),
	4("Indie"),
	5("Gospel"),
	6("Hip Hop"),
	7("Rapp");
INSERT INTO
	flytjandi(nafn,faedingardagur,danardagur,flokkur_ID)
VALUES
	1("Kollye East", 2000-08-09, 2017-07-07, 1),
	2("Floof", 1998-03-29,2004-06-10,2),
	3("Kristberg ´Poof´ Pálsson & Maggi",2005-05-05,NULL,3),
	4("Karmin", 2012-01-10,NULL,4),
	5("Kvennakórinn Sóley",1976-10-22,1995-02-17,5),
	6("TwentyØnePiløts",2009-12-01,NULL,3);
	
INSERT INTO
	diskur(nafn,utgafudagur,utgefandi_ID)
VALUES
	1("Pen",2017-05-03,1),
	2("Blurryface",2015-05-17,2),
	3("Rain",2016-09-26,3),
	4("Vessel",2013-01-08,3),
	5("Regional at Best",2011-07-08,2),
	6("Drought",2013-12-05,1),
	7("Gravity",2015-02-17,3);

INSERT INTO
	lag(nafn,hofundur,lengd,texti,tegund_ID,flytjandi_ID,diskur_ID)
VALUES
   --("LAG", 00:00:00, "Texti", tegund,flytjandi,diskur)
	("Guns for Hands",00:04:36,"TEXTI",1,6,4),
	("Holding On to You",00:04:25,"TEXTI",4,6,5),
	("Car Radio",00:04:27,"TEXTI",1,6,5),
	("Forest",00:04:26,"TEXTI",1,6,5),
	("Kitchen Sink",00:05:34,"TEXTI",1,6,5),
	("Semi-Automatic",00:04:14,"TEXTI",1,6,4),
	("Trees",00:04:27,"TEXTI",3,6,4),
	("HeavyDirtySoul",00:03:55,"TEXTI",2,1,1),
	("Ride",00:03:35,"TEXTI",2,2,2),
	("Lane Boy",00:04,13,"TEXTI",2,3,7),
	("Tear in My Heart",00:03:08,"TEXTI",1,4,6)
	("The Judge",00:04:58,"TEXTI",6,5,3),
	("Goner",00:03:57,"TEXTI",7,4,1),
	("Polarize",00:03:47,"TEXTI",3,2,1),
	("Message Man",00:04:00,"TEXTI",7,1,2),
	("Oh Happy Day",00:04:59,"TEXTI",5,5,4),
	("I Wanna Get Better",00:03:24,"TEXTI",2,2,7),
	("We Don't Believe What's on TV",00:02:58,"TEXTI",4,4,2),
	("Not Today",00:03:59,"TEXTI",7,2,6),
	("Rollercoaster",00:03:08,"TEXTI",3,3,6);

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	










