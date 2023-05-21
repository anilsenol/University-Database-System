CREATE TABLE Course(
ects INTEGER NOT NULL,
courseName VARCHAR(40) NOT NULL,
courseCode VARCHAR(40) NOT NULL,
numHours INTEGER NOT NULL,
preReqCourseCode VARCHAR(40),
PRIMARY KEY(courseCode)
);

CREATE TABLE Department(
dName VARCHAR(40) NOT NULL,
budget INTEGER,
headSSn INTEGER NOT NULL,
buildingName VARCHAR(40) NOT NULL,
PRIMARY KEY(dName)
);

CREATE TABLE Instructor(
ssn INTEGER NOT NULL,
iName VARCHAR(40) NOT NULL,
rankk VARCHAR(40) NOT NULL,
baseSalary INTEGER NOT NULL,
extraSalary INTEGER,
dName VARCHAR(40) NOT NULL,
PRIMARY KEY(ssn)
);

CREATE TABLE InstrlnProjects(
PrjleadSsn INTEGER NOT NULL,
prName VARCHAR(40) NOT NULL,
issn INTEGER NOT NULL,
workingHours INTEGER NOT NULL,
PRIMARY KEY(prName)
);

CREATE TABLE Project(
leadSsn INTEGER NOT NULL,
prName VARCHAR(40) NOT NULL,
budget INTEGER NOT NULL,
startDate DATE NOT NULL,
endDate DATE NOT NULL,
subject VARCHAR(40) NOT NULL,
contrDName VARCHAR(40) NOT NULL,
PRIMARY KEY(leadSsn,prName)
);

CREATE TABLE GradsInProjects(
PrjleadSsn INTEGER NOT NULL,
prName VARCHAR(40) NOT NULL,
gradsssn INTEGER NOT NULL,
workingHours INTEGER NOT NULL,
PRIMARY KEY(prName,gradsssn)
);

CREATE TABLE gradstudent(
sssn INTEGER NOT NULL,
advisorSsn INTEGER NOT NULL,
PRIMARY KEY(sssn)
);

CREATE TABLE prevDegrees(
college VARCHAR(40) NOT NULL,
degree VARCHAR(40) NOT NULL,
year YEAR NOT NULL,
gradsssn INTEGER NOT NULL,
PRIMARY KEY(college,degree)
);

CREATE TABLE emails(
sssn INTEGER NOT NULL,
email VARCHAR(40) NOT NULL,
PRIMARY KEY(email)
);

CREATE TABLE student(
sssn INTEGER NOT NULL,
gradorUgrad VARCHAR(40) NOT NULL,
advisorSsn INTEGER NOT NULL,
currCode VARCHAR(40) NOT NULL,
dName VARCHAR(40) NOT NULL,
studentId INTEGER NOT NULL,
sName VARCHAR(40) NOT NULL,
PRIMARY KEY(sssn)
);

CREATE TABLE sectionn(
semester VARCHAR(40) NOT NULL,
courseCode VARCHAR(40) NOT NULL,
yearr YEAR NOT NULL,
sectionId INTEGER NOT NULL,
quota INTEGER NOT NULL,
issn INTEGER NOT NULL,
PRIMARY KEY(sectionId,courseCode,semester,yearr,issn)
);

CREATE TABLE enrollment(
sssn INTEGER NOT NULL,
grade INTEGER NOT NULL,
semester VARCHAR(40) NOT NULL,
courseCode VARCHAR(40) NOT NULL,
yearr YEAR NOT NULL,
sectionId INTEGER NOT NULL,
issn INTEGER NOT NULL,
buildingName VARCHAR(40) NOT NULL,
roomNumber INTEGER NOT NULL,
dayy VARCHAR(40) NOT NULL,
hourr INTEGER NOT NULL,
PRIMARY KEY(courseCode,sectionId,semester,yearr)
);

CREATE TABLE TimeSlot(
dayy VARCHAR(40) NOT NULL,
hourr INTEGER,
PRIMARY KEY(dayy,hourr)
);

CREATE TABLE curriculaCourses(
courseCode VARCHAR(40) NOT NULL,
dName VARCHAR(40) NOT NULL,
currCode VARCHAR(40) NOT NULL,
PRIMARY KEY(courseCode,currCode)
);

CREATE TABLE Curricula(
currCode VARCHAR(40) NOT NULL,
gradOrUGrad VARCHAR(40) NOT NULL,
dName VARCHAR(40) NOT NULL,
PRIMARY KEY(currCode,dName)
);

