use feb_17;

create table users(user_name varchar(20), age int);
desc users;

insert into users values ('ram',10);

DELIMITER $$
CREATE TRIGGER age_check
 BEFORE INSERT ON users FOR EACH ROW
 BEGIN
  IF NEW.age<18
  THEN  
    SIGNAL sqlstate '45000'   -- custom error
      SET message_text='age must be greater than 18';
   END IF;
END $$
DELIMITER ;

drop trigger age_check;

insert into users values('raj',12);
  -- Error Code: 1644. age must be greater than 18	(it will throw error like this)
  -- this row will not insert into table

insert into users values('raj',25);
select * from users;
