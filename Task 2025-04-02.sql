use mar_3;

CREATE TABLE furniture_info (furniture_id int,furniture_name varchar(30),category varchar(50),
    price decimal(10,2),material varchar(50),dimensions varchar(30),
    style enum('Modern', 'Classic', 'Contemporary', 'Rustic', 'Industrial'),
    weight decimal(6,2),stock_quantity int,manufacturer varchar(30));
    
desc furniture_info;

INSERT INTO furniture_info VALUES
(1, 'Modern Sofa', 'Sofa', 999.99, 'Leather', '115200', 'Modern', 85.5, 10, 'FurnCo'),
(2, 'Dining Table', 'Table', 599.99, 'Oak Wood', '77760', 'Classic', 65.0, 15, 'WoodWorks'),
(3, 'Bookshelf', 'Storage', 299.99, 'Pine', '31104', 'Contemporary', 45.0, 20, 'ShelfMaster'),
(4, 'Bed Frame', 'Bedroom', 799.99, 'Maple', '216000', 'Rustic', 95.0, 8, 'SleepWell'),
(5, 'Coffee Table', 'Table', 249.99, 'Glass', '20736', 'Modern', 30.0, 12, 'GlassCraft'),
(6, 'Wardrobe', 'Storage', 899.99, 'Mahogany', '120960', 'Classic', 120.0, 6, 'WardrobePro'),
(7, 'Office Chair', 'Chair', 349.99, 'Mesh', '28392', 'Contemporary', 25.0, 30, 'OfficePro'),
(8, 'Side Table', 'Table', 149.99, 'Metal', '7776', 'Industrial', 15.0, 25, 'MetalWorks'),
(9, 'TV Stand', 'Storage', 449.99, 'Walnut', '28080', 'Modern', 55.0, 18, 'MediaPro'),
(10, 'Dresser', 'Storage', 699.99, 'Cherry', '38880', 'Classic', 85.0, 10, 'BedroomCo'),
(11, 'Recliner', 'Chair', 599.99, 'Fabric', '53200', 'Contemporary', 75.0, 12, 'ComfortZone'),
(12, 'Desk', 'Office', 399.99, 'Oak', '34560', 'Modern', 45.0, 15, 'WorkSpace'),
(13, 'Cabinet', 'Storage', 299.99, 'Pine', '38880', 'Rustic', 60.0, 20, 'StoragePro'),
(14, 'Bar Stool', 'Chair', 129.99, 'Metal', '7680', 'Industrial', 12.0, 40, 'BarCo'),
(15, 'Mirror', 'Decor', 199.99, 'Glass', '864', 'Contemporary', 15.0, 25, 'MirrorArt');

SELECT * from furniture_info;

ALTER TABLE furniture_info MODIFY furniture_id int NOT NULL;
ALTER TABLE furniture_info MODIFY furniture_name varchar(30) NOT NULL;
ALTER TABLE furniture_info MODIFY stock_quantity int NOT NULL;
ALTER TABLE furniture_info ADD CONSTRAINT furniture_id_uni UNIQUE (furniture_id);
ALTER TABLE furniture_info ADD CONSTRAINT furniture_name_uni UNIQUE (furniture_name);
ALTER TABLE furniture_info ADD CONSTRAINT price_chk CHECK (price > 0);
ALTER TABLE furniture_info ADD CONSTRAINT stock_quantity_chk CHECK (stock_quantity >= 0);

desc furniture_info;

CREATE TABLE electronic_gadgets (gadget_id int,gadget_name varchar(30),brand varchar(20),
    price decimal(10,2),warranty_years int,power_consumption varchar(20),
    category enum('Smartphone', 'Laptop', 'Camera', 'Tablet', 'Smartwatch'),
    weight decimal(5,2),stock_count int,release_date date);
     
desc electronic_gadgets;

ALTER TABLE electronic_gadgets MODIFY gadget_id int NOT NULL;
ALTER TABLE electronic_gadgets MODIFY gadget_name varchar(30) NOT NULL;
ALTER TABLE electronic_gadgets MODIFY warranty_years int NOT NULL;
ALTER TABLE electronic_gadgets ADD CONSTRAINT gadget_id_uni UNIQUE (gadget_id);
ALTER TABLE electronic_gadgets ADD CONSTRAINT gadget_name_uni UNIQUE (gadget_name);
ALTER TABLE electronic_gadgets ADD CONSTRAINT warranty_years_chk CHECK (warranty_years > 0);
ALTER TABLE electronic_gadgets ADD CONSTRAINT stock_count_chk CHECK (stock_count >= 0);

