use feb_17;

CREATE TABLE college_info (college_id int,college_name varchar(30), type varchar(10) ,
    location varchar(20),established_year int);

CREATE TABLE student_infos (student_id int,student_name varchar(20),
    age int,passout_year int,college_id int);
    
ALTER TABLE college_info ADD CONSTRAINT college_id_pk PRIMARY KEY(college_id);    
ALTER TABLE college_info ADD CONSTRAINT type_chk CHECK (type IN ('Public', 'Private'));
ALTER TABLE student_infos ADD CONSTRAINT student_id_pk PRIMARY KEY(student_id);
ALTER TABLE student_infos ADD CONSTRAINT age_chk CHECK (age >= 17);
ALTER TABLE student_infos ADD CONSTRAINT college_id_fk FOREIGN KEY(college_id) REFERENCES college_info(college_id);

INSERT INTO college_info VALUES
(1, 'Anna University', 'Public', 'Chennai', 1978),
(2, 'IIT Madras', 'Public', 'Chennai', 1959),
(3, 'SRM University', 'Private', 'Kattankulathur', 1985),
(4, 'VIT University', 'Private', 'Vellore', 1984),
(5, 'Madras Christian College', 'Private', 'Chennai', 1837),
(6, 'PSG Tech', 'Public', 'Coimbatore', 1951),
(7, 'Bharathiar University', 'Public', 'Coimbatore', 1982),
(8, 'Alagappa University', 'Public', 'Karaikudi', 1985),
(9, 'Periyar University', 'Public', 'Salem', 1997),
(10, 'Sastra University', 'Private', 'Thanjavur', 1984),
(11, 'Loyola College', 'Private', 'Chennai', 1925),
(12, 'Bharath Institute', 'Private', 'Chennai', 1984),
(13, 'Kalasalingam University', 'Private', 'Virudhunagar', 1984),
(14, 'Vel Tech University', 'Private', 'Avadi', 1997),
(15, 'Dr MGR University', 'Private', 'Chennai', 1988);

INSERT INTO student_infos VALUES
(101, 'Arun', 21, 2023, 1),
(102, 'Ram', 20, 2012, 2),
(103, 'Deepa', 19, 2022, 3),
(104, 'Chitra', 20, 2021, 6),
(105, 'Easha', 19, 2022, 7),
(106, 'Sangeetha', 18, 2025, 10),
(107, 'Sharmila', 21, 2024, 12),
(108, 'Shivya', 20, 2025, 13),
(109, 'Gowsika', 20, 2025, 4),
(110, 'Viyaas', 21, 2024, 5),
(111, 'Vishwa', 22, 2023, 8),
(112, 'Karthick', 23, 2020, 11),
(113, 'Hari', 19, 2019, 9),
(114, 'Raja', 20, 2017, 15),
(115, 'Anand', 21, 2020, 14);


ALTER TABLE college_info ADD COLUMN ranking int;
ALTER TABLE student_infos ADD COLUMN email varchar(30);

UPDATE college_info SET ranking = 15 WHERE college_id = 1;
UPDATE college_info SET ranking = 1 WHERE college_id = 2;
UPDATE college_info SET ranking = 20 WHERE college_id = 3;
UPDATE college_info SET ranking = 22 WHERE college_id = 4;
UPDATE college_info SET ranking = 35 WHERE college_id = 5;
UPDATE college_info SET ranking = 17 WHERE college_id = 6;
UPDATE college_info SET ranking = 18 WHERE college_id = 7;
UPDATE college_info SET ranking = 10 WHERE college_id = 8;
UPDATE college_info SET ranking = 15 WHERE college_id = 9;
UPDATE college_info SET ranking = 14 WHERE college_id = 10;
UPDATE college_info SET ranking = 40 WHERE college_id = 11;
UPDATE college_info SET ranking = 12 WHERE college_id = 12;
UPDATE college_info SET ranking = 36 WHERE college_id = 13;
UPDATE college_info SET ranking = 42 WHERE college_id = 14;
UPDATE college_info SET ranking = 50 WHERE college_id = 15;

