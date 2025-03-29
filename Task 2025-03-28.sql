use mar_3;

CREATE TABLE movies_info (movie_id int NOT NULL UNIQUE, movie_name varchar(20) NOT NULL UNIQUE, director_name varchar(25) NOT NULL,producer_name varchar(25) NOT NULL,
hero_name varchar(20) NOT NULL, heroine_name varchar(20) NOT NULL,villan_name varchar(20),
music_director varchar(20) NOT NULL,budget bigint NOT NULL,released_year year NOT NULL);

INSERT INTO movies_info VALUES
(1, 'Vikram', 'Lokesh Kanagaraj', 'Kamal Haasan', 'Kamal Haasan', 'None', 'Vijay Sethupathi', 'Anirudh', 1200000000, 2022),
(2, 'Master', 'Lokesh Kanagaraj', 'Xavier Britto', 'Vijay', 'Malavika Mohanan', 'Vijay Sethupathi', 'Anirudh', 1350000000, 2021),
(3, 'Kaithi', 'Lokesh Kanagaraj', 'S. R. Prakashbabu', 'Karthi', 'None', 'Narain', 'Sam CS', 250000000, 2019),
(4, '96', 'C. Premkumar', 'S. Nanthagopal', 'Vijay Sethupathi', 'Trisha', 'None', 'Govind Vasantha', 180000000, 2018),
(5, 'Asuran', 'Vetrimaaran', 'Kalaipuli S. Thanu', 'Dhanush', 'Manju Warrier', 'Aadukalam Naren', 'G.V. Prakash', 700000000, 2019),
(6, 'Soorarai Pottru', 'Sudha Kongara', 'Suriya', 'Suriya', 'Aparna Balamurali', 'Paresh Rawal', 'G.V. Prakash', 2000000000, 2020),
(7, 'Karnan', 'Mari Selvaraj', 'Kalaipuli S. Thanu', 'Dhanush', 'Rajisha Vijayan', 'Natarajan Subramaniam', 'Santhosh Narayanan', 600000000, 2021),
(8, 'Thani Oruvan', 'Mohan Raja', 'Kalpathi S. Aghoram', 'Jayam Ravi', 'Nayanthara', 'Arvind Swami', 'Hiphop Tamizha', 400000000, 2015),
(9, 'Jai Bhim', 'T.J. Gnanavel', 'Suriya', 'Suriya', 'Lijomol Jose', 'Prakash Raj', 'Sean Roldan', 1000000000, 2021),
(10, 'Super Deluxe', 'Thiagarajan Kumararaja', 'Tyler Durden', 'Vijay Sethupathi', 'Samantha', 'Fahadh Faasil', 'Yuvan Shankar Raja', 500000000, 2019),
(11, 'Petta', 'Karthik Subbaraj', 'Kalanithi Maran', 'Rajinikanth', 'Simran', 'Nawazuddin Siddiqui', 'Anirudh', 1600000000, 2019),
(12, 'Mersal', 'Atlee', 'N. Ramasamy', 'Vijay', 'Kajal Aggarwal', 'S.J. Suryah', 'A.R. Rahman', 1200000000, 2017),
(13, 'Kabali', 'Pa. Ranjith', 'Kalaipuli S. Thanu', 'Rajinikanth', 'Radhika Apte', 'Winston Chao', 'Santhosh Narayanan', 650000000, 2016),
(14, 'Viswasam', 'Siva', 'Sendhil Thyagarajan', 'Ajith Kumar', 'Nayanthara', 'Jagapathi Babu', 'D. Imman', 1800000000, 2019),
(15, 'Vedalam', 'Siva', 'A. M. Rathnam', 'Ajith Kumar', 'Shruti Haasan', 'Rahul Dev', 'Anirudh', 1150000000, 2015),
(16, 'Vada Chennai', 'Vetrimaaran', 'Dhanush', 'Dhanush', 'Aishwarya Rajesh', 'Samuthirakani', 'Santhosh Narayanan', 900000000, 2018),
(17, 'Enthiran', 'Shankar', 'Kalanithi Maran', 'Rajinikanth', 'Aishwarya Rai', 'Danny Denzongpa', 'A.R. Rahman', 2000000000, 2010),
(18, 'Anniyan', 'Shankar', 'V. Ravichandran', 'Vikram', 'Sadha', 'Prakash Raj', 'Harris Jayaraj', 320000000, 2005),
(19, 'Sarkar', 'A.R. Murugadoss', 'Kalanithi Maran', 'Vijay', 'Keerthy Suresh', 'Varalaxmi Sarathkumar', 'A.R. Rahman', 2500000000, 2018),
(20, 'Bigil', 'Atlee', 'Kalpathi S. Aghoram', 'Vijay', 'Nayanthara', 'Jackie Shroff', 'A.R. Rahman', 3000000000, 2019);

