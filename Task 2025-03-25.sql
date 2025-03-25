use mar_3;
CREATE TABLE cricket_info (id int,player_name varchar(20),age int,team varchar(20),
matches_played int,runs int,wickets int,
strike_rate float,average float,position varchar(20));

CREATE TABLE football_info (id int,player_name varchar(20),age int,team varchar(20),
    matches_played int,goals int,assists int,
    pass_accuracy float,rating float,position varchar(20));

INSERT INTO cricket_info values(1, 'Virat Kohli', 35, 'India', 250, 12000, 4, 92.5, 55.3, 'Batsman');
INSERT INTO cricket_info values(2, 'MS Dhoni', 42, 'India', 350, 10000, 1, 85.4, 50.2, 'Wicketkeeper');
INSERT INTO cricket_info values(3, 'Sachin Tendulkar', 50, 'India', 463, 18426, 2, 86.2, 56.8, 'Batsman');
INSERT INTO cricket_info values(4, 'AB de Villiers', 40, 'South Africa', 220, 9577, 5, 101.2, 52.4, 'Batsman');
INSERT INTO cricket_info values(5, 'Chris Gayle', 44, 'West Indies', 300, 10480, 50, 140.1, 45.6, 'All-Rounder');
INSERT INTO cricket_info values(6, 'Jasprit Bumrah', 30, 'India', 150, 2500, 320, 145.2, 22.3, 'Bowler');
INSERT INTO cricket_info values(7, 'Ben Stokes', 33, 'England', 180, 5000, 150, 85.1, 40.7, 'All-Rounder');
INSERT INTO cricket_info values(8, 'Steve Smith', 34, 'Australia', 150, 8900, 5, 78.3, 48.9, 'Batsman');
INSERT INTO cricket_info values(9, 'Kane Williamson', 33, 'New Zealand', 160, 7000, 10, 80.0, 47.5, 'Batsman');
INSERT INTO cricket_info values(10, 'David Warner', 37, 'Australia', 170, 9500, 1, 95.5, 45.2, 'Batsman');
INSERT INTO cricket_info values(11, 'Malinga', 41, 'Sri Lanka', 220, 800, 340, 120.4, 25.7, 'Bowler');
INSERT INTO cricket_info values(12, 'Yuvraj Singh', 42, 'India', 304, 8700, 111, 88.9, 36.8, 'All-Rounder');
INSERT INTO cricket_info values(13, 'Glenn Maxwell', 36, 'Australia', 140, 4800, 45, 140.9, 38.6, 'All-Rounder');
INSERT INTO cricket_info values(14, 'Hardik Pandya', 30, 'India', 120, 3700, 65, 135.0, 35.0, 'All-Rounder');
INSERT INTO cricket_info values(15, 'Andre Russell', 35, 'West Indies', 180, 5000, 110, 155.2, 39.4, 'All-Rounder');

SELECT * from cricket_info;

INSERT INTO football_info values(1, 'Lionel Messi', 37, 'Argentina', 900, 750, 350, 91.2, 95.0, 'Forward');
INSERT INTO football_info values(2, 'Cristiano Ronaldo', 40, 'Portugal', 1100, 850, 250, 89.8, 94.5, 'Forward');
INSERT INTO football_info values(3, 'Neymar Jr', 33, 'Brazil', 600, 400, 200, 87.5, 92.0, 'Forward');
INSERT INTO football_info values(4, 'Kylian Mbappe', 27, 'France', 400, 250, 120, 88.9, 91.8, 'Forward');
INSERT INTO football_info values(5, 'Kevin De Bruyne', 34, 'Belgium', 550, 150, 300, 92.3, 90.2, 'Midfielder');
INSERT INTO football_info values(6, 'Mohamed Salah', 32, 'Egypt', 450, 260, 130, 86.5, 89.7, 'Forward');
INSERT INTO football_info values(7, 'Robert Lewandowski', 38, 'Poland', 700, 500, 120, 85.0, 88.5, 'Forward');
INSERT INTO football_info values(8, 'Luka Modric', 39, 'Croatia', 650, 90, 250, 93.0, 88.9, 'Midfielder');
INSERT INTO football_info values(9, 'Karim Benzema', 37, 'France', 700, 350, 150, 84.9, 88.0, 'Forward');
INSERT INTO football_info values(10, 'Sergio Ramos', 38, 'Spain', 850, 100, 50, 79.0, 86.0, 'Defender');
INSERT INTO football_info values(11, 'Virgil van Dijk', 35, 'Netherlands', 500, 30, 20, 78.0, 85.5, 'Defender');
INSERT INTO football_info values(12, 'Harry Kane', 32, 'England', 500, 350, 100, 83.5, 87.5, 'Forward');
INSERT INTO football_info values(13, 'Son Heung-min', 31, 'South Korea', 450, 230, 150, 87.2, 86.9, 'Forward');
INSERT INTO football_info values(14, 'Erling Haaland', 25, 'Norway', 200, 150, 40, 86.1, 90.0, 'Forward');
INSERT INTO football_info values(15, 'Bruno Fernandes', 30, 'Portugal', 300, 100, 150, 89.5, 87.0, 'Midfielder');

SELECT * from football_info;

ALTER TABLE cricket_info ADD COLUMN country varchar(20);
ALTER TABLE cricket_info ADD COLUMN experience int;

ALTER TABLE football_info ADD COLUMN club varchar(25);
ALTER TABLE football_info ADD COLUMN contract_Until date;

ALTER TABLE cricket_info RENAME COLUMN id TO player_id;
ALTER TABLE cricket_info RENAME COLUMN runs TO total_runs;

ALTER TABLE football_info RENAME COLUMN id TO player_id;
ALTER TABLE football_info RENAME COLUMN goals TO total_goals;

SELECT * from cricket_info;

UPDATE cricket_info SET Total_Runs = 12500 where player_name = 'Virat Kohli' AND age = 35;
UPDATE cricket_info SET position = 'Captain' where player_name = 'Steve Smith' OR player_name = 'Kane Williamson';
UPDATE cricket_info SET experience = 10 where player_name IN ('Hardik Pandya', 'Glenn Maxwell');
UPDATE cricket_info SET country = 'England' where player_name NOT IN ('Virat Kohli', 'Sachin Tendulkar');
SELECT * from cricket_info;
UPDATE football_info SET total_goals = 800 where player_name = 'Cristiano Ronaldo' AND age = 40;
UPDATE football_info SET position = 'Striker' where player_name = 'Erling Haaland' OR Player_Name = 'Harry Kane';
UPDATE football_info SET club = 'Manchester United' where player_name IN ('Bruno Fernandes', 'Cristiano Ronaldo');
UPDATE football_info SET pass_accuracy = 85 where player_name NOT IN ('Kevin De Bruyne', 'Luka Modric');
SELECT * from football_info;

DELETE from cricket_info where player_name='steve smith';
DELETE from cricket_info where player_id=6;
DELETE from cricket_info where player_id=12;
SELECT * from cricket_info;

DELETE from football_info where total_goals=800;
DELETE from football_info where player_id=10;
DELETE from football_info where rating=88;
SELECT * from football_info;

SELECT * from cricket_info where age > 30;
SELECT * from football_info where age BETWEEN 30 AND 40;
SELECT * from cricket_info where position IN ('Batsman', 'All-Rounder');
SELECT * from football_info where player_name NOT IN ('Lionel Messi', 'Neymar Jr');
SELECT * from cricket_info where player_name LIKE 'V%';
SELECT * from football_info where player_name NOT LIKE 'K%';

SELECT * from cricket_info;
SELECT * from football_info;
