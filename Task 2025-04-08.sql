use feb_17;

CREATE TABLE college_info (college_id int,college_name varchar(30), type varchar(10) ,
    location varchar(20),established_year int);
ALTER TABLE COLLEGE_INFO MODIFY COLUMN LOCATION VARCHAR(30);
    
ALTER TABLE college_info ADD CONSTRAINT type_chk CHECK (type IN ('Public', 'Private'));
ALTER TABLE college_info ADD CONSTRAINT college_id_pk PRIMARY KEY(college_id);


CREATE TABLE student_infoss (student_id int,student_name varchar(20),
    age int,passout_year int,college_id int);
    
ALTER TABLE student_infoss ADD CONSTRAINT student_id_pk PRIMARY KEY(student_id);
ALTER TABLE student_infoss ADD CONSTRAINT college_id_fk FOREIGN KEY(college_id) REFERENCES college_info(college_id);
ALTER TABLE student_infoss ADD CONSTRAINT age_chk CHECK (age >= 17);

INSERT INTO college_info VALUES
(1, 'Anna University', 'Public', 'Chennai, Tamil Nadu', 1978),
(2, 'IIT Madras', 'Public', 'Chennai, Tamil Nadu', 1959),
(3, 'SRM University', 'Private', 'Kattankulathur, Tamil Nadu', 1985),
(4, 'VIT University', 'Private', 'Vellore, Tamil Nadu', 1984),
(5, 'Madras Christian College', 'Private', 'Chennai, Tamil Nadu', 1837),
(6, 'PSG Tech', 'Public', 'Coimbatore, Tamil Nadu', 1951),
(7, 'Bharathiar University', 'Public', 'Coimbatore, Tamil Nadu', 1982),
(8, 'Alagappa University', 'Public', 'Karaikudi, Tamil Nadu', 1985),
(9, 'Periyar University', 'Public', 'Salem, Tamil Nadu', 1997),
(10, 'Sastra University', 'Private', 'Thanjavur, Tamil Nadu', 1984),
(11, 'Loyola College', 'Private', 'Chennai, Tamil Nadu', 1925),
(12, 'Bharath Institute', 'Private', 'Chennai, Tamil Nadu', 1984),
(13, 'Kalasalingam University', 'Private', 'Virudhunagar, Tamil Nadu', 1984),
(14, 'Vel Tech University', 'Private', 'Avadi, Tamil Nadu', 1997),
(15, 'Dr MGR University', 'Private', 'Chennai, Tamil Nadu', 1988);

INSERT INTO student_infoss VALUES
(101, 'Arun Kumar', 21, 2023, 1),
(102, 'Bala Subramanian', 22, 2023, 2),
(103, 'Chitra V', 20, 2022, 3),
(104, 'Deepak R', 21, 2024, 4),
(105, 'Eesha M', 23, 2023, 5),
(106, 'Farhan K', 22, 2022, 6),
(107, 'Gokul P', 20, 2023, 7),
(108, 'Harini V', 21, 2024, 8),
(109, 'Ishaan N', 20, 2023, 9),
(110, 'Jaya K', 19, 2023, 10),
(111, 'Karthik T', 22, 2022, 11),
(112, 'Lavanya S', 21, 2024, 12),
(113, 'Manoj K', 20, 2023, 13),
(114, 'Nivetha L', 19, 2023, 14),
(115, 'Om Prakash', 23, 2022, 15);

ALTER TABLE college_info ADD COLUMN ranking int;
ALTER TABLE student_infos ADD COLUMN email varchar(30);

UPDATE college_info SET ranking = 20 WHERE college_id = 1;
UPDATE college_info SET ranking = 1 WHERE college_id = 2;
UPDATE college_info SET ranking = 35 WHERE college_id = 3;
UPDATE college_info SET ranking = 18 WHERE college_id = 4;
UPDATE college_info SET ranking = 50 WHERE college_id = 5;
UPDATE college_info SET ranking = 28 WHERE college_id = 6;
UPDATE college_info SET ranking = 40 WHERE college_id = 7;
UPDATE college_info SET ranking = 42 WHERE college_id = 8;
UPDATE college_info SET ranking = 49 WHERE college_id = 9;
UPDATE college_info SET ranking = 25 WHERE college_id = 10;
UPDATE college_info SET ranking = 30 WHERE college_id = 11;
UPDATE college_info SET ranking = 45 WHERE college_id = 12;
UPDATE college_info SET ranking = 34 WHERE college_id = 13;
UPDATE college_info SET ranking = 32 WHERE college_id = 14;
UPDATE college_info SET ranking = 27 WHERE college_id = 15;