UPDATE student_infos SET email = 'arun2@gmail.com' WHERE student_id = 101;
UPDATE student_infos SET email = 'ram@gmail.com' WHERE student_id = 102;
UPDATE student_infos SET email = 'deepa@gmail.com' WHERE student_id = 103;
UPDATE student_infos SET email = 'chitra@gmail.com' WHERE student_id = 104;
UPDATE student_infos SET email = 'easha@ymail.com' WHERE student_id = 105;
UPDATE student_infos SET email = 'sange@gmail.com' WHERE student_id = 106;
UPDATE student_infos SET email = 'sharu@gamilton.com' WHERE student_id = 107;
UPDATE student_infos SET email = 'shivya@gmadasim.com' WHERE student_id = 108;
UPDATE student_infos SET email = 'gowsi@gmail.com' WHERE student_id = 109;
UPDATE student_infos SET email = 'viya@gmail.com' WHERE student_id = 110;
UPDATE student_infos SET email = 'vishwa@gmail.com' WHERE student_id = 111;
UPDATE student_infos SET email = 'katthick@mail.com' WHERE student_id = 112;
UPDATE student_infos SET email = 'hari@gmail.com' WHERE student_id = 113;
UPDATE student_infos SET email = 'raj@gmail.com' WHERE student_id = 114;
UPDATE student_infos SET email = 'anand@gmail.com' WHERE student_id = 115;

ALTER TABLE college_info RENAME COLUMN established_year TO est_year;
ALTER TABLE student_infos RENAME COLUMN email TO emailid;
ALTER TABLE college_info RENAME COLUMN location TO city;
ALTER TABLE student_infos MODIFY COLUMN emailid varchar(35);
ALTER TABLE college_info MODIFY COLUMN college_name varchar(25);
ALTER TABLE college_info MODIFY COLUMN est_year year;
ALTER TABLE college_info RENAME COLUMN ranking TO nirf_rank;


UPDATE college_info SET nirf_rank = 2 WHERE college_id = 1;
UPDATE student_infos SET emailid = 'raja@gmail.com' WHERE student_id = 114;
UPDATE student_infos SET emailid = 'sharmila@gmail.com' WHERE student_id = 107;
UPDATE college_info SET nirf_rank = 7 WHERE college_id = 6;
UPDATE college_info SET nirf_rank = 36 WHERE college_id = 10;

DELETE FROM student_infos WHERE student_id = 10;
DELETE FROM college_info WHERE college_id = 8;
DELETE FROM student_infos WHERE student_id = 8;
DELETE FROM college_info WHERE college_id = 10;


SELECT * FROM student_infos WHERE age > 20 AND passout_year = 2023;
SELECT college_id FROM college_info WHERE type = 'Public' and city='chennai';
SELECT * FROM college_info WHERE type = 'Private' OR nirf_rank < 20;
SELECT * FROM student_infos WHERE age >20 OR student_name like 's%';
SELECT * FROM college_info WHERE college_id IN (1, 2, 3);
SELECT * FROM student_infos WHERE age NOT IN (19, 20);
SELECT * FROM college_info WHERE est_year IN (1990,1982,1995);
SELECT * FROM student_infos WHERE age BETWEEN 20 AND 22;
SELECT college_id,college_name FROM college_info WHERE college_id NOT BETWEEN 10 AND 14;
SELECT student_name FROM student_infos WHERE college_id BETWEEN 1 AND 10;
SELECT COUNT(*) AS total_college FROM college_info;
SELECT AVG(age) AS average_age FROM student_infos;
SELECT MAX(nirf_rank) AS highest_rank FROM college_info;
SELECT COUNT(*) AS total FROM student_infos WHERE age BETWEEN 19 AND 21;
SELECT MIN(nirf_rank) AS lowest_rank FROM college_info;
SELECT s.student_id, s.student_name, c.college_name, c.nirf_rank FROM student_infos s INNER JOIN college_info c ON s.college_id = c.college_id;
SELECT c.college_name, s.student_name FROM college_info c LEFT JOIN student_infos s ON c.college_id = s.college_id;
SELECT * FROM student_infos s RIGHT JOIN college_info c ON s.college_id = c.college_id;