desc electronic_gadgets;

INSERT INTO electronic_gadgets VALUES
(1, 'iPhone 13', 'Apple', 999.99, 1, '20W', 'Smartphone', 0.17, 50, '2023-01-15'),
(2, 'Galaxy Book', 'Samsung', 1299.99, 2, '65W', 'Laptop', 1.50, 30, '2023-02-20'),
(3, 'Canon EOS R5', 'Canon', 3899.99, 2, '45W', 'Camera', 0.74, 15, '2023-03-10'),
(4, 'iPad Pro', 'Apple', 799.99, 1, '18W', 'Tablet', 0.47, 40, '2023-04-05'),
(5, 'Galaxy Watch', 'Samsung', 299.99, 1, '5W', 'Smartwatch', 0.05, 60, '2023-05-15'),
(6, 'MacBook Pro', 'Apple', 1499.99, 1, '96W', 'Laptop', 1.60, 25, '2023-06-20'),
(7, 'Sony A7IV', 'Sony', 2499.99, 2, '35W', 'Camera', 0.70, 20, '2023-07-01'),
(8, 'Surface Pro', 'Microsoft', 999.99, 1, '65W', 'Tablet', 0.77, 35, '2023-08-10'),
(9, 'Pixel 7', 'Google', 699.99, 1, '23W', 'Smartphone', 0.20, 45, '2023-09-15'),
(10, 'Apple Watch', 'Apple', 399.99, 1, '5W', 'Smartwatch', 0.04, 55, '2023-10-01'),
(11, 'Dell XPS', 'Dell', 1399.99, 2, '130W', 'Laptop', 1.80, 22, '2023-11-05'),
(12, 'Nikon Z6', 'Nikon', 1999.99, 2, '40W', 'Camera', 0.67, 18, '2023-12-10'),
(13, 'Galaxy Tab', 'Samsung', 649.99, 1, '45W', 'Tablet', 0.50, 38, '2024-01-15'),
(14, 'OnePlus 9', 'OnePlus', 699.99, 1, '65W', 'Smartphone', 0.19, 42, '2024-02-01'),
(15, 'Fitbit Sense', 'Fitbit', 299.99, 1, '4W', 'Smartwatch', 0.03, 65, '2024-02-15');

SELECT * from electronic_gadgets;

CREATE TABLE restaurant_info (restaurant_id int,restaurant_name varchar(30),location varchar(30),
    contact_number varchar(20),seating_capacity int,rating decimal(3,1),
    cuisine_type enum('Italian', 'Chinese', 'Indian', 'Mexican', 'Japanese'),
    opening_hours varchar(50),website varchar(100),established_date date);
desc restaurant_info;

ALTER TABLE restaurant_info MODIFY restaurant_id int NOT NULL;
ALTER TABLE restaurant_info MODIFY restaurant_name varchar(30) NOT NULL;
ALTER TABLE restaurant_info MODIFY seating_capacity int NOT NULL;
ALTER TABLE restaurant_info MODIFY rating decimal(3,1) NOT NULL;
ALTER TABLE restaurant_info ADD CONSTRAINT restaurant_id_uni UNIQUE (restaurant_id);
ALTER TABLE restaurant_info ADD CONSTRAINT restaurant_name_uni UNIQUE (restaurant_name);
ALTER TABLE restaurant_info ADD CONSTRAINT rating_chk CHECK (rating BETWEEN 0 AND 5);

desc restaurant_info;

