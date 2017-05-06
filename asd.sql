CREATE DATABASE kennitala_lokaverkefni

CREATE TABLE utgefandi(
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
	nafn VARCHAR(55) NOT NULL
);
CREATE TABLE hofundur(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nafn VARCHAR(55) NOT NULL
);
CREATE TABLE flytjandi(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55) NOT NULL,
	faedingardagur DATE,
	danardagur DATE,
	flokkur_ID INT,
	FOREIGN KEY (flokkur_ID) REFERENCES flokkur(ID)
);
CREATE TABLE diskur(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55),
	utgafudagur DATE,
	utgefandi_ID INT,
	FOREIGN KEY (utgefandi_ID) REFERENCES utgefandi(ID)
);
CREATE TABLE lag(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55) NOT NULL,
	hofundur VARCHAR(55) NOT NULL,
	lengd TIME,
	texti LONGTEXT,
	tegund_ID INT,
	flytjandi_ID INT,
	diskur_ID INT,
	hofundur_ID INT,
	FOREIGN KEY (flytjandi_ID) REFERENCES flytjandi(ID),
	FOREIGN KEY (tegund_ID) REFERENCES tegund(ID),
	FOREIGN KEY (diskur_ID) REFERENCES diskur(ID),
	FOREIGN KEY (hofundur_ID) REFERENCES hofundur(ID)
);
	
INSERT INTO
	utgefandi(nafn,land,arStofnad,stofnandi)
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
	("Popp"),
	("Rokk"),
	("Electronic"),
	("Indie"),
	("Gospel"),
	("Hip Hop"),
	("Rapp");
	
INSERT INTO
	hofundur(nafn)
VALUES
	("Tyler Joseph"),
	("Joshua Dun"),
	("Jack Antonoff"),
	("Philip Doddridge"),
	("Le Che De Ann Monique Martin"),
	("Thomas Schleiter");
	
	
INSERT INTO
	flytjandi(nafn,faedingardagur,danardagur,flokkur_ID)
VALUES
	("Kanye West", "2000-08-09", "2017-07-07", 1),
	("Against the Current", "2011-03-29",NULL,2),
	("Bleachers","2005-05-05",NULL,3),
	("Karmin", "2012-01-10",NULL,4),
	("Edwin Hawking Singers","1976-10-22","1995-02-17",5),
	("Twenty Øne Piløts","2009-12-01",NULL,3);
	
INSERT INTO
	diskur(nafn,utgafudagur,utgefandi_ID)
VALUES
	("Pen","2017-05-03",1),
	("Blurryface","2015-05-17",2),
	("Rain","2016-09-26",3),
	("Vessel","2013-01-08",3),
	("Regional at Best","2011-07-08",2),
	("Drought","2013-12-05",1),
	("Gravity","2015-02-17",3);


--Hluti B

--a
SELECT lag.nafn as "lag"
FROM lag
JOIN diskur
WHERE diskur.nafn = "Regional at Best";

--b
SELECT lag.nafn as "lag"
FROM lag
JOIN flytjandi
WHERE flytjandi.nafn = "Kanye West";

--c
SELECT lag.nafn as "lag"
FROM lag
JOIN tegund
WHERE tegund.nafn = "Electronic";

--d
SELECT lag,lengd
FROM lag
WHERE lengd > "00:05:00";

--e
SELECT diskur,utgafudagur
FROM diskur
WHERE utgafudagur > "2010";

--f
SELECT diskur

















