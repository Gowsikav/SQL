use feb_17;

CREATE TABLE customers (customer_id int PRIMARY KEY,customer_name varchar(25),email varchar(25),
    phone_number varchar(15),address varchar(25),city varchar(20),
    state varchar(20),zip_code varchar(10),country varchar(20),registered_date date);
    
ALTER TABLE customers MODIFY customer_id int NOT NULL;
ALTER TABLE customers MODIFY customer_name varchar(25) NOT NULL;
ALTER TABLE customers MODIFY email varchar(25) NOT NULL;
ALTER TABLE customers MODIFY phone_number varchar(15) NOT NULL;
ALTER TABLE customers ADD CONSTRAINT customer_id_uni UNIQUE (customer_id);
ALTER TABLE customers ADD CONSTRAINT email_uni UNIQUE (email);
ALTER TABLE customers ADD CONSTRAINT phone_chk CHECK (phone_number LIKE '9%');

desc customers;

INSERT INTO customers VALUES
(1, 'Arun Kumar', 'arun.k@mail.com', '9876543210', '23 Chozhar Veethi', 'Chennai', 'Tamil Nadu', '600001', 'India', '2024-01-15'),
(2, 'Thamayanthi', 'thamayanthi@mail.com', '9123456789', '56 Marudham Theru', 'Madurai', 'Tamil Nadu', '625002', 'India', '2023-12-10'),
(3, 'Chandrasekar', 'chandra.s@mail.com', '9234567890', '789 Vellalar Theru', 'Tiruchirappalli', 'Tamil Nadu', '620008', 'India', '2023-11-20'),
(4, 'Kalaiarasi', 'kalai.a@mail.com', '9345678901', '101 Puliyaar Veethi', 'Coimbatore', 'Tamil Nadu', '641001', 'India', '2023-09-25'),
(5, 'Mohan Raj', 'mohan.raj@mail.com', '9456789012', '303 Kaveri Street', 'Thanjavur', 'Tamil Nadu', '613001', 'India', '2024-02-05'),
(6, 'Vasanth Kumar', 'vasanth.k@mail.com', '9567890123', '505 Karpagam Nagar', 'Salem', 'Tamil Nadu', '636007', 'India', '2023-08-30'),
(7, 'Revathi', 'revathi@mail.com', '9678901234', '707 Ilango Street', 'Erode', 'Tamil Nadu', '638001', 'India', '2023-07-15'),
(8, 'Dinesh Babu', 'dinesh.b@mail.com', '9789012345', '909 Ayyanar Kovil St', 'Vellore', 'Tamil Nadu', '632004', 'India', '2023-06-22'),
(9, 'Priya Dharshini', 'priya.d@mail.com', '9890123456', '111 Raja Street', 'Tirunelveli', 'Tamil Nadu', '627002', 'India', '2024-03-01'),
(10, 'Sathya Narayanan', 'sathya.n@mail.com', '9901234567', '131 Anbu Nagar', 'Kanyakumari', 'Tamil Nadu', '629702', 'India', '2023-05-12'),
(11, 'Karthikeyan', 'karthik@mail.com', '9012345678', '151 Murugan Street', 'Kanchipuram', 'Tamil Nadu', '631501', 'India', '2023-04-28'),
(12, 'Meenakshi', 'meenakshi@mail.com', '9123456781', '171 Temple Street', 'Madurai', 'Tamil Nadu', '625009', 'India', '2023-03-19'),
(13, 'Elango', 'elango@mail.com', '9234567892', '191 Bharathi Veethi', 'Dindigul', 'Tamil Nadu', '624003', 'India', '2023-02-11'),
(14, 'Anbu Selvan', 'anbu.s@mail.com', '9345678903', '211 Periyar Street', 'Thoothukudi', 'Tamil Nadu', '628002', 'India', '2023-01-07'),
(15, 'Swetha Rani', 'swetha.r@mail.com', '9456789014', '231 Gandhi Nagar', 'Krishnagiri', 'Tamil Nadu', '635001', 'India', '2022-12-05'),
(16, 'Senthil Kumar', 'senthil.k@mail.com', '9567890125', '251 Valluvar Veethi', 'Nagapattinam', 'Tamil Nadu', '611001', 'India', '2022-11-20'),
(17, 'Gowri Shankar', 'gowri.s@mail.com', '9678901236', '271 Kothai Street', 'Karur', 'Tamil Nadu', '639001', 'India', '2022-10-15'),
(18, 'Lakshmi Priya', 'lakshmi.p@mail.com', '9789012347', '291 Andal Street', 'Villupuram', 'Tamil Nadu', '605602', 'India', '2022-09-10'),
(19, 'Saravanan', 'saravanan@mail.com', '9890123458', '311 Kavignar Bharathi St', 'Namakkal', 'Tamil Nadu', '637001', 'India', '2022-08-05'),
(20, 'Naveen Kumar', 'naveen.k@mail.com', '9901234569', '331 Kamarajar Veethi', 'Tiruvannamalai', 'Tamil Nadu', '606601', 'India', '2022-07-01');