UPDATE student_infos SET email = 'arun.kumar@gmail.com' WHERE student_id = 101;
UPDATE student_infos SET email = 'bala.subramanian@gmail.com' WHERE student_id = 102;
UPDATE student_infos SET email = 'chitra.v@gmail.com' WHERE student_id = 103;
UPDATE student_infos SET email = 'deepak.r@gmail.com' WHERE student_id = 104;
UPDATE student_infos SET email = 'eesha.m@gmail.com' WHERE student_id = 105;
UPDATE student_infos SET email = 'farhan.k@gmail.com' WHERE student_id = 106;
UPDATE student_infos SET email = 'gokul.p@gmail.com' WHERE student_id = 107;
UPDATE student_infos SET email = 'harini.v@gmail.com' WHERE student_id = 108;
UPDATE student_infos SET email = 'ishaan.n@gmail.com' WHERE student_id = 109;
UPDATE student_infos SET email = 'jaya.k@gmail.com' WHERE student_id = 110;
UPDATE student_infos SET email = 'karthik.t@gmail.com' WHERE student_id = 111;
UPDATE student_infos SET email = 'lavanya.s@gmail.com' WHERE student_id = 112;
UPDATE student_infos SET email = 'manoj.k@gmail.com' WHERE student_id = 113;
UPDATE student_infos SET email = 'nivetha.l@gmail.com' WHERE student_id = 114;
UPDATE student_infos SET email = 'om.prakash@gmail.com' WHERE student_id = 115;

ALTER TABLE college_info RENAME COLUMN established_year TO est_year;
ALTER TABLE college_info RENAME COLUMN ranking TO nirf_rank;
ALTER TABLE college_info RENAME COLUMN location TO city;
ALTER TABLE student_infos MODIFY student_name varchar(150);
ALTER TABLE student_infos MODIFY email varchar(150);
ALTER TABLE student_infos MODIFY passout_year int;

UPDATE college_info SET nirf_rank = 10 WHERE college_id = 1;
UPDATE college_info SET nirf_rank = 5 WHERE college_id = 2;
UPDATE college_info SET nirf_rank = 15 WHERE college_id = 3;
UPDATE college_info SET nirf_rank = 25 WHERE college_id = 4;
UPDATE college_info SET nirf_rank = 30 WHERE college_id = 5;

DELETE FROM student_infos WHERE student_id = 115;
DELETE FROM student_infos WHERE student_id = 114;
DELETE FROM student_infos WHERE student_id = 113;
DELETE FROM student_infos WHERE student_id = 112;

SELECT * FROM student_infos WHERE age > 20 AND passout_year = 2023;

SELECT * FROM college_info WHERE type = 'Private' OR nirf_rank < 20;
SELECT * FROM college_info WHERE college_id IN (1, 2, 3);

SELECT * FROM student_infos WHERE age NOT IN (19, 20);
SELECT * FROM student_infos WHERE age BETWEEN 20 AND 22;

SELECT * FROM college_info WHERE nirf_rank NOT BETWEEN 10 AND 25;
SELECT college_id, COUNT(*) AS total_students FROM student_infos GROUP BY college_id;

SELECT AVG(age) AS average_age FROM student_infos;

SELECT MAX(nirf_rank) AS highest_rank, MIN(nirf_rank) AS lowest_rank FROM college_info;
SELECT s.student_id, s.student_name, c.college_name, c.nirf_rank FROM student_infos s JOIN college_info c ON s.college_id = c.college_id;
SELECT c.college_name, s.student_name FROM college_info c LEFT JOIN student_infos s ON c.college_id = s.college_id;






