-- inner join

-- select common employes details from both table
-- to find common from both table
select el.emp_id, el.emp_name, ed.emp_id,ed.emp_address,ed.emp_address_code from emp_log as el inner join emp_details as ed on el.emp_id=ed.emp_i
d;
+--------+----------+--------+--------------+------------------+
| emp_id | emp_name | emp_id | emp_address  | emp_address_code |
+--------+----------+--------+--------------+------------------+
|      1 | John     |      1 | India        |             4444 |
|      2 | Lilly    |      2 | USA          |             5555 |
|      3 | Peter    |      3 | Russia       |             6666 |
|      4 | Roy      |      4 | South Africa |             7777 |
+--------+----------+--------+--------------+------------------+
4 rows in set (0.00 sec)


-- inner join on 3 tables for common columns inner join
mysql> select el.emp_id, el.emp_name, ed.emp_id,ed.emp_address,ed.emp_address_code,ac.add_code,ac.add_code_name from emp_log as el inner join emp_details as ed on el.emp_id=ed.emp_id inner join address_code_name ac on ed.emp_address_code=ac.add_code;
+--------+----------+--------+--------------+------------------+----------+---------------+
| emp_id | emp_name | emp_id | emp_address  | emp_address_code | add_code | add_code_name |
+--------+----------+--------+--------------+------------------+----------+---------------+
|      1 | John     |      1 | India        |             4444 |     4444 | Asia          |
|      2 | Lilly    |      2 | USA          |             5555 |     5555 | North America |
|      3 | Peter    |      3 | Russia       |             6666 |     6666 | Europe        |
|      4 | Roy      |      4 | South Africa |             7777 |     7777 | Africa        |
+--------+----------+--------+--------------+------------------+----------+---------------+
4 rows in set (0.00 sec)


-- left outer join

mysql> select el.emp_id, el.emp_name, ed.emp_id,ed.emp_address,ed.emp_address_code from emp_log as el left outer join emp_details as ed on el.emp_id=ed.emp_id;
+--------+----------+--------+--------------+------------------+
| emp_id | emp_name | emp_id | emp_address  | emp_address_code |
+--------+----------+--------+--------------+------------------+
|      1 | John     |      1 | India        |             4444 |
|      2 | Lilly    |      2 | USA          |             5555 |
|      3 | Peter    |      3 | Russia       |             6666 |
|      4 | Roy      |      4 | South Africa |             7777 |
|      8 | Nick     |   NULL | NULL         |             NULL |
|      9 | Sam      |   NULL | NULL         |             NULL |
|     10 | Rock     |   NULL | NULL         |             NULL |
+--------+----------+--------+--------------+------------------+
7 rows in set (0.00 sec)


mysql> select el.emp_id, el.emp_name, ed.emp_id,ed.emp_address,ed.emp_address_code from emp_log as el right outer join emp_details as ed on el.emp_id=ed.emp_id;
+--------+----------+--------+--------------+------------------+
| emp_id | emp_name | emp_id | emp_address  | emp_address_code |
+--------+----------+--------+--------------+------------------+
|      1 | John     |      1 | India        |             4444 |
|      2 | Lilly    |      2 | USA          |             5555 |
|      3 | Peter    |      3 | Russia       |             6666 |
|      4 | Roy      |      4 | South Africa |             7777 |
|   NULL | NULL     |      5 | Uk           |             8888 |
|   NULL | NULL     |      6 | Brazil       |             9999 |
|   NULL | NULL     |      7 | New Zealand  |             2222 |
|   NULL | NULL     |     11 | Peru         |                3 |
|   NULL | NULL     |     12 | Cuba         |                2 |
|   NULL | NULL     |     13 | Norway       |                1 |
|   NULL | NULL     |     14 | Singapore    |                0 |
+--------+----------+--------+--------------+------------------+
11 rows in set (0.00 sec)



-- full join with union
SELECT *
FROM table1
LEFT JOIN table2 ON table1.key = table2.key

UNION

SELECT *
FROM table1
RIGHT JOIN table2 ON table1.key = table2.key;



mysql> select el.emp_id, el.emp_name, ed.emp_id,ed.emp_address,ed.emp_address_code from emp_log as el right outer join emp_details as ed on el.emp_id=ed.emp_id union select el.emp_id, el.emp_name, ed.emp_id,ed.emp_address,ed.emp_address_code from emp_log as el left outer join emp_details as ed on el.emp_id=ed.emp_id;
+--------+----------+--------+--------------+------------------+
| emp_id | emp_name | emp_id | emp_address  | emp_address_code |
+--------+----------+--------+--------------+------------------+
|      1 | John     |      1 | India        |             4444 |
|      2 | Lilly    |      2 | USA          |             5555 |
|      3 | Peter    |      3 | Russia       |             6666 |
|      4 | Roy      |      4 | South Africa |             7777 |
|   NULL | NULL     |      5 | Uk           |             8888 |
|   NULL | NULL     |      6 | Brazil       |             9999 |
|   NULL | NULL     |      7 | New Zealand  |             2222 |
|   NULL | NULL     |     11 | Peru         |                3 |
|   NULL | NULL     |     12 | Cuba         |                2 |
|   NULL | NULL     |     13 | Norway       |                1 |
|   NULL | NULL     |     14 | Singapore    |                0 |
|      8 | Nick     |   NULL | NULL         |             NULL |
|      9 | Sam      |   NULL | NULL         |             NULL |
|     10 | Rock     |   NULL | NULL         |             NULL |
+--------+----------+--------+--------------+------------------+
14 rows in set (0.01 sec)