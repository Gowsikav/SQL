use mar_3;

CREATE TABLE bmtc_details (bus_id int,route varchar(20),driver_name varchar(20),
    conductor_name varchar(20),start_location varchar(20),end_location varchar(20),total_seats int,
    available_seats int,price decimal(5,2),bus_type varchar(20));

CREATE TABLE tourist_info (tourist_id int,tourist_name varchar(20),age INT,
    nationality varchar(20),gender varchar(10),contact varchar(15),
    email varchar(30),visited_place varchar(25),visit_date date,expenditure DECIMAL(10,2));
    
INSERT INTO bmtc_details VALUES (1, '201A', 'Ramesh Kumar', 'Suresh R', 'Majestic', 'Electronic City', 50, 10, 35.50, 'Volvo AC');
INSERT INTO bmtc_details VALUES(2, '202B', 'Anil Sharma', 'Prakash K', 'Silk Board', 'Whitefield', 45, 5, 30.00, 'Non-AC');
INSERT INTO bmtc_details VALUES(3, '203C', 'Vinod B', 'Ravi T', 'K.R. Market', 'Marathahalli', 55, 12, 40.75, 'Volvo AC');
INSERT INTO bmtc_details VALUES(4, '204D', 'Sunil G', 'Manoj S', 'Yeshwanthpur', 'Hebbal', 40, 8, 25.00, 'Ordinary');
INSERT INTO bmtc_details VALUES(5, '205E', 'Karthik J', 'Rajesh P', 'Kengeri', 'BTM Layout', 60, 15, 50.00, 'Luxury AC');
INSERT INTO bmtc_details VALUES(6, '206F', 'Harish N', 'Sandeep K', 'Electronic City', 'Mysore Road', 50, 10, 38.25, 'Volvo AC');
INSERT INTO bmtc_details VALUES(7, '207G', 'Praveen M', 'Arjun L', 'Majestic', 'Banashankari', 55, 5, 30.50, 'Non-AC');
INSERT INTO bmtc_details VALUES(8, '208H', 'Naveen Y', 'Mahesh D', 'Jayanagar', 'Koramangala', 40, 6, 20.00, 'Ordinary');
INSERT INTO bmtc_details VALUES(9, '209I', 'Siddharth T', 'Girish B', 'Hebbal', 'M.G. Road', 45, 7, 32.75, 'Volvo AC');
INSERT INTO bmtc_details VALUES(10, '210J', 'Raghu V', 'Vikas R', 'Electronic City', 'Shivajinagar', 50, 10, 35.00, 'Luxury AC');
INSERT INTO bmtc_details VALUES(11, '211K', 'Vikram S', 'Ravi K', 'Koramangala', 'Whitefield', 55, 20, 40.00, 'Volvo AC');
INSERT INTO bmtc_details VALUES(12, '212L', 'Rajiv N', 'Shankar B', 'Marathahalli', 'BTM Layout', 60, 10, 45.25, 'Luxury AC');
INSERT INTO bmtc_details VALUES(13, '213M', 'Gopal A', 'Vishal P', 'Yelahanka', 'Jayanagar', 40, 5, 27.50, 'Non-AC');
INSERT INTO bmtc_details VALUES(14, '214N', 'Dinesh K', 'Kiran C', 'Silk Board', 'Electronic City', 50, 7, 25.75, 'Ordinary');
INSERT INTO bmtc_details VALUES(15, '215O', 'Sachin T', 'Ramesh G', 'M.G. Road', 'Majestic', 45, 6, 34.50, 'Volvo AC');
INSERT INTO bmtc_details VALUES(16, '216P', 'Surya N', 'Ankit L', 'Majestic', 'Kengeri', 55, 8, 38.00, 'Luxury AC');
INSERT INTO bmtc_details VALUES(17, '217Q', 'Mahadev P', 'Ravi S', 'BTM Layout', 'Marathahalli', 50, 9, 36.25, 'Non-AC');
INSERT INTO bmtc_details VALUES(18, '218R', 'Ravi V', 'Dhanush K', 'Electronic City', 'Whitefield', 60, 12, 42.00, 'Volvo AC');
INSERT INTO bmtc_details VALUES(19, '219S', 'Gokul M', 'Harsha J', 'Jayanagar', 'Hebbal', 40, 10, 28.50, 'Ordinary');
INSERT INTO bmtc_details VALUES(20, '220T', 'Sandeep P', 'Umesh T', 'Whitefield', 'Majestic', 45, 6, 31.75, 'Luxury AC');

SELECT * from bmtc_details;

