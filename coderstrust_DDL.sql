#SCRIPT AF Peter Seidenfaden, Teis Henriksen, Patricia Tworek, Mikie Dahlgaard & Signe Holm. 15/3/2021. SEMESTER 2 CASE 1. KEA BEIT DA2.
#Dette script er i DDL, der fremviser databasen og dertilhørende tabeller og kolonner. 

CREATE DATABASE coderstrust; #her kreeres databasen.
USE coderstrust; #når databasen er kreeret skal man specificere at det er denne database man vil benytte.

#her kreeres en tabel over brugeren med tilhørende attributter og constraints. 
CREATE TABLE users ( 
	User_ID INT PRIMARY KEY, #user_ID'et defineres som en primærnøgle samt med datatypen integer.
    First_Name VARCHAR(50), #first og last name defineres med datatypen varchar, der tillader 50 tegn. 
    Last_Name VARCHAR(50)
);

CREATE TABLE question (
	Question_Number INT PRIMARY KEY, 
    User_ID INT, 
    FOREIGN KEY (User_ID) #user_ID'et benyttes i denne tabel som foreign key...
		REFERENCES users (User_ID), #... hvilket medfører at der skal refereres til 'parent' tabellen, users. 
	Question VARCHAR(100),
    Question_Type VARCHAR(50),
    Question_Answer VARCHAR(3)
);

CREATE TABLE result (
	Result_ID INT PRIMARY KEY,
    Question_Number INT,
    FOREIGN KEY (Question_Number)
		REFERENCES question (Question_Number),
	User_ID INT,
    FOREIGN KEY (User_ID) 
		REFERENCES users (User_ID),
	GraphicalDesign INT,
    Programming INT, 
    SocialMedia int,
    Result_Date DATE #datatypen date medfører at kun datoer i bestemt syntakst kan indsættes - XXXX-XX-XX.
);