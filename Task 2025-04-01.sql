use mar_3;

desc movies_info;

ALTER TABLE movies_info MODIFY COLUMN genre varchar(30) NOT NULL;
ALTER TABLE movies_info MODIFY COLUMN budget bigint;
ALTER TABLE movies_info MODIFY COLUMN budget bigint CHECK (budget >= 100000);

desc cosmetics_info;

ALTER TABLE cosmetics_info MODIFY COLUMN category VARCHAR(30);
ALTER TABLE cosmetics_info MODIFY COLUMN rating decimal(3,1) CHECK (rating<5);
ALTER TABLE cosmetics_info MODIFY COLUMN ingredients varchar(40) NOT NULL;
ALTER TABLE cosmetics_info MODIFY COLUMN price decimal(10,2) NOT NULL CHECK (price>100);

desc pkl_info;

ALTER TABLE pkl_info MODIFY COLUMN home_city varchar(20);
ALTER TABLE pkl_info MODIFY COLUMN total_points int NOT NULL;
ALTER TABLE pkl_info MODIFY COLUMN championships_won int CHECK (championships_won >= 0);


