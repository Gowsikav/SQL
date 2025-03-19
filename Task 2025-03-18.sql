CREATE DATABASE feb_17;
CREATE DATABASE mar_3; 
CREATE DATABASE airlines; 

use airlines;

CREATE TABLE airlines_details(id int, airline_name varchar(20),src varchar(20),dst varchar(20),passengers_count int);
CREATE TABLE airplane_details(id int, pilot_name varchar(20), food_available int, ticket_price bigint,staffs_count int);
DESC airlines_details;

CREATE TABLE flights (flight_id int,flight_number varchar(10),src varchar(50),destination varchar(50),departure_time datetime,arrival_time datetime);
CREATE TABLE passengers (passenger_id int,first_name varchar(50),last_name varchar(50),passport_number varchar(20),nationality varchar(50),flight_id int);