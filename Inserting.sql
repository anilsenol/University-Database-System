set FOREIGN_KEY_CHECKS = 0;

INSERT INTO COURSE VALUES
 (6,'Introduction to Programming','COMP1111',3,''),
 (5,'Human Computer Interaction','COMP2502',3,''),
 (6,'Object Oriented Programming','COMP1112',3,'COMP1111'),
 (7,'Database Management Systems','COMP2222',4,'COMP1112'),
 (4,'Introduction to Math','MATH1111',6,''),
 (4,'Mathematic','MATH1112',3,'MATH1111'),
 (5,'Probability','MATH2201',3,'MATH1112'),
 (5,'Linear Algebra','MATH2104',3,'MATH1112'),
 (3,'Introduction to English','ENGL1101',4,''),
 (3,'Introduction to Academic English','ENGL1102',4,'ENGL1101');
 
 INSERT INTO BUILDCLASS VALUES
 ('DMF',001,25),
 ('DMF',002,25),
 ('DMF',003,25),
 ('DMF',004,25),
 ('LMF',001,18),
 ('LMF',002,18),
 ('LMF',003,16),
 ('D/K',001,25),
 ('D/K',002,25),
 ('D/K',003,25),
 ('D/K',011,25),
 ('D/K',012,25),
 ('DMF',013,25),
 ('auditorium',000,102);
 
 INSERT INTO TIMESLOT VALUES
 ('Monday','3'),
 ('Tuesday','4'),
 ('Wednesday','4'),
 ('Thursday','3'),
 ('Friday','5');
 
 INSERT INTO DEPARTMENT VALUES
 ('Software Engineering',4500,001,'LMF'),
 ('Architecture',6000,004,'D/K'),
 ('Psychology',2000,006,'DMF'),
 ('English Literature',1000,008,'D/K');
 
 INSERT INTO INSTRUCTOR VALUES
 (101,'Anıl Şenol','Professor',5000,1000,'Software Engineering'),
 (102,'Selen Erk','Professor',4500,800,'Software Engineering'),
 (103,'Ali Ağaoğlu','Assistant',1000,0,'Software Engineering'),
 (104,'Ali Koç','Assistant',1200,100,'Software Engineering'),
 (105,'Afra Çetinkaya','Professor',4000,500,'Architecture'),
 (106,'Necip Uysal','Teacher',3000,600,'Software Engineering'),
 (107,'Cemre Akgedik','Teacher',2500,400,'Architecture'),
 (108,'Tuana Yalınkılıç','Professor',2000,300,'Psychology'),
 (109,'Arda Güler','Assistant',1400,0,'Software Engineering'),
 (111,'Erling Halaand','Professor',3900,200,'English Literature'),
 (112,'Deniz Karlı','Teacher',2500,0,'Software Engineering'),
 (113,'Ferdi Kadıoğlu','Teacher',2500,300,'Software Engineering'),
 (114,'Altay Bayındır','Teacher',2800,0,'Software Engineering'),
 (115,'Mert Günok','Assistant',1000,0,'Psychology'),
 (116,'Vincent Aboubakar','Teacher','2300',0,'English Literature'),
 (117,'Valentin Rosier','Teacher',2500,200,'English Literature'),
 (118,'Salih Uçan','Teacher',2000,400,'Software Engineering');
 
 INSERT INTO CURRICULA VALUES
 ('G0','Graduate Student','Software Engineering'),
 ('G1','Graduate Student','Software Engineering'),
 ('U0','Undergraduate Student','Software Engineering'),
 ('G2','Graduate Student','English Literature'),
 ('G3','Graduate Student','Software Engineering'),
 ('U1','Undergraduate Student','Psychology'),
 ('U2','Undergraduate Student','Psychology'),
 ('U3','Undergraduate Student','Software Engineering'),
 ('U4','Undergraduate Student','Software Engineering'),
 ('G4','Graduate Student','Architecture');
 
 INSERT INTO CURRICULACOURSES VALUES
 ('COMP1111','Software Engineering','G0'),
 ('MATH2201','Software Engineering','G0'),
 ('ENGL1101','Software Engineering','G0'),
 ('COMP1112','Software Engineering','G1'),
 ('MATH2201','Software Engineering','G1'),
 ('ENGL1102','Software Engineering','G1'),
 ('ENG1102','English Literature','G2'),
 ('MATH2201','Software Engineering','G3'),
 ('COMP1112','Software Engineering','G3'),
 ('COMP2222','Software Engineering','G3'),
 ('MATH1111','Architecture','G4'),
 ('ENGL1111','Architecture','G4'),
 ('COMP2502','Software Engineering','U0'),
 ('COMP2222','Software Engineering','U0'),
 ('MATH2201','Software Engineering','U0'),
 ('ENGL1111','Psychology','U1'),
 ('MATH2201','Software Engineering','U4'),
 ('COMP2222','Software Engineering','U4'),
 ('COMP2502','Software Engineering','U4'),
 ('MATH2104','Software Engineering','U4');
 
 INSERT INTO STUDENT VALUES
 (001,'Graduate Student',101,'G0','Software Engineering',1111,'Ali Ak'),
 (002,'Graduate Student',102,'G1','Software Engineering',1112,'Ahmet Akin'),
 (003,'Graduate Student',111,'G2','English Literature',1113,'Seda Sayan'),
 (004,'Graduate Student',102,'G3','Software Engineering',1114,'Orhan Gazi'),
 (005,'Graduate Student',105,'G4','Architecture',1115,'Erim Tan Savaşeri'),
 (006,'Undergraduate Student',106,'U0','Software Engineering',1116,'Furkan Likoğlu'),
 (007,'Undergraduate Student',108,'U1','Psychology',1117,'Metehan Algül'),
 (008,'Undergraduate Student',108,'U2','Psychology',1118,'Melisa Gülay'),
 (009,'Undergraduate Student',102,'U3','Software Engineering',1119,'Arzu Şen'),
 (010,'Undergraduate Student',101,'U4','Software Engineering',1120,'Zeynep Taş');
 
 INSERT INTO SECTIONN VALUES
 ('spring','COMP1111','2022',1,50,101),
 ('spring','COMP1111','2022',2,50,102),
 ('fall','COMP1111','2023',3,50,102),
 ('spring','COMP1112','2022',4,50,101),
 ('spring','COMP2502','2022',5,50,102),
 ('spring','COMP2502','2023',6,50,106),
 ('spring','COMP2222','2023',7,50,106),
 ('spring','COMP2222','2023',8,50,101),
 ('fall','COMP2502','2022',9,50,106),
 ('spring','MATH2201','2022',10,50,112),
 ('fall','ENGL1101','2022',11,50,111),
 ('fall','ENGL1102','2022',12,50,116),
 ('fall','ENGL1101','2022',13,50,116),
 ('spring','ENGL1101','2023',14,50,117),
 ('fall','MATH1112','2022',15,50,112),
 ('spring','MATH2104','2023',16,40,112);
 
 
 INSERT INTO EMAILS VALUES
 (01,'mailadress1@isik.edu.tr'),
 (02,'mailadress2@isik.edu.tr'),
 (03,'mailadress3@isik.edu.tr'),
 (04,'mailadress4@isik.edu.tr'),
 (05,'mailadress5@isik.edu.tr'),
 (06,'mailadress6@isik.edu.tr'),
 (07,'mailadress7@isik.edu.tr'),
 (08,'mailadress8@isik.edu.tr'),
 (09,'mailadress9@isik.edu.tr');
 
 INSERT INTO PROJECT VALUES
 (001,'University Data Base',500,'2022-12-18','2023-01-10','Database Management','Software Engineering'),
 (002,'Bank Management',200,'2023-02-10','2023-02-25','Object Oriented Programming','Software Engineering'),
 (003,'Super Market',180,'2023-03-06','2023-03-22','Object Oriented Programming','Software Engineering'),
 (004,'Human Psyclogies',0,'2022-09-13','2023-02-04','Psyclologs','Psychology'),
 (005,'Dart Game',100,'2022-10-14','2022-10-26','Introduction to Programming','Software Engineering'),
 (006,'Speaking',0,'2023-01-06','2023-01-28','English Speaking','English Literature');
 
 INSERT INTO GRADSTUDENT VALUES
 (1,101),
 (2,102),
 (3,101),
 (4,101),
 (5,105),
 (6,105),
 (7,111);
 
 
 INSERT INTO ENROLLMENT VALUES
 (001,90,'spring','COMP2222',2022,1,1,'LMF',001,'Tuesday','4'),
 (002,80,'spring','COMP2222',2023,2,1,'LMF',001,'Monday','3'),
 (003,90,'fall','COMP1111',2023,3,1,'LMF',002,'Friday','5'),
 (004,60,'fall','COMP2502',2022,4,1,'LMF',004,'Wednesday','4'),
 (005,95,'spring','COMP2502',2022,5,2,'LMF',001,'Friday','5'),
 (006,75,'spring','COMP1111',2023,6,2,'LMF',001,'Friday','5');
 
 INSERT INTO INSTRLNPROJECTS VALUES
 (101,'University Data Base',101,4),
 (102,'Bank Management',101,2),
 (102,'Super Market',102,5),
 (101,'Dart Game',106,1),
 (101,'Human Psyclogies',115,1),
 (102,'Speaking',117,2);
 
 INSERT INTO GRADSINPROJECTS VALUES
 (1,'University Data Base',001,4),
 (2,'Bank Management',002,2),
 (3,'Super Market',001,5),
 (4,'Dart Game',004,1),
 (5,'Human Psyclogies',003,1);
 
 INSERT INTO PREVDEGREES VALUES
 ('Isik University','2.3',2016,001),
 ('Isik University','3.2',2022,002),
 ('Isik University','2.5',2019,003),
 ('Isik University','1.8',2016,004),
 ('Isik University','2.4',2020,005);
 
 INSERT INTO EXAMSOFSECTION VALUES 
