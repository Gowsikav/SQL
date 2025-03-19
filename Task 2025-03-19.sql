CREATE TABLE house_rent_details (id INT,house_type VARCHAR(20),rent_price BIGINT,owner_name VARCHAR(30),location VARCHAR(30),
           sq_ft DECIMAL(6,2), parking_available BOOLEAN, contact_no BIGINT);

CREATE TABLE student_info (id INT,first_name VARCHAR(20),last_name VARCHAR(20),
      age INT,enrollment_date DATE);

CREATE TABLE product_inventory (id INT,product_name VARCHAR(30),category VARCHAR(20),
    quantity INT,price DECIMAL(8,2));

CREATE TABLE employee_records (id INT,emp_name VARCHAR(30),department VARCHAR(20),
    salary BIGINT,hire_date DATE);

CREATE TABLE movie_collection (id INT,movie_title VARCHAR(50),
    director_name VARCHAR(30),release_year YEAR,rating DECIMAL(3,1));
    
    /*Add two column*/
ALTER TABLE student_info ADD COLUMN email varchar(30);
ALTER TABLE student_info ADD COLUMN gender varchar(5);
desc student_info;

/* change datatype */
ALTER TABLE product_inventory MODIFY COLUMN price bigint;
ALTER TABLE movie_collection MODIFY COLUMN movie_title varchar(20);
ALTER TABLE employee_records MODIFY COLUMN emp_name varchar(20);

/* change the column name */

ALTER TABLE student_info RENAME COLUMN email TO emailID;
ALTER TABLE employee_records RENAME COLUMN emp_name to employee_name;
ALTER TABLE student_info RENAME COLUMN enrollment_date TO join_date;

desc student_info;
desc employee_records;
desc product_inventory;
desc movie_collection;

/* delete the column */

ALTER TABLE movie_collection DROP COLUMN rating;



    