INSERT INTO restaurant_info VALUES
(1, 'Pasta Paradise', 'Downtown', '+91 9876543201', 80, 4.5, 'Italian', '11:00-22:00', 'www.pasta.com', '2020-01-15'),
(2, 'Dragon Wok', 'Chinatown', '+91 9876543202', 60, 4.2, 'Chinese', '11:30-23:00', 'www.dragonwok.com', '2019-06-20'),
(3, 'Taj Spice', 'Westside', '+91 9876543203', 70, 4.7, 'Indian', '12:00-22:30', 'www.tajspice.com', '2021-03-10'),
(4, 'Taco Fiesta', 'Southside', '+91 9876543204', 50, 4.3, 'Mexican', '11:00-21:00', 'www.tacofiesta.com', '2018-12-05'),
(5, 'Sushi Master', 'Eastside', '+91 9876543205', 40, 4.8, 'Japanese', '12:00-22:00', 'www.sushimaster.com', '2022-02-15'),
(6, 'Roma Delight', 'Uptown', '+91 9876543206', 90, 4.4, 'Italian', '11:30-23:30', 'www.romadelight.com', '2019-08-20'),
(7, 'Golden Dragon', 'Midtown', '+91 9876543207', 65, 4.1, 'Chinese', '11:00-22:30', 'www.goldendragon.com', '2020-07-01'),
(8, 'Curry House', 'Northwest', '+91 9876543208', 55, 4.6, 'Indian', '12:30-22:00', 'www.curryhouse.com', '2021-05-10'),
(9, 'Mexican Grill', 'Northeast', '+91 9876543209', 75, 4.2, 'Mexican', '11:00-21:30', 'www.mexgrill.com', '2018-09-15'),
(10, 'Sakura', 'Downtown', '+91 9876543210', 45, 4.9, 'Japanese', '12:00-21:00', 'www.sakura.com', '2022-01-01'),
(11, 'Bella Italia', 'Seaside', '+91 9876543211', 85, 4.3, 'Italian', '11:30-22:30', 'www.bellaitalia.com', '2019-11-05'),
(12, 'Peking Duck', 'Riverside', '+91 9876543212', 70, 4.4, 'Chinese', '11:00-23:00', 'www.pekingduck.com', '2020-04-10'),
(13, 'Bombay Spice', 'Hillside', '+91 9876543213', 65, 4.5, 'Indian', '12:00-22:00', 'www.bombayspice.com', '2021-08-15'),
(14, 'El Mariachi', 'Beachside', '+91 9876543214', 80, 4.1, 'Mexican', '11:30-21:30', 'www.elmariachi.com', '2018-10-01'),
(15, 'Tokyo Bay', 'Lakeside', '+91 9876543215', 50, 4.7, 'Japanese', '12:30-22:30', 'www.tokyobay.com', '2022-03-15');

SELECT * from restaurant_info;

CREATE TABLE olympics_info(id int, country varchar(20),player_name varchar(20),no_of_games int,
    sport_type enum('Athletics', 'Swimming', 'Gymnastics', 'Boxing', 'Wrestling'),
    coach_name varchar(20),medal_count int,event_date date,age int,gender enum('Male','Female'));

desc olympics_info;

ALTER TABLE olympics_info MODIFY id int NOT NULL;
ALTER TABLE olympics_info MODIFY player_name varchar(20) NOT NULL;
ALTER TABLE olympics_info MODIFY country varchar(20) NOT NULL;
ALTER TABLE olympics_info MODIFY no_of_games int NOT NULL;
ALTER TABLE olympics_info ADD CONSTRAINT id_uni UNIQUE (id);
ALTER TABLE olympics_info ADD CONSTRAINT player_name_uni UNIQUE (player_name);
ALTER TABLE olympics_info ADD CONSTRAINT medal_count_chk CHECK (medal_count >= 0);
ALTER TABLE olympics_info ADD CONSTRAINT age_chk CHECK (age >= 16);

desc olympics_info;

