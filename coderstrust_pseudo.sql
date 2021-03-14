#SCRIPT AF Peter Seidenfaden, Teis Henriksen, Patricia Tworek, Mikie Dahlgaard & Signe Holm. 15/3/2021. SEMESTER 2 CASE 1. KEA BEIT DA2.
#I dette script ses et psuedokode forsøg på hvordan beregningen af de procentvise inddelinger i kategorierne kan foregå.

#USE coderstrust;

#Eftersom spørgsmålene besvares med yes/no skal antallet af yes for hver kategori udregnes.
#Ved at dividere antallet af yes fra hver kategori med antallet af yes i alt findes den procentvise inddeling. 

#SELECT CONCAT(First_Name, ' ', Last_Name), COUNT('Yes' WHERE question_type = 'GraphicalDesign')/COUNT('Yes') AS percentage_GraphicalDesign
#FROM users
#JOIN users.User_ID = question.Question_Number
#WHERE user_ID = 1

#SELECT CONCAT(First_Name, ' ', Last_Name), COUNT('Yes' WHERE question_type = 'Programming')/COUNT('Yes') AS percentage_Programming
#FROM users
#JOIN users.User_ID = question.Question_Number
#WHERE user_ID = 1;

#SELECT CONCAT(First_Name, ' ', Last_Name), COUNT('Yes' WHERE question_type = 'SoMe')/COUNT('Yes') AS percentage_SoMe
#FROM users
#JOIN users.User_ID = question.Question_Number
#user_ID = 1