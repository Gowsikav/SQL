use mar_3;

CREATE TABLE bank_info (bank_id int,bank_name varchar(30),
    bank_loc varchar(30),ifsc_code varchar(20),no_of_cust int);
    
INSERT INTO bank_info VALUES
(1, 'Axis Bank', 'Delhi', 'AXIS0001', 200),
(2, 'HDFC Bank', 'Mumbai', 'HDFC0002', 350),
(3, 'ICICI Bank', 'Bangalore', 'ICICI0003', 400),
(4, 'SBI', 'Chennai', 'SBI0004', 500),
(5, 'PNB', 'Kolkata', 'PNB0005', 150),
(6, 'Yes Bank', 'Hyderabad', 'YES0006', 180),
(7, 'Kotak Bank', 'Pune', 'KOTAK0007', 210),
(8, 'IDFC Bank', 'Ahmedabad', 'IDFC0008', 300),
(9, 'BOB', 'Jaipur', 'BOB0009', 275),
(10, 'Canara Bank', 'Lucknow', 'CAN00010', 190),
(11, 'Union Bank', 'Bhopal', 'UNION0011', 220),
(12, 'IndusInd Bank', 'Patna', 'IND0012', 130),
(13, 'UCO Bank', 'Ranchi', 'UCO0013', 100),
(14, 'Federal Bank', 'Coimbatore', 'FED0014', 160),
(15, 'Dhanlaxmi Bank', 'Thiruvananthapuram', 'DHB0015', 80);
    
SELECT * from bank_info;

CREATE TABLE cust_info (cust_id int,cust_name varchar(30),
    acc_no varchar(30),bank_id int,balance decimal(15,2));
    
INSERT INTO cust_info VALUES
(101, 'Amit Kumar', 'ACC1001', 1, 50000.00),
(102, 'Priya Sharma', 'ACC1002', 2, 65000.00),
(103, 'Ravi Verma', 'ACC1003', 3, 70000.00),
(104, 'Sneha Joshi', 'ACC1004', 4, 35000.00),
(105, 'Vikas Mehra', 'ACC1005', 5, 20000.00),
(106, 'Meena Iyer', 'ACC1006', 6, 56000.00),
(107, 'Rohan Singh', 'ACC1007', 7, 38000.00),
(108, 'Anjali Desai', 'ACC1008', 2, 45000.00),
(109, 'Kunal Shah', 'ACC1009', 1, 60000.00),
(110, 'Nisha Reddy', 'ACC1010', 3, 42000.00),
(111, 'Rita Fernandes', 'ACC1011', 91, 47000.00),
(112, 'Ajay Mishra', 'ACC1012', 92, 31000.00),
(113, 'Lakshmi Rao', 'ACC1013', 93, 33000.00),
(114, 'Arjun Nair', 'ACC1014', 94, 44000.00),
(115, 'Farhan Khan', 'ACC1015', 95, 30000.00);

SELECT * from cust_info;

CREATE TABLE loan_info (loan_id int,loan_name varchar(20),
    bank_id int,cust_id int,loan_amount decimal(15,2));
    
INSERT INTO loan_info VALUES
(201, 'Home Loan', 1, 101, 1200000.00),
(202, 'Car Loan', 2, 102, 500000.00),
(203, 'Personal Loan', 3, 103, 250000.00),
(204, 'Education Loan', 4, 104, 400000.00),
(205, 'Business Loan', 5, 105, 1000000.00),
(206, 'Car Loan', 2, 21, 300000.00),
(207, 'Home Loan', 3, 24, 1100000.00),
(208, 'Gold Loan', 96, 76, 100000.00),
(209, 'Startup Loan', 97, 99, 150000.00),
(210, 'Bridge Loan', 98, 98, 90000.00),
(211, 'Credit Line', 99, 89, 70000.00),
(212, 'Agricultural Loan', 20, 1000, 60000.00),
(213, 'Medical Loan', 97, 33, 80000.00),
(214, 'Student Loan', 96, 49, 120000.00),
(215, 'Vacation Loan', 98, 65, 130000.00);

SELECT * from loan_info;

CREATE TABLE insurance_info (insr_id int,insr_type varchar(20),
    policy_no varchar(30),bank_id int,cust_id int,loan_id int);
    
INSERT INTO insurance_info VALUES
(301, 'Health', 'POL1001', 1, 101, 201),
(302, 'Life', 'POL1002', 2, 102, 202),
(303, 'Vehicle', 'POL1003', 3, 103, 203),
(304, 'Travel', 'POL1004', 4, 104, 204),
(305, 'Home', 'POL1005', 5, 105, 205),
(306, 'Life', 'POL1006', 2, 108, 206),
(307, 'Health', 'POL1007', 3, 110, 207),
(308, 'Personal', 'POL1008', 3, 111, 9999), 
(309, 'Travel', 'POL1009', 91, 911, 9111),
(310, 'Home', 'POL1010', 92, 912, 9112),
(311, 'Life', 'POL1011', 93, 913, 9113),
(312, 'Health', 'POL1012', 94, 914, 9114),
(313, 'Travel', 'POL1013', 95, 915, 9115),
(314, 'Vehicle', 'POL1014', 96, 916, 9116),
(315, 'Business', 'POL1015', 97, 917, 9117);

SELECT * from insurance_info;
SELECT * from bank_info;
SELECT * FROM loan_info;
SELECT * from cust_info;

SELECT * FROM bank_info b INNER JOIN cust_info c ON b.bank_id=c.bank_id;
SELECT * FROM bank_info b INNER JOIN cust_info c ON b.bank_id=c.bank_id INNER JOIN loan_info l ON c.cust_id = l.cust_id;
 
SELECT * FROM cust_info c INNER JOIN loan_info l ON c.cust_id = l.cust_id;
SELECT i.cust_id,l.loan_id,l.loan_amount,i.insr_id,i.insr_type FROM loan_info l INNER JOIN insurance_info i ON l.loan_id=i.loan_id;
SELECT * FROM loan_info l INNER JOIN insurance_info i ON l.loan_id=i.loan_id INNER JOIN bank_info b ON b.bank_id=i.bank_id;
SELECT * FROM cust_info l INNER JOIN insurance_info i ON l.cust_id=i.cust_id;
SELECT * FROM bank_info b INNER JOIN cust_info c ON b.bank_id=c.bank_id INNER JOIN loan_info l ON c.cust_id = l.cust_id
INNER JOIN insurance_info i ON l.loan_id=i.loan_id;