SELECT * from customers;

CREATE TABLE orders (order_id int PRIMARY KEY,customer_id int,order_date date,
    total_amount decimal(10,2),order_status varchar(20),payment_method varchar(20),
    shipping_address varchar(25),delivery_date date,tracking_number varchar(20),
    order_notes varchar(50),FOREIGN KEY (customer_id) REFERENCES customers(customer_id));
    
    
ALTER TABLE orders MODIFY order_id int NOT NULL;
ALTER TABLE orders MODIFY customer_id int NOT NULL;
ALTER TABLE orders MODIFY order_date date NOT NULL;
ALTER TABLE orders MODIFY total_amount decimal(10,2) NOT NULL;
ALTER TABLE orders ADD CONSTRAINT order_id_uni UNIQUE (order_id);
ALTER TABLE orders ADD CONSTRAINT tracking_number_uni UNIQUE (tracking_number);
ALTER TABLE orders ADD CONSTRAINT total_amount_chk CHECK (total_amount > 0);
ALTER TABLE orders ADD CONSTRAINT order_status_chk CHECK (order_status IN ('Pending', 'Shipped', 'Delivered', 'Cancelled'));

desc orders;

INSERT INTO orders VALUES
(101, 1, '2024-03-10', 1250.50, 'Shipped', 'Credit Card', '23 Chozhar Veethi', '2024-03-15', 'TN123456789', 'Handle with care'),
(102, 2, '2024-02-22', 2999.99, 'Delivered', 'UPI', '56 Marudham Theru', '2024-02-25', 'TN987654321', 'Urgent delivery'),
(103, 3, '2024-03-05', 850.75, 'Pending', 'Net Banking', '789 Vellalar Theru', NULL, NULL, 'Awaiting confirmation'),
(104, 4, '2024-02-18', 4520.00, 'Delivered', 'Debit Card', '101 Puliyaar Veethi', '2024-02-22', 'TN567890123', 'Gift item'),
(105, 5, '2024-01-10', 1675.25, 'Cancelled', 'Cash on Delivery', '303 Kaveri Street', NULL, NULL, 'Customer cancelled'),
(106, 6, '2024-03-08', 5500.99, 'Shipped', 'Credit Card', '505 Karpagam Nagar', '2024-03-12', 'TN876543210', 'Handle carefully'),
(107, 7, '2024-02-27', 1120.00, 'Delivered', 'UPI', '707 Ilango Street', '2024-03-01', 'TN234567890', 'Perishable item'),
(108, 8, '2024-01-30', 899.49, 'Pending', 'Debit Card', '909 Ayyanar Kovil St', NULL, NULL, 'Awaiting payment'),
(109, 9, '2024-02-11', 299.99, 'Cancelled', 'Cash on Delivery', '111 Raja Street', NULL, NULL, 'Wrong address provided'),
(110, 10, '2024-03-01', 720.00, 'Shipped', 'Net Banking', '131 Anbu Nagar', '2024-03-06', 'TN456789012', 'Express shipping'),
(111, 11, '2024-02-15', 1899.00, 'Delivered', 'Credit Card', '151 Murugan Street', '2024-02-18', 'TN345678901', 'Pack securely'),
(112, 12, '2024-01-25', 699.00, 'Pending', 'UPI', '171 Temple Street', NULL, NULL, 'Waiting for stock'),
(113, 13, '2024-02-28', 1100.99, 'Shipped', 'Debit Card', '191 Bharathi Veethi', '2024-03-04', 'TN678901234', 'Fragile item'),
(114, 14, '2024-03-09', 3400.00, 'Delivered', 'Cash on Delivery', '211 Periyar Street', '2024-03-14', 'TN789012345', 'Deliver in morning'),
(115, 15, '2024-02-03', 120.50, 'Cancelled', 'Net Banking', '231 Gandhi Nagar', NULL, NULL, 'Duplicate order'),
(116, 16, '2024-01-18', 980.00, 'Delivered', 'UPI', '251 Valluvar Veethi', '2024-01-21', 'TN890123456', 'Leave at doorstep'),
(117, 17, '2024-02-24', 1525.75, 'Shipped', 'Credit Card', '271 Kothai Street', '2024-02-28', 'TN901234567', 'Gift wrap needed'),
(118, 18, '2024-01-29', 670.49, 'Pending', 'Debit Card', '291 Andal Street', NULL, NULL, 'Customer requested delay'),
(119, 19, '2024-03-06', 4890.25, 'Delivered', 'Cash on Delivery', '311 Kavignar Bharathi St', '2024-03-11', 'TN012345678', 'Handle with care'),
(120, 20, '2024-02-14', 7500.00, 'Shipped', 'Net Banking', '331 Kamarajar Veethi', '2024-02-19', 'TN569890123', 'Confirm delivery before arrival');

