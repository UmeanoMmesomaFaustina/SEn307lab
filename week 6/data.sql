USE sen307_11455;
INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');

INSERT INTO Course (course_code, course_title, credit_units, description, dept_id) VALUES
('SEN307', 'Database Systems', 3,
'Relational database design, SQL queries, normalization, transactions and indexing using
MySQL.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('SEN301', 'Software Architecture', 3,
'Architectural styles, design patterns, microservices and how to structure large software
systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('COS301', 'Operating Systems', 3,'Processes, threads, CPU scheduling, memory management and file systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('COS305', 'Computer Networks', 3,
'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('AIN301', 'Introduction to Artificial Intelligence', 3,
'Intelligent agents, search algorithms, knowledge representation and reasoning.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN305', 'Machine Learning', 3,
'Supervised and unsupervised learning, neural networks, deep learning and model
evaluation.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN307', 'Natural Language Processing', 3,
'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('DTS301', 'Data Visualization and Analytics', 2,
'Exploratory data analysis, charts, dashboards and telling stories with data.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('DTS305', 'Big Data Technologies', 3,
'Distributed storage and processing of very large datasets with Hadoop and Spark.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('CYB301', 'Network Security', 3,
'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));
SELECT d.dept_name, COUNT(c.course_id) AS courses
FROM Department d LEFT JOIN Course c ON d.dept_id = c.dept_id
GROUP BY d.dept_name;

SELECT dept_id, dept_name FROM Department;
SELECT course_id, course_code FROM Course;

INSERT INTO Lecturer (staff_no, full_name, email, dept_id) VALUES
('VUA/ST/101', 'Dr Amaka Okafor', 'a.okafor@vua.edu.ng', 5),
('VUA/ST/102', 'Dr Musa Bello', 'm.bello@vua.edu.ng', 5),
('VUA/ST/103', 'Dr Anayo Okoye', 'a.okoye@vua.edu.ng', 4),
('VUA/ST/104', 'Dr Bolu Bisongr', 'b.bisongr@vua.edu.ng', 4),
('VUA/ST/105', 'Dr Nneka Anakwe', 'n.anakwe@vua.edu.ng', 7),
('VUA/ST/106', 'Dr Agbenu Ogebe', 'a.ogeber@vua.edu.ng', 7),
('VUA/ST/107', 'Dr Zannang Bako', 'z.bako@vua.edu.ng', 6),
('VUA/ST/108', 'Dr Saan Ishola', 's.isholar@vua.edu.ng', 6),
('VUA/ST/109', 'Dr Ivande Ukeh', 'i.ukeh@vua.edu.ng', 3),
('VUA/ST/110', 'Dr Abah Eje', 'a.eje@vua.edu.ng', 3)
;

INSERT INTO Student (matric_no, full_name, gender, date_of_birth, dept_id) VALUES
('20231234', 'Ada Obi', 'F', '2005-03-14', 6),
('20231235', 'John Musa', 'M', '2004-11-02', 6),
('20238934', 'Ada Ora', 'F', '1905-03-14', 6),
('21231784', 'Ada Ugo', 'F', '2005-12-14', 6),
('20231236', 'Grace Okon',         'F', '2005-07-21', 6),
('20231237', 'Ibrahim Suleiman',   'M', '2004-05-09', 3),
('20231238', 'Chiamaka Nwosu',     'F', '2005-01-30', 4),
('20231239', 'Tunde Adeyemi',      'M', '2003-12-17', 5),
('20231240', 'Fatima Bello',       'F', '2005-09-05', 7),
('20231241', 'Emeka Okafor',       'M', '2004-08-23', 6),
('20231242', 'Aisha Abubakar',     'F', '2006-02-11', 5),
('20231243', 'Blessing Eze',       'F', '2005-06-08', 5),
('20231244', 'Yusuf Danjuma',      'M', '2004-03-27', 3),
('20231245', 'Ngozi Chukwu',       'F', '2005-10-19', 4),
('20231246', 'Samuel Adebayo',     'M', '2003-09-14', 3),
('20231247', 'Halima Lawal',       'F', '2006-04-02', 7),
('20231248', 'Kelechi Uche',       'M', '2005-05-16', 4),
('20231249', 'Funmilayo Ajayi',    'F', '2004-07-30', 3),
('20231250', 'Musa Garba',         'M', '2005-11-25', 6),
('20231251', 'Temitope Balogun',   'F', '2006-01-07', 7),
('20422251', 'Bala Ogun',   'F', '2006-01-08', 5);

SELECT student_id, matric_no, full_name FROM Student
;
SELECT lecturer_id, full_name FROM Lecturer;



INSERT INTO Enrolment (student_id, course_id) VALUES
(43, 1), (44, 1), (45, 1), (46, 1), (47, 1), (48, 1), (49, 1),

(43, 2), (44, 2), (50, 2), (51, 2), (52, 2), (53, 2),

(43, 3), (45, 3), (54, 3), (55, 3), (56, 3), (57, 3),

(44, 4), (58, 4), (59, 4), (60, 4),


(45, 5), (46, 5), (47, 5), (48, 5), (49, 5), 

(50, 5), (51, 5), (52, 5), (53, 5), (54, 5),

(43, 6), (44, 6), (45, 6), (46, 6), (47, 6), (48, 6), (49, 6);

INSERT INTO CourseAllocation (course_id, lecturer_id) VALUES
(1, 1), 
(1, 2),
(2, 3), 
(3, 4), 
(4, 5), 
(5, 6), 
(6, 7),
(10, 4), 
(9, 6),
(3, 8);


SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231234';
UPDATE Student SET dept_id = 2 WHERE matric_no = '20231234';
SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231234';

SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231234';
SET SQL_SAFE_UPDATES = 0;
UPDATE Student SET dept_id = 7 WHERE matric_no = '20231234';
SET SQL_SAFE_UPDATES = 1;
SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231234';

INSERT INTO Student (matric_no, full_name, dept_id)
VALUES ('20239999', 'Transfer Student', 15);

DELETE FROM Department WHERE dept_name = 'Library and Information Science';



UPDATE Student
SET dept_id = (SELECT dept_id FROM Department

WHERE dept_name = 'Software Engineering')

WHERE matric_no = '20239999';
DELETE FROM Department WHERE dept_name = 'Library and Information Science';
SELECT * FROM Department;


SELECT 'Departments' AS tbl, COUNT(*) AS total FROM Department
UNION ALL SELECT 'Lecturers', COUNT(*) FROM Lecturer
UNION ALL SELECT 'Students', COUNT(*) FROM Student
UNION ALL SELECT 'Courses', COUNT(*) FROM Course
UNION ALL SELECT 'Enrolments', COUNT(*) FROM Enrolment
UNION ALL SELECT 'Allocations', COUNT(*) FROM CourseAllocation;