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
	("Kristbergur Útgáfa", "Ísland","1996"),
	("SH Records", "Bandaríkin", "2001"),
	("Richardson Ltd.","Bandaríkin", "1976");
	
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
	("
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	