ALTER TABLE movies_info MODIFY COLUMN villan_name varchar(30);

SELECT * from movies_info;

CREATE TABLE cosmetics_info (product_id int NOT NULL UNIQUE,product_name varchar(30) NOT NULL UNIQUE,category varchar(30) NOT NULL,brand varchar(30) NOT NULL,
    ingredients varchar(40),skin_type varchar(20) NOT NULL,price decimal(10,2) NOT NULL,availability boolean NOT NULL,
    expiration_date date NOT NULL UNIQUE,rating decimal(3,1));

desc cosmetics_info;

INSERT INTO cosmetics_info VALUES
(1,'Matte Lipstick', 'Lipstick', 'Maybelline', 'Beeswax, Castor Oil, Pigments', 'All', 499.00, TRUE, '2026-05-10', 4.5),
(2,'Hydrating Face Cream', 'Moisturizer', 'Neutrogena', 'Hyaluronic Acid, Glycerin', 'Dry', 799.00, TRUE, '2025-12-20', 4.7),
(3,'Sunscreen SPF 50', 'Sunscreen', 'La Roche-Posay', 'Zinc Oxide, Titanium Dioxide', 'All', 1499.00, TRUE, '2026-08-15', 4.8),
(4,'Kajal Pencil', 'Eye Makeup', 'Lakmé', 'Carbon Black, Castor Oil', 'All', 199.00, TRUE, '2025-07-01', 4.3),
(5,'Vitamin C Serum', 'Serum', 'The Ordinary', 'Vitamin C, Hyaluronic Acid', 'All', 1200.00, TRUE, '2026-02-10', 4.6),
(6,'BB Cream', 'Foundation', 'Garnier', 'Glycerin, Vitamin C', 'Normal', 349.00, TRUE, '2025-09-30', 4.2),
(7,'Compact Powder', 'Face Powder', 'MAC', 'Talc, Zinc Stearate', 'All', 2300.00, TRUE, '2026-06-25', 4.7),
(8,'Aloe Vera Gel', 'Skin Care', 'Patanjali', 'Aloe Vera Extract, Vitamin E', 'All', 120.00, TRUE, '2026-04-01', 4.5),
(9,'Charcoal Face Wash', 'Cleanser', 'Himalaya', 'Activated Charcoal, Neem', 'Oily', 250.00, TRUE, '2025-11-11', 4.4),
(10,'Hair Serum', 'Hair Care', 'L’Oreal', 'Argan Oil, Silicone', 'All', 899.00, TRUE, '2026-01-15', 4.6),
(11,'Liquid Eyeliner', 'Eye Makeup', 'Revlon', 'Aqua, Carbon Black', 'All', 550.00, TRUE, '2025-10-20', 4.3),
(12,'Lip Balm', 'Lip Care', 'Nivea', 'Beeswax, Shea Butter', 'All', 199.00, TRUE, '2026-03-10', 4.5),
(13,'Night Repair Cream', 'Moisturizer', 'Olay', 'Retinol, Peptides', 'Mature', 1800.00, TRUE, '2025-12-31', 4.8),
(14,'Face Scrub', 'Exfoliator', 'St. Ives', 'Apricot Extract, Walnut Shell', 'All', 399.00, TRUE, '2025-08-05', 4.2),
(15,'CC Cream', 'Foundation', 'Lakmé', 'Niacinamide, Vitamin E', 'All', 650.00, TRUE, '2026-05-20', 4.4),
(16,'Rose Water Mist', 'Toner', 'Kama Ayurveda', 'Rose Extract, Aqua', 'All', 1150.00, TRUE, '2026-02-28', 4.6),
(17,'Body Lotion', 'Moisturizer', 'Vaseline', 'Cocoa Butter, Glycerin', 'Dry', 299.00, TRUE, '2025-11-15', 4.3),
(18,'Face Primer', 'Makeup Base', 'NYX', 'Silicone, Dimethicone', 'All', 950.00, TRUE, '2026-06-30', 4.7),
(19,'Green Tea Toner', 'Toner', 'Plum', 'Green Tea Extract, Glycolic Acid', 'Oily', 390.00, TRUE, '2025-09-15', 4.5),
(20,'Waterproof Mascara', 'Eye Makeup', 'Maybelline', 'Aqua, Waxes, Carbon Black', 'All', 499.00, TRUE, '2025-12-10', 4.6);

