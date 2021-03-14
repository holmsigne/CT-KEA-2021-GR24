#SCRIPT AF Peter Seidenfaden, Teis Henriksen, Patricia Tworek, Mikie Dahlgaard & Signe Holm, KEA BEIT DA2. 15/3/2021. SEMESTER 2 CASE 1. KEA BEIT DA2.
#Dette script er i DML, der fremviser et eksempel på dataindsættelse i tabellerne skabt i DDL. 

USE coderstrust; #det skal igen understreges hvilken database der benyttes. 

#insert into tillader at udvælge en række værdier, der derefter vil blive tilføjet til den tomme tabel. 
#tabellen users besidder 3 attributter, hvilket medfører krav om 3 værdier indsat. 
INSERT INTO users VALUES
(1, 'Oskar', 'Jensen'); #værdierne er et eksempel på en studerende. 
 
#tabellen question besidder 5 attributter, hvilket medfører krav om 5 værdier indsat. 
INSERT INTO question VALUES 
(1, (SELECT User_ID FROM users), 'Are you very active on social media?', 'SoMe', 'No'), 
(2, (SELECT User_ID FROM users), 'Do you have a favorite artist when it comes to visual art?', 'Graphical Design', 'No'),
(3, (SELECT User_ID FROM users), 'Do you like to take online intelligence tests?', 'Programming', 'Yes'),
(4, (SELECT User_ID FROM users), 'Do you believe that Social Media is more effective than traditoinal marketing?', 'SoMe', 'No'),
(5, (SELECT User_ID FROM users), 'Do you enjoy making visual presentations for school or business?', 'Graphical Design', 'Yes'),
(6, (SELECT User_ID FROM users), 'Are you interested in coding and learning to either understand or code yourself?', 'Programming', 'Yes'),
(7, (SELECT User_ID FROM users), 'Do you find that Social Media influences your buying decisions?', 'SoMe', 'No'),
(8, (SELECT User_ID FROM users), 'Have you tried editing video on your mobie device or PC?', 'Graphical Design', 'Yes'),
(9, (SELECT User_ID FROM users), 'Do you find numbers and logic is preferred over philosophical questions?', 'Programming', 'Yes'),
(10, (SELECT User_ID FROM users), 'Do you care about who likes and comments on your posts?', 'SoMe', 'No'),
(11, (SELECT User_ID FROM users), 'Do you appreciate design in relation to products?', 'Graphical Design', 'Yes'),
(12, (SELECT User_ID FROM users), 'Have you tried building a website with a CMS like wordpress or Wix?', 'Programming', 'Yes');
#(SELECT user_ID FROM users) benyttes til at referere til user_ID'et fra users tabellen. 

#En alternativ metode til indsættelse af data i kolonner ville være update kommandoen. 
UPDATE question
SET
	Question_Answer = 'YES' #kommandoen opdaterer besvarelserne til yes...
WHERE 
	Question_Number = 3 #... ved det spørgsmål den studerende har svaret yes... 
OR Question_Number = 5 
OR Question_Number = 6 
OR Question_Number = 8 
OR Question_Number = 9 
OR Question_Number = 11 
OR Question_Number = 12;

UPDATE question #... hvilket ligeledes ses ved besvarelsen nej. 
SET 
	Question_Answer = 'NO'
WHERE 
	Question_Number = 1 
OR Question_Number = 2 
OR Question_Number = 4 
OR Question_Number = 7 
OR Question_Number = 10; #hertil er det muligt at ændre på antallet af ja'er og nej'er. 

#tabellen result besidder 7 attributter, hvilket medfører krav om 7 værdier indsat. 
INSERT INTO result VALUES
(1, NULL, (SELECT User_ID FROM users), 43, 57, 0, '2021-03-12'); 
#den procentvise inddeling er blot indtastet og ikke udregnet. 

#select kommandoen udvælger ønskede kolonner. 
SELECT CONCAT(First_Name, ' ',  Last_Name) AS Full_Name, GraphicalDesign, Programming, SocialMedia, Result_Date #concat gør det muligt at samle to kolonner i en.
FROM users #eftersom kolonnerne tages fra flere forskellige tabeller skal join kommandoen benyttes. 
JOIN question ON users.User_ID = question.Question_Number #join kommandoen tager udgangspunkt i user_ID, der er fælles værdi for alle 3 tabeller. 
JOIN result ON users.User_ID = result.Result_ID;

