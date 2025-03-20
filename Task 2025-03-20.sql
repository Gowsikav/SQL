use mar_3;

CREATE TABLE country_info (id int,country_name varchar(20),continent varchar(20),stateCount int,
population_count int,official_language varchar(20));

INSERT INTO country_info VALUES (1, 'India', 'Asia', 28, 1393000000, 'Hindi');
INSERT INTO country_info VALUES (2, 'United States', 'North America', 50, 331000000, 'English');
INSERT INTO country_info VALUES (3, 'China', 'Asia', 23, 1441000000, 'Mandarin');
INSERT INTO country_info VALUES (4, 'Brazil', 'South America', 26, 213000000, 'Portuguese');
INSERT INTO country_info VALUES (5, 'Germany', 'Europe', 16, 83000000, 'German');
INSERT INTO country_info VALUES (6, 'Australia', 'Oceania', 6, 25600000, 'English');
INSERT INTO country_info VALUES (7, 'Canada', 'North America', 10, 38000000, 'English');
INSERT INTO country_info VALUES (8, 'Russia', 'Europe/Asia', 85, 146000000, 'Russian');
INSERT INTO country_info VALUES (9, 'France', 'Europe', 18, 67000000, 'French');
INSERT INTO country_info VALUES (10, 'Japan', 'Asia', 47, 125800000, 'Japanese');
INSERT INTO country_info VALUES (11, 'South Africa', 'Africa', 9, 60000000, 'English');
INSERT INTO country_info VALUES (12, 'Italy', 'Europe', 20, 59000000, 'Italian');
INSERT INTO country_info VALUES (13, 'Mexico', 'North America', 32, 126000000, 'Spanish');
INSERT INTO country_info VALUES (14, 'Argentina', 'South America', 23, 45000000, 'Spanish');
INSERT INTO country_info VALUES (15, 'Egypt', 'Africa', 27, 104000000, 'Arabic');

SELECT * from country_info;

CREATE TABLE state_info (id int,state_name varchar(20),district_count int,
    capital varchar(20),country varchar(20),population int);
  
INSERT INTO state_info VALUES (1, 'Tamil Nadu', 38, 'Chennai', 'India', 80000000);
INSERT INTO state_info VALUES (2, 'Maharashtra', 36, 'Mumbai', 'India', 124000000);
INSERT INTO state_info VALUES (3, 'Uttar Pradesh', 75, 'Lucknow', 'India', 231000000);
INSERT INTO state_info VALUES (4, 'Bihar', 38, 'Patna', 'India', 128000000);
INSERT INTO state_info VALUES (5, 'West Bengal', 23, 'Kolkata', 'India', 100000000);
INSERT INTO state_info VALUES (6, 'Madhya Pradesh', 52, 'Bhopal', 'India', 85000000);
INSERT INTO state_info VALUES (7, 'Rajasthan', 33, 'Jaipur', 'India', 79000000);
INSERT INTO state_info VALUES (8, 'Karnataka', 31, 'Bengaluru', 'India', 70000000);
INSERT INTO state_info VALUES (9, 'Gujarat', 33, 'Gandhinagar', 'India', 69000000);
INSERT INTO state_info VALUES (10, 'Andhra Pradesh', 26, 'Amaravati', 'India', 54000000);
INSERT INTO state_info VALUES (11, 'Odisha', 30, 'Bhubaneswar', 'India', 46000000);
INSERT INTO state_info VALUES (12, 'Telangana', 33, 'Hyderabad', 'India', 40000000);
INSERT INTO state_info VALUES (13, 'Kerala', 14, 'Thiruvananthapuram', 'India', 35000000);
INSERT INTO state_info VALUES (14, 'Punjab', 23, 'Chandigarh', 'India', 31000000);
INSERT INTO state_info VALUES (15, 'Haryana', 22, 'Chandigarh', 'India', 29000000);

SELECT * from state_info;

CREATE TABLE hospital_info (id int,hospital_name varchar(30),
    doctors_count int,patient_count int,address varchar(30),established_year int);
    
INSERT INTO hospital_info VALUES (1, 'AIIMS Delhi', 450, 1500, 'Ansari Nagar, New Delhi', 1956);
INSERT INTO hospital_info VALUES (2, 'Apollo Hospital Chennai', 350, 1200, 'Greams Road, Chennai', 1983);
INSERT INTO hospital_info VALUES (3, 'Fortis Hospital Mumbai', 300, 950, 'Mulund West, Mumbai', 2002);
INSERT INTO hospital_info VALUES (4, 'Medanta Hospital Gurgaon', 400, 1300, 'Sector 38, Gurgaon', 2009);
INSERT INTO hospital_info VALUES (5, 'Max Hospital Delhi', 320, 1050, 'Saket, New Delhi', 2000);
INSERT INTO hospital_info VALUES (6, 'CMC Vellore', 375, 1400, 'Vellore, Tamil Nadu', 1900);
INSERT INTO hospital_info VALUES (7, 'Narayana Health Bangalore', 340, 1100, 'Bommasandra, Bangalore', 2001);
INSERT INTO hospital_info VALUES (8, 'KIMS Hyderabad', 280, 850, 'Begumpet, Hyderabad', 2004);
INSERT INTO hospital_info VALUES (9, 'Ruby Hall Clinic Pune', 290, 900, 'Sassoon Road, Pune', 1959);
INSERT INTO hospital_info VALUES (10, 'Care Hospital Hyderabad', 270, 800, 'Banjara Hills, Hyderabad', 1997);
INSERT INTO hospital_info VALUES (11, 'Manipal Hospital Bangalore', 310, 1000, 'Old Airport Road, Bangalore', 1991);
INSERT INTO hospital_info VALUES (12, 'Sankara Nethralaya Chennai', 150, 500, 'College Road, Chennai', 1978);
INSERT INTO hospital_info VALUES (13, 'Lilavati Hospital Mumbai', 275, 880, 'Bandra Reclamation, Mumbai', 1997);
INSERT INTO hospital_info VALUES (14, 'PGIMER Chandigarh', 420, 1350, 'Sector 12, Chandigarh', 1962);
INSERT INTO hospital_info VALUES (15, 'Tata Memorial Hospital Mumbai', 390, 1250, 'Parel, Mumbai', 1941);

SELECT * from hospital_info; 