INSERT INTO olympics_info VALUES
(1, 'USA', 'Michael Phelps', 5, 'Swimming', 'Bob Bowman', 8, '2008-08-15', 23, 'Male'),
(2, 'Jamaica', 'Usain Bolt', 3, 'Athletics', 'Glen Mills', 3, '2016-08-20', 29, 'Male'),
(3, 'India', 'Simone Biles', 4, 'Gymnastics', 'Cecile Landi', 4, '2016-08-11', 19, 'Female'),
(4, 'UK', 'Anthony Joshua', 1, 'Boxing', 'Rob McCracken', 1, '2012-08-12', 22, 'Male'),
(5, 'Russia', 'Abdulrashid', 2, 'Wrestling', 'Magomed Guseinov', 2, '2020-08-06', 25, 'Male'),
(6, 'Australia', 'Emma McKeon', 4, 'Swimming', 'Michael Bohl', 4, '2020-07-25', 27, 'Female'),
(7, 'Kenya', 'Eliud Kipchoge', 2, 'Athletics', 'Patrick Sang', 2, '2016-08-21', 31, 'Male'),
(8, 'China', 'Liu Xiang', 3, 'Gymnastics', 'Sun Haiping', 1, '2008-08-18', 25, 'Male'),
(9, 'Ireland', 'Katie Taylor', 1, 'Boxing', 'Ross Enamait', 1, '2012-08-09', 26, 'Female'),
(10, 'Japan', 'Shohei Ono', 2, 'Wrestling', 'Kosei Inoue', 2, '2020-07-28', 29, 'Male'),
(11, 'Canada', 'Penny Oleksiak', 4, 'Swimming', 'Ben Titley', 4, '2016-08-11', 16, 'Female'),
(12, 'Ethiopia', 'Almaz Ayana', 2, 'Athletics', 'Jama Aden', 1, '2016-08-12', 24, 'Female'),
(13, 'Romania', 'Sandra Izbasa', 3, 'Gymnastics', 'Octavian Belu', 2, '2012-08-07', 22, 'Female'),
(14, 'Cuba', 'Julio La Cruz', 2, 'Boxing', 'Rolando Acebal', 1, '2016-08-18', 27, 'Male'),
(15, 'Turkey', 'Taha Akgul', 2, 'Wrestling', 'Abdullah Akgul', 1, '2016-08-20', 25, 'Male');

SELECT * from olympics_info;

ALTER TABLE furniture_info ADD COLUMN delivery_time int;
ALTER TABLE furniture_info ADD COLUMN warranty_years int;

UPDATE furniture_info SET delivery_time = 10, warranty_years = 5 where furniture_id = 1;
UPDATE furniture_info SET delivery_time = 7, warranty_years = 3 where furniture_id = 2;
UPDATE furniture_info SET delivery_time = 14, warranty_years = 2 where furniture_id = 3;
UPDATE furniture_info SET delivery_time = 12, warranty_years = 4 where furniture_id = 4;
UPDATE furniture_info SET delivery_time = 5, warranty_years = 1 where furniture_id = 5;
UPDATE furniture_info SET delivery_time = 14, warranty_years = 4 where furniture_id = 6;
UPDATE furniture_info SET delivery_time = 5, warranty_years = 2 where furniture_id = 7;
UPDATE furniture_info SET delivery_time = 5, warranty_years = 1 where furniture_id = 8;
UPDATE furniture_info SET delivery_time = 10, warranty_years = 2 where furniture_id = 9;
UPDATE furniture_info SET delivery_time = 12, warranty_years = 3 where furniture_id = 10;
UPDATE furniture_info SET delivery_time = 7, warranty_years = 3 where furniture_id = 11;
UPDATE furniture_info SET delivery_time = 8, warranty_years = 2 where furniture_id = 12;
UPDATE furniture_info SET delivery_time = 14, warranty_years = 2 where furniture_id = 13;
UPDATE furniture_info SET delivery_time = 5, warranty_years = 1 where furniture_id = 14;
UPDATE furniture_info SET delivery_time = 3, warranty_years = 1 where furniture_id = 15;

SELECT * from furniture_info;

ALTER TABLE electronic_gadgets ADD COLUMN color varchar(20);
ALTER TABLE electronic_gadgets ADD COLUMN availability_status varchar(20);

UPDATE electronic_gadgets SET color = 'Space Gray', availability_status = 'In Stock' where gadget_id = 1;
UPDATE electronic_gadgets SET color = 'Mystic Blue', availability_status = 'Limited Stock' where gadget_id = 2;
UPDATE electronic_gadgets SET color = 'Black', availability_status = 'In Stock' where gadget_id = 3;
UPDATE electronic_gadgets SET color = 'Silver', availability_status = 'In Stock' where gadget_id = 4;
UPDATE electronic_gadgets SET color = 'Rose Gold', availability_status = 'In Stock' where gadget_id = 5;
UPDATE electronic_gadgets SET color = 'Space Gray', availability_status = 'Limited Stock' where gadget_id = 6;
UPDATE electronic_gadgets SET color = 'Black', availability_status = 'Limited Stock' where gadget_id = 7;
UPDATE electronic_gadgets SET color = 'Platinum', availability_status = 'In Stock' where gadget_id = 8;
UPDATE electronic_gadgets SET color = 'Just Black', availability_status = 'In Stock' where gadget_id = 9;
UPDATE electronic_gadgets SET color = 'Gold', availability_status = 'In Stock' where gadget_id = 10;
UPDATE electronic_gadgets SET color = 'Silver', availability_status = 'Limited Stock' where gadget_id = 11;
UPDATE electronic_gadgets SET color = 'Black', availability_status = 'Limited Stock' where gadget_id = 12;
UPDATE electronic_gadgets SET color = 'Navy Blue', availability_status = 'In Stock' where gadget_id = 13;
UPDATE electronic_gadgets SET color = 'Arctic Sky', availability_status = 'In Stock' where gadget_id = 14;
UPDATE electronic_gadgets SET color = 'Graphite', availability_status = 'In Stock' where gadget_id = 15;