INSERT INTO tourist_info VALUES(1, 'John Doe', 32, 'USA', 'Male', '9876543210', 'john.doe@gmail.com', 'Mysore Palace', '2024-03-10', 15000.50);
INSERT INTO tourist_info VALUES(2, 'Emma Watson', 28, 'UK', 'Female', '8765432109', 'emma.watson@gmail.com', 'Lalbagh', '2024-03-15', 12000.00);
INSERT INTO tourist_info VALUES(3, 'Rahul Verma', 35, 'India', 'Male', '7654321098', 'rahul.verma@yahoo.com', 'Hampi', '2024-03-20', 18000.75);
INSERT INTO tourist_info VALUES(4, 'Sarah Johnson', 40, 'Canada', 'Female', '6543210987', 'sarah.j@gmail.com', 'Cubbon Park', '2024-03-25', 9500.00);
INSERT INTO tourist_info VALUES(5, 'Michael Brown', 29, 'Australia', 'Male', '5432109876', 'michael.b@gmail.com', 'Nandi Hills', '2024-03-30', 13200.50);
INSERT INTO tourist_info VALUES(6, 'Alicia Smith', 33, 'USA', 'Female', '4321098765', 'alicia.smith@outlook.com', 'Bannerghatta Zoo', '2024-04-05', 11000.25);
INSERT INTO tourist_info VALUES(7, 'William Taylor', 37, 'UK', 'Male', '3210987654', 'will.taylor@gmail.com', 'Coorg', '2024-04-10', 20000.00);
INSERT INTO tourist_info VALUES(8, 'Priya Singh', 27, 'India', 'Female', '2109876543', 'priya.singh@yahoo.com', 'Ooty', '2024-04-15', 17500.00);
INSERT INTO tourist_info VALUES(9, 'David Miller', 45, 'Germany', 'Male', '1098765432', 'david.miller@gmail.com', 'Belur Temple', '2024-04-20', 14500.75);
INSERT INTO tourist_info VALUES(10, 'Sophia Wilson', 31, 'France', 'Female', '9876504321', 'sophia.wilson@outlook.com', 'Gokarna', '2024-04-25', 16000.50);
INSERT INTO tourist_info VALUES(11, 'Ethan Martin', 38, 'USA', 'Male', '8765403219', 'ethan.m@gmail.com', 'Jog Falls', '2024-05-01', 14000.00);
INSERT INTO tourist_info VALUES(12, 'Olivia Brown', 26, 'Australia', 'Female', '7654302198', 'olivia.b@hotmail.com', 'Ranganathittu', '2024-05-05', 12050.25);
INSERT INTO tourist_info VALUES(13, 'Lucas Scott', 34, 'UK', 'Male', '6543021987', 'lucas.scott@gmail.com', 'Agumbe', '2024-05-10', 17500.00);
INSERT INTO tourist_info VALUES(14, 'Arjun Patel', 30, 'India', 'Male', '5430219876', 'arjun.p@gmail.com', 'Chikmagalur', '2024-05-15', 15500.75);
INSERT INTO tourist_info VALUES(15, 'Emily Adams', 29, 'Canada', 'Female', '4321987650', 'emily.adams@gmail.com', 'Mysore Palace', '2024-05-20', 12000.50);
INSERT INTO tourist_info VALUES(16, 'Noah Harris', 39, 'Germany', 'Male', '3219876540', 'noah.h@hotmail.com', 'Hampi', '2024-05-25', 19000.25);
INSERT INTO tourist_info VALUES(17, 'Isabella Lee', 36, 'France', 'Female', '2109876539', 'isabella.l@yahoo.com', 'Gokarna', '2024-05-30', 15000.00);
INSERT INTO tourist_info VALUES(18, 'Mason White', 28, 'India', 'Male', '1098765328', 'mason.w@gmail.com', 'Kodaikanal', '2024-06-05', 17000.00);
INSERT INTO tourist_info VALUES(19, 'Ava Moore', 32, 'USA', 'Female', '9876504327', 'ava.moore@gmail.com', 'Coorg', '2024-06-10', 16500.00);
INSERT INTO tourist_info VALUES(20, 'Liam Carter', 41, 'UK', 'Male', '8765403216', 'liam.c@hotmail.com', 'Wayanad', '2024-06-15', 15500.50);

SELECT * from tourist_info;  
SELECT * from bmtc_details; 
 
SELECT COUNT(*) AS total_buses from bmtc_details;
SELECT AVG(fare) AS average_price from bmtc_details;
SELECT MAX(expenditure) AS max_expenditure from tourist_info;
SELECT SUM(expenditure) AS total_expenditure from tourist_info;

SELECT MAX(price) AS price, bus_type from bmtc_details group by(bus_type);
SELECT AVG(price) AS average_price,bus_type from bmtc_details GROUP BY bus_type HAVING AVG(price) > 25;
SELECT COUNT(*) AS Tourist_Count,nationality from tourist_info GROUP BY nationality HAVING COUNT(*) > 2;
