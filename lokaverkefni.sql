CREATE DATABASE lokaverkefni

CREATE TABLE utgefandi
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55) NOT NULL,
	land VARCHAR(55),
	arStofnad CHAR(4)
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
	lengd TIME, --"HH-MM-SS"
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
	("Kristbergur Útgáfa", "Ísland","1978"),
	("SH Records", "Bandaríkin", "2001"),
	("Fueled by Ramen LLC.","Bandaríkin", "1996");
	
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
	("Popp"),
	("Rokk"),
	("Jazz"),
	("Blues"),
	("Reggae"),
	("Hip Hop"),
	("Rapp");
INSERT INTO
	flytjandi(nafn,faedingardagur,danardagur,flokkur_ID)
VALUES
	("Kollye East", 2000-08-09, 2017-07-22, 1),
	("Floof", 1998-03-29,2004-06-10,2),
	("Kristberg ´Poof´ Pálsson & Maggi",2005-05-05,NULL,3),
	("Karmin", 2012-01-10,NULL,4),
	("Kvennakórinn Sóley",1976-10-22,1995-02-17,5);
	
INSERT INTO
	diskur(nafn,utgafudagur,utgefandi_ID)
VALUES
	("Pen",2017-05-03,1),
	("Blurryface",2015-05-17,2),
	("Rain",2016-09-26,3),
	("Vessel",2013-01-08,3),
	("Regional at Best",2011-07-08,2),
	("Drought",2013-12-05,1),
	("Gravity",2015-02-17,3);

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	










