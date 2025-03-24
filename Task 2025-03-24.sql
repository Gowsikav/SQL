use mar_3;

show tables;

SELECT * from hospital_info;
SELECT * from country_info;
SELECT * from state_info;

SELECT * from hospital_info where established_year IN(2000,2001,2004,2009);
SELECT * from country_info where continent IN('Asia','Europe','North America','Africa');

SELECT * from hospital_info where established_year NOT IN(2000,2001,2004);
SELECT * from state_info where capital NOT IN ('chennai','patna','lucknow');
SELECT * from country_info where continent NOT IN('Asia','Europe','North America','Africa');

SELECT * from hospital_info where patient_count between 500 and 1000;
SELECT * from country_info where stateCount between 20 and 30;
SELECT * from state_info where district_count between 15 and 25 and population>25000000; 

SELECT * from hospital_info where doctors_count not between 250 and 300;
SELECT * from state_info where id not between 5 and 10;

SELECT country_name from country_info where official_language='English' or stateCount between 20 and 25;
 
SELECT * from country_info;
UPDATE country_info set continent='Europe' where id=8;
UPDATE country_info set stateCount=10 where continent='oceania';
UPDATE country_info set population_count=2200000 where country_name='mexico'; 

SELECT * from state_info;
UPDATE state_info set district_count=35 where state_name='Maharashtra';
UPDATE state_info set population=2500000 where id between 2 and 5;
UPDATE state_info set capital='chennai' where state_name='karnataka' and district_count=31;

SELECT * from hospital_info;
UPDATE hospital_info set patient_count =950 where doctors_count between 350 and 400;
SELECT * from hospital_info where doctors_count between 350 and 400;
UPDATE hospital_info set address='chennai' where established_year in(2008,2009,2010);
SELECT * from hospital_info where established_year in(2008,2009,2010);

SELECT * from country_info;
UPDATE country_info set population_count=2300000 where country_name='China' or official_language='portuguese';
UPDATE country_info set stateCount=20 where id between 8 and 12 and (continent='asia');
SELECT * from country_info where id between 8 and 12 and (continent='asia');