SELECT *  from cosmetics_info;

CREATE TABLE pkl_info(team_id int NOT NULL UNIQUE,team_name varchar(30) NOT NULL,home_city varchar(20) NOT NULL,
    captain varchar(20) NOT NULL UNIQUE,coach_name varchar(25) NOT NULL,team_owner varchar(30) NOT NULL UNIQUE,championships_won int NOT NULL ,
    total_matches_played int NOT NULL,total_wins int,total_points int);
    
desc pkl_info;

INSERT INTO pkl_info VALUES
(1,'Patna Pirates', 'Patna', 'Neeraj Kumar', 'Ram Mehar Singh', 'Rajesh V. Shah', 3, 150, 85, 750),
(2,'U Mumba', 'Mumbai', 'Fazel Atrachali', 'Gholamreza Mazandarani', 'Unilazer Ventures', 1, 140, 78, 720),
(3,'Bengaluru Bulls', 'Bangalore', 'Pawan Sehrawat', 'Randhir Singh', 'Kosmik Global Media', 1, 145, 80, 730),
(4,'Dabang Delhi KC', 'Delhi', 'Naveen Kumar', 'Krishan Kumar Hooda', 'Radha Kapoor', 1, 138, 75, 700),
(5,'Bengal Warriors', 'Kolkata', 'Maninder Singh', 'BC Ramesh', 'Future Group', 1, 142, 77, 710),
(6,'Telugu Titans', 'Hyderabad', 'Siddharth Desai', 'Jagdish Kumble', 'Veera Sports', 0, 135, 65, 640),
(7,'Tamil Thalaivas', 'Chennai', 'Ajay Thakur', 'Jagdish Kumble', 'Consortium of Investors', 0, 130, 55, 600),
(8,'Haryana Steelers', 'Haryana', 'Vikash Kandola', 'Rakesh Kumar', 'JSW Sports', 0, 128, 60, 620),
(9,'UP Yoddha', 'Lucknow', 'Nitesh Kumar', 'Jasveer Singh', 'GMR Group', 0, 132, 68, 670),
(10,'Jaipur Pink Panthers', 'Jaipur', 'Deepak Niwas Hooda', 'Sanjeev Baliyan', 'Abhishek Bachchan', 1, 140, 74, 700),
(11,'Gujarat Giants', 'Ahmedabad', 'Sunil Kumar', 'Manpreet Singh', 'Adani Wilmar Ltd.', 0, 136, 70, 680),
(12,'Mumbai Marvels', 'Mumbai', 'Rahul Chaudhari', 'Uday Kumar', 'XYZ Pvt Ltd.', 0, 120, 50, 550),
(13,'Punjab Panthers', 'Punjab', 'Surjeet Singh', 'Vikas Yadav', 'Punjabi Sports Ltd.', 0, 122, 58, 580),
(14,'Rajasthan Raiders', 'Jaipur', 'Mohit Goyat', 'Narender Singh', 'Rajasthan Sports Club', 0, 118, 52, 540),
(15,'Maharashtra Mavericks', 'Pune', 'Parvesh Bhainswal', 'Anup Kumar', 'Maratha Kabaddi Ltd.', 0, 121, 55, 560),
(16,'Odisha Warriors', 'Bhubaneswar', 'Sachin Tanwar', 'Rajesh Verma', 'Odisha Sports Club', 0, 115, 48, 510),
(17,'Chhattisgarh Chargers', 'Raipur', 'Rohit Kumar', 'Surinder Singh', 'Chhattisgarh Kabaddi Club', 0, 117, 50, 530),
(18,'Madhya Pradesh Masters', 'Bhopal', 'Ashu Malik', 'Amit Sheoran', 'MP Kabaddi Association', 0, 116, 49, 520),
(19,'Kolkata Knights', 'Kolkata', 'Monu Goyat', 'Ravi Shetty', 'Bengal Sports Ventures', 0, 119, 51, 535),
(20,'Goa Gladiators', 'Goa', 'Pardeep Narwal', 'Prashant Chauhan', 'Goa Kabaddi Club', 0, 114, 46, 500);

SELECT * from pkl_info;

ALTER TABLE movies_info ADD COLUMN genre varchar(30);