SELECT * from electronic_gadgets;

ALTER TABLE restaurant_info ADD COLUMN discount int;
ALTER TABLE restaurant_info ADD COLUMN parking_available varchar(10);

UPDATE restaurant_info SET discount = 15, parking_available = 'Yes' where restaurant_id = 1;
UPDATE restaurant_info SET discount = 10, parking_available = 'Yes' where restaurant_id = 2;
UPDATE restaurant_info SET discount = 20, parking_available = 'Yes' where restaurant_id = 3;
UPDATE restaurant_info SET discount = 5, parking_available = 'No' where restaurant_id = 4;
UPDATE restaurant_info SET discount = 25, parking_available = 'No' where restaurant_id = 5;
UPDATE restaurant_info SET discount = 15, parking_available = 'Yes' where restaurant_id = 6;
UPDATE restaurant_info SET discount = 10, parking_available = 'Yes' where restaurant_id = 7;
UPDATE restaurant_info SET discount = 20, parking_available = 'No' where restaurant_id = 8;
UPDATE restaurant_info SET discount = 5, parking_available = 'Yes' where restaurant_id = 9;
UPDATE restaurant_info SET discount = 30, parking_available = 'No' where restaurant_id = 10;
UPDATE restaurant_info SET discount = 15, parking_available = 'Yes' where restaurant_id = 11;
UPDATE restaurant_info SET discount = 10, parking_available = 'Yes' where restaurant_id = 12;
UPDATE restaurant_info SET discount = 25, parking_available = 'No' where restaurant_id = 13;
UPDATE restaurant_info SET discount = 20, parking_available = 'Yes' where restaurant_id = 14;
UPDATE restaurant_info SET discount = 15, parking_available = 'No' where restaurant_id = 15;

SELECT * from restaurant_info;

ALTER TABLE olympics_info ADD COLUMN training_hours varchar(10);
ALTER TABLE olympics_info ADD COLUMN event_venue varchar(20);

UPDATE olympics_info SET training_hours = '45 hrs', event_venue = 'Water Cube' where id = 1;
UPDATE olympics_info SET training_hours = '40 hrs', event_venue = 'Olympic Stadium' where id = 2;
UPDATE olympics_info SET training_hours = '50 hrs', event_venue = 'Ariake Arena' where id = 3;
UPDATE olympics_info SET training_hours = '35 hrs', event_venue = 'Excel Arena' where id = 4;
UPDATE olympics_info SET training_hours = '42 hrs', event_venue = 'Makuhari Messe' where id = 5;
UPDATE olympics_info SET training_hours = '48 hrs', event_venue = 'Aquatics Centre' where id = 6;
UPDATE olympics_info SET training_hours = '38 hrs', event_venue = 'Olympic Stadium' where id = 7;
UPDATE olympics_info SET training_hours = '46 hrs', event_venue = 'Ariake Arena' where id = 8;
UPDATE olympics_info SET training_hours = '36 hrs', event_venue = 'Kokugikan Arena' where id = 9;
UPDATE olympics_info SET training_hours = '44 hrs', event_venue = 'Makuhari Messe' where id = 10;
UPDATE olympics_info SET training_hours = '47 hrs', event_venue = 'Water Cube' where id = 11;
UPDATE olympics_info SET training_hours = '39 hrs', event_venue = 'Olympic Stadium' where id = 12;
UPDATE olympics_info SET training_hours = '43 hrs', event_venue = 'Ariake Arena' where id = 13;
UPDATE olympics_info SET training_hours = '37 hrs', event_venue = 'Kokugikan Arena' where id = 14;
UPDATE olympics_info SET training_hours = '41 hrs', event_venue = 'Makuhari Messe' where id = 15;

SELECT * from olympics_info;

