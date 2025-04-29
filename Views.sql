use mar_3;
select * from cricket_info;

CREATE VIEW history AS SELECT player_name, age,team FROM cricket_info ORDER BY total_runs DESC;

SELECT * FROM history;

-- to change

create or replace view history as select * from cricket_info;  
alter view history as select * from cricket_info order by total_runs;

-- to delete the view 

DROP VIEW history;
