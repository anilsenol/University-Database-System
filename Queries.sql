-- 1
SELECT s.studentId, s.sname, e.email, s.gradorUgrad
FROM Student s, Emails e, Department d
WHERE d.dname= s.dname AND e.sssn= s.sssn AND d.dname= 'Software Engineering'
;
-- 2
SELECT s.studentId, s.sname, i.iName
FROM Student s, Instructor i
WHERE s.advisorSsn= i.ssn AND s.dname= 'Software Engineering'
;
-- 3
SELECT *
FROM Instructor i
WHERE i.dname= 'Software Engineering'
;
-- 4
SELECT c.courseCode, c.CourseName, c.ects
FROM Course c, Sectionn s
WHERE s.courseCode= c.courseCode AND s.semester= 'spring' AND s.yearr= '2022' AND s.issn= '101'
;
-- 5
SELECT * 
FROM Instructor i 
WHERE i.ssn NOT IN (
SELECT s.issn
FROM Sectionn s 
WHERE s.yearr = '2022' AND s.semester ='FALL'
);
-- 6
SELECT s.sname, s.studentId
FROM Student s, Enrollment e, Course c
WHERE s.sssn = e.sssn AND e.courseCode = c.courseCode AND c.courseCode = 'COMP2222' AND e.yearr = '2022' AND e.semester = 'Spring'
;
-- 7
SELECT s.sName ,s.sssn
FROM Student s, Enrollment e
WHERE s.sssn = e.sssn 
AND e.semester = 'SPRING' AND e.yearr ='2022'AND e.courseCode = 'COMP2222' AND e.issn = '1' AND e.sectionId='1'
;
-- 8
SELECT c.courseCode ,c.courseName,c.ects
FROM Course c,Enrollment e
WHERE e.courseCode = c.courseCode AND e.sssn ='4'
;
-- 9
SELECT e.courseCode , e.sectionId, e.dayy,e.hourr
FROM Enrollment e
WHERE e.sssn = '003' AND e.semester = 'Fall' AND e.yearr = '2023'
;
-- 10
SELECT e.courseCode ,e.yearr,e.semester,e.grade
FROM Enrollment e
WHERE e.sssn ='005'
;
-- 11
SELECT e.grade
FROM Enrollment e
WHERE e.courseCode = 'COMP1111' AND e.yearr = 2023 AND e.semester = 'spring'
;
-- 12

SELECT s.examName, s.pointsEarned
FROM StudentsGradesPerQuestion s
WHERE s.sssn = '001' AND s.courseCode = 'COMP1111'
;

-- 13
SELECT s.sssn,s.qNo, s.pointsEarned
 FROM StudentsGradesPerQuestion s,Examsofsection e
 WHERE s.courseCode = e.courseCode AND e.examName = 'Midterm 1' ;

			
-- 14
SELECT T.dayy, T.hourr
FROM timeslot T
WHERE (T.dayy, T.hourr) NOT in (SELECT t2.dayy, t2.hourr
                           		FROM enrollment E NATURAL JOIN TimeSLot T2
                               	WHERE E.yearr=2022 AND  E.semester = 'spring' AND E.sssn in 
                                (SELECT E2.sssn
								FROM Enrollment E2
								WHERE E2.sssn = E.sssn AND E2.issn= '1' AND E2.sectionId = 1 
											AND E2.yearr='2022' AND E2.semester = 'spring'))
                                            ;  

-- 15

SELECT p.prName
FROM Project p
JOIN Department d ON p.contrDName = d.dName
WHERE d.dName = 'Software Engineering'
;
-- 16
SELECT s.sname, g.prName
FROM GradsInProjects g join Student S ON g.Gradsssn = S.sssn
WHERE g.prName = 'Dart Game'

UNION

SELECT I.iname , ip.prName
FROM InstrlnProjects ip JOIN Instructor I ON ip.issn = i.ssn
WHERE ip.prName = 'Dart Game' AND ip.issn = '101';

-- 17
SELECT ip.issn, i.iname, 100*sum(ip.workingHours) AS extraSalary
FROM InstrlnProjects ip 
JOIN Instructor i ON İP.issn = i.ssn
GROUP BY ip.issn
;

-- 18


-- 19
SELECT dname, AVG(baseSalary) AS averagebasesalary
FROM Instructor i
GROUP BY i.dname
;