SELECT * from orders;
    
CREATE TABLE order_items (item_id int PRIMARY KEY,order_id int,customer_id int,
    product_name varchar(25),quantity int,price decimal(10,2),discount decimal(5,2),
    tax decimal(5,2),total_price decimal(10,2),remarks varchar(50),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id));
    
   
ALTER TABLE order_items MODIFY item_id int NOT NULL;
ALTER TABLE order_items MODIFY order_id int NOT NULL;
ALTER TABLE order_items MODIFY customer_id int NOT NULL;
ALTER TABLE order_items MODIFY product_name varchar(100) NOT NULL;
ALTER TABLE order_items MODIFY quantity int NOT NULL;
ALTER TABLE order_items MODIFY price decimal(10,2) NOT NULL;
ALTER TABLE order_items ADD CONSTRAINT item_id_uni UNIQUE (item_id);
ALTER TABLE order_items ADD CONSTRAINT product_name_uni UNIQUE (product_name);
ALTER TABLE order_items ADD CONSTRAINT quantity_chk CHECK (quantity > 0);
ALTER TABLE order_items ADD CONSTRAINT price_chk CHECK (price > 0);

desc order_items;

INSERT INTO order_items VALUES
(201, 101, 1, 'Samsung Galaxy S23', 1, 1250.50, 50.00, 100.00, 1300.50, 'Gift wrap requested'),
(202, 102, 2, 'Sony WH-1000XM5 Headphones', 1, 2999.99, 100.00, 150.00, 3049.99, 'Handle with care'),
(203, 103, 3, 'Logitech MX Master 3 Mouse', 2, 850.75, 20.00, 50.00, 1681.50, 'Office use'),
(204, 104, 4, 'HP Pavilion Laptop', 1, 4520.00, 200.00, 250.00, 4570.00, 'Deliver asAP'),
(205, 105, 5, 'Apple AirPods Pro', 1, 1675.25, 50.00, 75.00, 1700.25, 'Check before delivery'),
(206, 106, 6, 'Samsung 55" Smart TV', 1, 5500.99, 300.00, 500.00, 5700.99, 'Fragile item'),
(207, 107, 7, 'Bose SoundLink Speaker', 1, 1120.00, 50.00, 60.00, 1130.00, 'Outdoor use'),
(208, 108, 8, 'asus ROG Gaming Keyboard', 1, 899.49, 20.00, 45.00, 924.49, 'Gaming accessories'),
(209, 109, 9, 'Google Nest Hub', 1, 299.99, 10.00, 20.00, 309.99, 'Smart home device'),
(210, 110, 10, 'Kindle Paperwhite', 1, 720.00, 30.00, 50.00, 740.00, 'For reading books'),
(211, 111, 11, 'Nike Running Shoes', 2, 1899.00, 100.00, 120.00, 3718.00, 'Fitness gear'),
(212, 112, 12, 'Samsung 1TB SSD', 1, 699.00, 25.00, 40.00, 714.00, 'For laptop upgrade'),
(213, 113, 13, 'Canon EOS 200D Camera', 1, 1100.99, 50.00, 75.00, 1125.99, 'Photography equipment'),
(214, 114, 14, 'Dell 27" Monitor', 1, 3400.00, 200.00, 250.00, 3450.00, 'Office monitor'),
(215, 115, 15, 'Xiaomi Mi Band 6', 1, 120.50, 5.00, 10.00, 125.50, 'Fitness tracker'),
(216, 116, 16, 'LG Refrigerator', 1, 980.00, 30.00, 50.00, 1000.00, 'Large item'),
(217, 117, 17, 'OnePlus Nord Buds', 1, 1525.75, 50.00, 70.00, 1545.75, 'Wireless earbuds'),
(218, 118, 18, 'Sony PlayStation 5', 1, 670.49, 20.00, 45.00, 695.49, 'Gaming console'),
(219, 119, 19, 'HP OfficeJet Printer', 1, 4890.25, 200.00, 300.00, 4990.25, 'Office equipment'),
(220, 120, 20, 'Apple MacBook Air M2', 1, 7500.00, 400.00, 500.00, 7600.00, 'Premium product');
 