CREATE TABLE BuildClass(
buildingName VARCHAR(40) NOT NULL,
roomNumber INTEGER NOT NULL,
capacity INTEGER NOT NULL,
PRIMARY KEY(buildingName,roomNumber)
);

CREATE TABLE ExamsOfSection(
semester VARCHAR(40) NOT NULL,
courseCode VARCHAR(40) NOT NULL,
yearr YEAR NOT NULL,
sectionId INTEGER NOT NULL,
issn INTEGER NOT NULL,
examName VARCHAR(40) NOT NULL,
date DATE NOT NULL,
PRIMARY KEY(examName,sectionId,courseCode,semester,yearr,issn)
);

CREATE TABLE QuestionsOfExam(
semester VARCHAR(40) NOT NULL,
courseCode VARCHAR(40) NOT NULL,
yearr YEAR NOT NULL,
sectionId INTEGER NOT NULL,
examName VARCHAR(40) NOT NULL,
issn INTEGER NOT NULL,
qNo INTEGER NOT NULL,
qPoint INTEGER NOT NULL,
PRIMARY KEY(examName,sectionId,courseCode,semester,qNo)
);

CREATE TABLE StudentsGradesPerQuestion(
semester VARCHAR(40) NOT NULL,
examName VARCHAR(40) NOT NULL,
courseCode VARCHAR(40) NOT NULL,
yearr YEAR NOT NULL,
sectionId INTEGER NOT NULL,
qNo INTEGER NOT NULL,
issn INTEGER NOT NULL,
sssn INTEGER NOT NULL,
pointsEarned INTEGER,
PRIMARY KEY(qNo,examName,sectionId,sssn)
);

alter table sectionn
add FOREIGN KEY (courseCode) REFERENCES Course(CourseCode),
add FOREIGN KEY (issn) REFERENCES Instructor(ssn);

alter table student
add FOREIGN KEY (advisorSsn) REFERENCES Instructor(ssn),
add FOREIGN KEY (currCode,dName) REFERENCES Curricula(currCode,dName);

alter table emails
add FOREIGN KEY (sssn) REFERENCES student(sssn);

alter table Curricula
add FOREIGN KEY (dName) REFERENCES Department(dName);

alter table enrollment
add FOREIGN KEY(buildingName,roomNumber) REFERENCES BuildClass(buildingName,roomNumber),
add FOREIGN KEY(issn) REFERENCES Instructor(ssn),
add FOREIGN KEY(dayy,hourr) REFERENCES TimeSlot(dayy,hourr);

alter table curriculaCourses
add FOREIGN KEY (courseCode) REFERENCES Course(courseCode),
add FOREIGN KEY (dName) REFERENCES Curricula(dName),
add FOREIGN KEY (currCode) REFERENCES Curricula(currCode);

alter table Department
add FOREIGN KEY(buildingName) REFERENCES BuildClass(buildingName),
add FOREIGN KEY(headSSn) REFERENCES Instructor(ssn);

alter table Instructor 
add FOREIGN KEY (dName) REFERENCES Department(dName);

alter table InstrlnProjects
add FOREIGN KEY (issn) REFERENCES Instructor(ssn),
add FOREIGN KEY (PrjleadSsn,prName) REFERENCES Project(leadSsn,prName);

alter table Project
add FOREIGN KEY (contrDName) REFERENCES Department(dName),
add FOREIGN KEY (leadSsn) REFERENCES Instructor(ssn);

alter table GradsInProjects
add FOREIGN KEY (PrjleadSsn,prName) REFERENCES Project(leadSsn,prName);

alter table gradstudent
add FOREIGN KEY (advisorSsn) REFERENCES Instructor(ssn),
add FOREIGN KEY (sssn) REFERENCES student(sssn);

alter table prevDegrees
add FOREIGN KEY (gradsssn) REFERENCES gradstudent(sssn);

alter table examsofsection
add FOREIGN KEY(sectionId) REFERENCES sectionn(sectionId);

alter table questionsofexam
add FOREIGN KEY(sectionId,examName,courseCode,semester,yearr,issn) REFERENCES examsofsection(sectionId,examName,courseCode,semester,yearr,issn);

alter table studentsgradesperquestion
add FOREIGN KEY(examName,sectionId,courseCode) REFERENCES questionsofexam(examName,sectionId,courseCode);

