UPDATE movies_info SET genre = 'Action Thriller' where movie_name = 'Vikram';
UPDATE movies_info SET genre = 'Action Drama' where movie_name = 'Master';
UPDATE movies_info SET genre = 'Action Thriller' where movie_name = 'Kaithi';
UPDATE movies_info SET genre = 'Romantic Drama' where movie_name = '96';
UPDATE movies_info SET genre = 'Action Drama' where movie_name = 'Asuran';
UPDATE movies_info SET genre = 'Biographical Drama' where movie_name = 'Soorarai Pottru';
UPDATE movies_info SET genre = 'Action Drama' where movie_name = 'Karnan';
UPDATE movies_info SET genre = 'Thriller' where movie_name = 'Thani Oruvan';
UPDATE movies_info SET genre = 'Legal Drama' where movie_name = 'Jai Bhim';
UPDATE movies_info SET genre = 'Dark Comedy' where movie_name = 'Super Deluxe';
UPDATE movies_info SET genre = 'Action' where movie_name = 'Petta';
UPDATE movies_info SET genre = 'Action Thriller' where movie_name = 'Mersal';
UPDATE movies_info SET genre = 'Gangster Drama' where movie_name = 'Kabali';
UPDATE movies_info SET genre = 'Action Drama' where movie_name = 'Viswasam';
UPDATE movies_info SET genre = 'Action' where movie_name = 'Vedalam';
UPDATE movies_info SET genre = 'Crime Drama' where movie_name = 'Vada Chennai';
UPDATE movies_info SET genre = 'Sci-Fi' where movie_name = 'Enthiran';
UPDATE movies_info SET genre = 'Psychological Thriller' where movie_name = 'Anniyan';
UPDATE movies_info SET genre = 'Political Thriller' where movie_name = 'Sarkar';
UPDATE movies_info SET genre = 'Sports Drama' where movie_name = 'Bigil';

SELECT * from movies_info;

ALTER TABLE cosmetics_info ADD COLUMN discount int;

UPDATE cosmetics_info SET discount = 10 where product_name = 'Matte Lipstick';
UPDATE cosmetics_info SET discount = 15 where product_name = 'Hydrating Face Cream';
UPDATE cosmetics_info SET discount = 5 where product_name = 'Sunscreen SPF 50';
UPDATE cosmetics_info SET discount = 20 where product_name = 'Kajal Pencil';
UPDATE cosmetics_info SET discount = 12 where product_name = 'Vitamin C Serum';
UPDATE cosmetics_info SET discount = 8 where product_name = 'BB Cream';
UPDATE cosmetics_info SET discount = 10 where product_name = 'Compact Powder';
UPDATE cosmetics_info SET discount = 25 where product_name = 'Aloe Vera Gel';
UPDATE cosmetics_info SET discount = 18 where product_name = 'Charcoal Face Wash';
UPDATE cosmetics_info SET discount = 10 where product_name = 'Hair Serum';
UPDATE cosmetics_info SET discount = 15 where product_name = 'Liquid Eyeliner';
UPDATE cosmetics_info SET discount = 20 where product_name = 'Lip Balm';
UPDATE cosmetics_info SET discount = 5 where product_name = 'Night Repair Cream';
UPDATE cosmetics_info SET discount = 12 where product_name = 'Face Scrub';
UPDATE cosmetics_info SET discount = 8 where product_name = 'CC Cream';
UPDATE cosmetics_info SET discount = 15 where product_name = 'Rose Water Mist';
UPDATE cosmetics_info SET discount = 10 where product_name = 'Body Lotion';
UPDATE cosmetics_info SET discount = 8 where product_name = 'Face Primer';
UPDATE cosmetics_info SET discount = 20 where product_name = 'Green Tea Toner';
UPDATE cosmetics_info SET discount = 10 where product_name = 'Waterproof Mascara';

SELECT * from cosmetics_info;

SELECT COUNT(*) AS total_movies from movies_info;
SELECT AVG(budget) AS avg_budget  from movies_info where movie_id between 10 and 15;
SELECT MAX(budget) AS highest_budget from movies_info;

SELECT COUNT(*) AS total_products from cosmetics_info;
SELECT AVG(price) AS avg_price from cosmetics_info;
SELECT  MAX(price) AS highest_price from cosmetics_info where product_id in (1,2,3,4,9,10,12,18,20);
SELECT AVG(discount_percentage) AS avg_discount from cosmetics_info;

SELECT home_city, SUM(total_wins) AS city_total_wins from pkl_info GROUP BY home_city;
SELECT team_name, total_points from pkl_info GROUP BY team_name, total_points HAVING total_points > 400;
SELECT home_city, COUNT(*) AS total_teams, SUM(total_wins) AS total_city_wins from pkl_info GROUP BY home_city HAVING SUM(total_wins) > 50;

SELECT director_name, COUNT(*) AS total_movies from movies_info GROUP BY director_name;
SELECT genre, SUM(budget) AS total_budget from movies_info GROUP BY genre;