SELECT * from order_items;

CREATE TABLE payments (payment_id int PRIMARY KEY,customer_id int,order_id int,
    item_id int,payment_date date,amount_paid decimal(10,2),
    payment_method varchar(20),transaction_id varchar(20),payment_status varchar(20),remarks varchar(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES order_items(item_id));
        
ALTER TABLE payments MODIFY payment_id int NOT NULL;
ALTER TABLE payments MODIFY customer_id int NOT NULL;
ALTER TABLE payments MODIFY order_id int NOT NULL;
ALTER TABLE payments MODIFY payment_date date NOT NULL;
ALTER TABLE payments MODIFY amount_paid decimal(10,2) NOT NULL;
ALTER TABLE payments ADD CONSTRAINT payment_id_uni UNIQUE (payment_id);
ALTER TABLE payments ADD CONSTRAINT transaction_id_uni UNIQUE (transaction_id);
ALTER TABLE payments ADD CONSTRAINT amount_paid_chk CHECK (amount_paid > 0);
ALTER TABLE payments ADD CONSTRAINT payment_status_chk CHECK (payment_status IN ('Completed', 'Pending', 'Failed'));

 desc payments;
 
 INSERT INTO payments VALUES
(301, 1, 101, 201, '2024-03-10', 1300.50, 'Credit Card', 'TXN123456', 'Completed', 'Payment successful'),
(302, 2, 102, 202, '2024-02-22', 3049.99, 'UPI', 'TXN987654', 'Completed', 'Fast transaction'),
(303, 3, 103, 203, '2024-03-06', 1681.50, 'Net Banking', 'TXN543210', 'Pending', 'Awaiting bank approval'),
(304, 4, 104, 204, '2024-02-18', 4570.00, 'Debit Card', 'TXN678901', 'Completed', 'Paid successfully'),
(305, 5, 105, 205, '2024-01-10', 1700.25, 'Cash on Delivery', NULL, 'Failed', 'Customer refused to pay'),
(306, 6, 106, 206, '2024-03-08', 5700.99, 'Credit Card', 'TXN345678', 'Completed', 'Secure transaction'),
(307, 7, 107, 207, '2024-02-27', 1130.00, 'UPI', 'TXN456789', 'Completed', 'UPI Payment success'),
(308, 8, 108, 208, '2024-01-30', 924.49, 'Debit Card', 'TXN567890', 'Pending', 'Processing payment'),
(309, 9, 109, 209, '2024-02-11', 309.99, 'Cash on Delivery', NULL, 'Failed', 'Order cancelled'),
(310, 10, 110, 210, '2024-03-01', 740.00, 'Net Banking', 'TXN789012', 'Completed', 'Auto debit enabled'),
(311, 11, 111, 211, '2024-02-15', 3718.00, 'Credit Card', 'TXN890123', 'Completed', 'Successful transaction'),
(312, 12, 112, 212, '2024-01-25', 714.00, 'UPI', 'TXN901234', 'Pending', 'Delayed processing'),
(313, 13, 113, 213, '2024-02-28', 1125.99, 'Debit Card', 'TXN234567', 'Completed', 'Payment received'),
(314, 14, 114, 214, '2024-03-09', 3450.00, 'Cash on Delivery', NULL, 'Failed', 'Customer cancelled order'),
(315, 15, 115, 215, '2024-02-03', 125.50, 'Net Banking', 'TXN345679', 'Completed', 'Auto deducted'),
(316, 16, 116, 216, '2024-01-18', 1000.00, 'UPI', 'TXN456780', 'Completed', 'Payment successful'),
(317, 17, 117, 217, '2024-02-24', 1545.75, 'Credit Card', 'TXN567891', 'Completed', 'Payment verified'),
(318, 18, 118, 218, '2024-01-29', 695.49, 'Debit Card', 'TXN678902', 'Pending', 'Verification in progress'),
(319, 19, 119, 219, '2024-03-06', 4990.25, 'Cash on Delivery', NULL, 'Failed', 'Delivery rejected'),
(320, 20, 120, 220, '2024-02-14', 7600.00, 'Net Banking', 'TXN789013', 'Completed', 'High-value transaction');

CREATE TABLE shipment (shipment_id int PRIMARY KEY,customer_id int,order_id int,
    item_id int,payment_id int,shipment_date date,carrier varchar(20),
    tracking_number varchar(20),delivery_status varchar(20),remarks varchar(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES order_items(item_id),
    FOREIGN KEY (payment_id) REFERENCES payments(payment_id));
      
ALTER TABLE shipment MODIFY shipment_id int NOT NULL;
ALTER TABLE shipment MODIFY customer_id int NOT NULL;
ALTER TABLE shipment MODIFY order_id int NOT NULL;
ALTER TABLE shipment MODIFY shipment_date date NOT NULL;
ALTER TABLE shipment ADD CONSTRAINT shipment_id_uni UNIQUE (shipment_id);
ALTER TABLE shipment ADD CONSTRAINT tracking_number_uni UNIQUE (tracking_number);
ALTER TABLE shipment ADD CONSTRAINT shipment_status_chk CHECK (delivery_status IN ('In Transit', 'Delivered', 'Pending', 'Cancelled'));

desc shipment;

INSERT INTO shipment VALUES
(401, 1, 101, 201, 301, '2024-03-11', 'DHL', 'TRK123456', 'Delivered', 'Delivered successfully'),
(402, 2, 102, 202, 302, '2024-02-23', 'FedEx', 'TRK987654', 'In Transit', 'On the way'),
(403, 3, 103, 203, 303, '2024-03-07', 'UPS', 'TRK543210', 'Pending', 'Waiting for dispatch'),
(404, 4, 104, 204, 304, '2024-02-19', 'BlueDart', 'TRK678901', 'Delivered', 'Received by customer'),
(405, 5, 105, 205, 305, '2024-01-11', 'USPS', NULL, 'Cancelled', 'Order payment failed'),
(406, 6, 106, 206, 306, '2024-03-09', 'Amazon Logistics', 'TRK345678', 'Delivered', 'Customer confirmed delivery'),
(407, 7, 107, 207, 307, '2024-02-28', 'DHL', 'TRK456789', 'In Transit', 'Expected tomorrow'),
(408, 8, 108, 208, 308, '2024-01-31', 'FedEx', 'TRK567890', 'Pending', 'Processing shipment'),
(409, 9, 109, 209, 309, '2024-02-12', 'BlueDart', NULL, 'Cancelled', 'Order was returned'),
(410, 10, 110, 210, 310, '2024-03-02', 'UPS', 'TRK789012', 'Delivered', 'Delivered successfully'),
(411, 11, 111, 211, 311, '2024-02-16', 'USPS', 'TRK890123', 'In Transit', 'Shipment delayed'),
(412, 12, 112, 212, 312, '2024-01-26', 'Amazon Logistics', 'TRK901234', 'Pending', 'Awaiting pickup'),
(413, 13, 113, 213, 313, '2024-02-29', 'DHL', 'TRK234567', 'Delivered', 'Left at reception'),
(414, 14, 114, 214, 314, '2024-03-10', 'FedEx', NULL, 'Cancelled', 'Customer refused delivery'),
(415, 15, 115, 215, 315, '2024-02-04', 'UPS', 'TRK345679', 'Delivered', 'Handed over to receiver'),
(416, 16, 116, 216, 316, '2024-01-19', 'USPS', 'TRK456780', 'Delivered', 'Successfully shipped'),
(417, 17, 117, 217, 317, '2024-02-25', 'Amazon Logistics', 'TRK567891', 'In Transit', 'Arriving soon'),
(418, 18, 118, 218, 318, '2024-01-30', 'DHL', 'TRK678902', 'Pending', 'Yet to be dispatched'),
(419, 19, 119, 219, 319, '2024-03-07', 'BlueDart', NULL, 'Cancelled', 'Rejected by recipient'),
(420, 20, 120, 220, 320, '2024-02-15', 'FedEx', 'TRK789013', 'Delivered', 'Priority shipment');

SELECT * from shipment;

ALTER TABLE customers RENAME COLUMN customer_name TO full_name;
ALTER TABLE customers DROP CONSTRAINT phone_chk;
ALTER TABLE customers RENAME COLUMN phone_number TO contact_number;
ALTER TABLE customers ADD CONSTRAINT check_contact_number CHECK (contact_number LIKE '9%');
ALTER TABLE customers RENAME COLUMN zip_code TO postal_code;
ALTER TABLE customers RENAME COLUMN registered_date TO signup_date;

desc customers;

ALTER TABLE orders DROP CONSTRAINT order_status_chk;
ALTER TABLE orders RENAME COLUMN order_status TO status;
ALTER TABLE orders ADD CONSTRAINT check_status CHECK (status IN ('Pending', 'Shipped', 'Delivered', 'Cancelled'));
ALTER TABLE orders DROP CONSTRAINT total_amount_chk;
ALTER TABLE orders RENAME COLUMN total_amount TO order_total;
ALTER TABLE orders ADD CONSTRAINT check_order_total CHECK (order_total > 0);
ALTER TABLE orders RENAME COLUMN order_notes TO comments;
ALTER TABLE orders RENAME COLUMN tracking_number TO shipment_tracking;

desc orders;

ALTER TABLE order_items RENAME COLUMN product_name TO item_name;
ALTER TABLE order_items RENAME COLUMN total_price TO final_price;
ALTER TABLE order_items RENAME COLUMN tax TO tax_amount;
ALTER TABLE order_items RENAME COLUMN remarks TO notes;
desc order_items;
ALTER TABLE payments RENAME COLUMN payment_date TO transaction_date;
ALTER TABLE payments DROP CONSTRAINT amount_paid_chk;
ALTER TABLE payments RENAME COLUMN amount_paid TO total_paid;
ALTER TABLE payments ADD CONSTRAINT check_total_paid CHECK (total_paid > 0);
ALTER TABLE payments DROP CONSTRAINT payment_status_chk;
ALTER TABLE payments RENAME COLUMN payment_status TO status;
ALTER TABLE payments ADD CONSTRAINT check_payment_status CHECK (status IN ('Completed', 'Pending', 'Failed'));
ALTER TABLE payments RENAME COLUMN remarks TO payment_notes;
desc payments;
ALTER TABLE shipment RENAME COLUMN shipment_date TO dispatch_date;
ALTER TABLE shipment RENAME COLUMN remarks TO delivery_notes;
ALTER TABLE shipment RENAME COLUMN tracking_number TO tracking_id;
ALTER TABLE shipment DROP CONSTRAINT shipment_status_chk;
ALTER TABLE shipment RENAME COLUMN delivery_status TO status;
ALTER TABLE shipment ADD CONSTRAINT check_shipment_status CHECK (status IN ('In Transit', 'Delivered', 'Pending', 'Cancelled'));
desc shipment;

SELECT * from customers where state = 'Tamil Nadu' AND city = 'Chennai';
SELECT * from customers where city = 'Bangalore' OR city = 'Hyderabad';
SELECT * from customers where state IN ('Tamil Nadu', 'Karnataka', 'Maharashtra');
SELECT * from customers where country NOT IN ('India', 'USA');
SELECT * from customers where email LIKE '%gmail.com';
SELECT * from shipment where carrier = 'FedEx' AND status = 'Delivered';
SELECT * from shipment where status = 'Pending' OR status = 'In Transit';
SELECT * from shipment where dispatch_date BETWEEN '2024-01-01' AND '2024-03-31';
SELECT country, COUNT(customer_id) as total_customers from customers GROUP BY country;
SELECT country, COUNT(customer_id) as total_customers from customers GROUP BY country HAVING COUNT(customer_id) > 5;
SELECT * from orders where shipping_address LIKE '%Street%';
SELECT transaction_id, SUM(total_paid) as total_payment from payments GROUP BY transaction_id;
SELECT transaction_id, SUM(total_paid) as total_payment from payments GROUP BY transaction_id HAVING SUM(total_paid) > 20000;
SELECT payment_method, SUM(order_total) as total_revenue from orders GROUP BY payment_method;
SELECT payment_method, SUM(order_total) as total_revenue from orders GROUP BY payment_method HAVING SUM(order_total) > 50000;
SELECT status, COUNT(shipment_id) as total_shipments from shipment GROUP BY status;
SELECT status, COUNT(shipment_id) as total_shipments from shipment GROUP BY status HAVING COUNT(shipment_id) > 10;
SELECT * from order_items where item_name IN ('Television', 'Laptop', 'Smartphone');
SELECT * from order_items where item_name NOT IN ('Tablet', 'Smartwatch');
SELECT * from order_items where item_name LIKE 'S%';
SELECT item_name, AVG(price) as avg_price from order_items GROUP BY item_name;
SELECT item_name, AVG(price) as avg_price from order_items GROUP BY item_name HAVING AVG(price) > 2000;