('spring','COMP1111',2022,1,101,'Midterm 1','2022-04-16'),
('fall','COMP1111',2023,3,102,'Midterm 1','2023-11-18'),
('spring','COMP2502',2022,4,101,'Midterm 1','2022-05-02'),
('spring','COMP2502',2022,5,102,'Midterm 1','2022-05-02'),
('spring','COMP2502',2023,6,106,'Midterm 1','2023-04-08'),
('spring','COMP2222',2023,7,106,'Midterm 1','2023-04-12');

INSERT INTO QUESTIONSOFEXAM VALUES
('spring','COMP1111',2022,4,'Midterm 1',101,5,20),
('fall','COMP1111',2023,3,'Midterm 1',102,6,15),
('spring','COMP2502',2022,4,'Midterm 1',101,5,20),
('spring','COMP2222',2023,7,'Midterm 1',106,5,20),
('spring','COMP2502',2023,6,'Midterm 2',106,10,10);

INSERT INTO STUDENTSGRADESPERQUESTION VALUES
('spring','Midterm 1','COMP1111',2022,4,5,101,001,80),
('spring','Midterm 2','COMP1111',2022,4,5,101,002,60),
('spring','Final','COMP1111',2022,4,5,101,003,80),
('spring','Midterm 1','COMP2222',2023,7,5,106,002,40),
('spring','Midterm 2','COMP2222',2023,7,5,106,004,55);


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
   
 
 
 
