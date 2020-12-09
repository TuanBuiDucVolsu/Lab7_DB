use lab7;

CREATE VIEW shop_view AS
SELECT id_N, ssname, place
FROM  shop;
select * from shop_view;

CREATE VIEW entertain_center_view AS
SELECT rname,kind_of_activity
FROM  entertain_center
WHERE time_work IS NOT NULL
WITH CHECK OPTION;
select * from entertain_center_view;

CREATE VIEW shop1_view AS
SELECT id_N, ssname
FROM shop
GROUP BY ssname
HAVING id_N > 2
ORDER BY id_N DESC;
select * from shop1_view;

DELETE FROM shop_view
   WHERE id_N = 5;
select * from shop_view;

UPDATE shop_view
   SET ssname = 'Зара'
   WHERE id_N = 3;
select * from shop_view;