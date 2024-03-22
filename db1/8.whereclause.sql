mysql> \! cls;

mysql> CREATE TABLE vendors(vendor_id int, vendor_name VARCHAR(100), vendor_country VARCHAR(100),vendor_price int);
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO vendors VALUES (1,'ABC Corp', 'India', 10000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO vendors VALUES (2,'M-net','Bangladesh', 15000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO vendors VALUES (3,'ABC Corp', 'South Africa', 10000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO vendors VALUES (4, null, 'Russia', 21000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO vendors VALUES (5,'Synergy','USA', 29000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO vendors VALUES (6,'M-net', null, 31000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO vendors VALUES (7,'Synergy','Egypt', 45000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO vendors VALUES (8,'Synergy','USA', 10000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO vendors VALUES (9,'M-net', null, 5000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO vendors VALUES (10,'Synergy','Angola', 54000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO vendors VALUES (11, null, 'India', 65000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO vendors VALUES (11, null, 'USA', 48000);
Query OK, 1 row affected (0.00 sec)

mysql> select * from vendors;
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         1 | ABC Corp    | India          |        10000 |
|         2 | M-net       | Bangladesh     |        15000 |
|         3 | ABC Corp    | South Africa   |        10000 |
|         4 | NULL        | Russia         |        21000 |
|         5 | Synergy     | USA            |        29000 |
|         6 | M-net       | NULL           |        31000 |
|         7 | Synergy     | Egypt          |        45000 |
|         8 | Synergy     | USA            |        10000 |
|         9 | M-net       | NULL           |         5000 |
|        10 | Synergy     | Angola         |        54000 |
|        11 | NULL        | India          |        65000 |
|        11 | NULL        | USA            |        48000 |
+-----------+-------------+----------------+--------------+
12 rows in set (0.00 sec)


mysql> select * from vendors where VENDOR_ID = 3;
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         3 | ABC Corp    | South Africa   |        10000 |
+-----------+-------------+----------------+--------------+
1 row in set (0.00 sec)

mysql> select VENDOR_ID, VENDOR_PRICE from vendors where VENDOR_ID = 3;
+-----------+--------------+
| VENDOR_ID | VENDOR_PRICE |
+-----------+--------------+
|         3 |        10000 |
+-----------+--------------+
1 row in set (0.00 sec)

mysql> select * from vendors where VENDOR_NAME = 'Synergy';
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         5 | Synergy     | USA            |        29000 |
|         7 | Synergy     | Egypt          |        45000 |
|         8 | Synergy     | USA            |        10000 |
|        10 | Synergy     | Angola         |        54000 |
+-----------+-------------+----------------+--------------+
4 rows in set (0.00 sec)

mysql> select * from vendors where lower(VENDOR_NAME) = 'synergy';
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         5 | Synergy     | USA            |        29000 |
|         7 | Synergy     | Egypt          |        45000 |
|         8 | Synergy     | USA            |        10000 |
|        10 | Synergy     | Angola         |        54000 |
+-----------+-------------+----------------+--------------+
4 rows in set (0.00 sec)

mysql> select * from vendors where upper(VENDOR_NAME) = 'synergy';
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         5 | Synergy     | USA            |        29000 |
|         7 | Synergy     | Egypt          |        45000 |
|         8 | Synergy     | USA            |        10000 |
|        10 | Synergy     | Angola         |        54000 |
+-----------+-------------+----------------+--------------+
4 rows in set (0.00 sec)

mysql> select * from vendors where upper(vendor_country) = 'synergy';
Empty set (0.00 sec)

mysql> select * from vendors where upper(vendor_country) = 'SYNERGY';
Empty set (0.00 sec)

mysql> select * from vendors where upper(vendor_country) = 'usa';
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         5 | Synergy     | USA            |        29000 |
|         8 | Synergy     | USA            |        10000 |
|        11 | NULL        | USA            |        48000 |
+-----------+-------------+----------------+--------------+
3 rows in set (0.00 sec)

mysql> select * from vendors where upper(vendor_country) = 'USA';
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         5 | Synergy     | USA            |        29000 |
|         8 | Synergy     | USA            |        10000 |
|        11 | NULL        | USA            |        48000 |
+-----------+-------------+----------------+--------------+
3 rows in set (0.00 sec)

mysql> select upper(vendor_name) from vendors where upper(vendor_country) =
'USA';
+--------------------+
| upper(vendor_name) |
+--------------------+
| SYNERGY            |
| SYNERGY            |
| NULL               |
+--------------------+
3 rows in set (0.00 sec)

mysql> select * from vendors where lower(vendor_country) = 'USA';
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         5 | Synergy     | USA            |        29000 |
|         8 | Synergy     | USA            |        10000 |
|        11 | NULL        | USA            |        48000 |
+-----------+-------------+----------------+--------------+
3 rows in set (0.00 sec)

mysql> select * from vendors where vendor_country = 'usa';
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         5 | Synergy     | USA            |        29000 |
|         8 | Synergy     | USA            |        10000 |
|        11 | NULL        | USA            |        48000 |
+-----------+-------------+----------------+--------------+
3 rows in set (0.00 sec)

mysql> select * from vendors where VENDOR_NAME = 'synergy';
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         5 | Synergy     | USA            |        29000 |
|         7 | Synergy     | Egypt          |        45000 |
|         8 | Synergy     | USA            |        10000 |
|        10 | Synergy     | Angola         |        54000 |
+-----------+-------------+----------------+--------------+
4 rows in set (0.00 sec)

-- ------------------------------------------------------------------------------------------------------------
-- AND 
-- OR
-- < > <= >=  <> !=
-- In
-- Between



mysql> SELECT * FROM VENDORS WHERE vendor_name = 'Synergy' AND VENDOR_PRICE > 8000;
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         5 | Synergy     | USA            |        29000 |
|         7 | Synergy     | Egypt          |        45000 |
|         8 | Synergy     | USA            |        10000 |
|        10 | Synergy     | Angola         |        54000 |
+-----------+-------------+----------------+--------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM VENDORS WHERE VENDOR_PRICE > 1000 AND VENDOR_PRICE < 20000;
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         1 | ABC Corp    | India          |        10000 |
|         2 | M-net       | Bangladesh     |        15000 |
|         3 | ABC Corp    | South Africa   |        10000 |
|         8 | Synergy     | USA            |        10000 |
|         9 | M-net       | NULL           |         5000 |
+-----------+-------------+----------------+--------------+
5 rows in set (0.00 sec)

mysql>
mysql> ^C
mysql> SELECT * FROM VENDORS WHERE vendor_name <> 'Synergy';
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         1 | ABC Corp    | India          |        10000 |
|         2 | M-net       | Bangladesh     |        15000 |
|         3 | ABC Corp    | South Africa   |        10000 |
|         6 | M-net       | NULL           |        31000 |
|         9 | M-net       | NULL           |         5000 |
+-----------+-------------+----------------+--------------+
5 rows in set (0.00 sec)


mysql> SELECT * FROM VENDORS WHERE vendor_name = 'Synergy' OR VENDOR_PRICE > 8000;
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         1 | ABC Corp    | India          |        10000 |
|         2 | M-net       | Bangladesh     |        15000 |
|         3 | ABC Corp    | South Africa   |        10000 |
|         4 | NULL        | Russia         |        21000 |
|         5 | Synergy     | USA            |        29000 |
|         6 | M-net       | NULL           |        31000 |
|         7 | Synergy     | Egypt          |        45000 |
|         8 | Synergy     | USA            |        10000 |
|        10 | Synergy     | Angola         |        54000 |
|        11 | NULL        | India          |        65000 |
|        11 | NULL        | USA            |        48000 |
+-----------+-------------+----------------+--------------+
11 rows in set (0.00 sec)

mysql> SELECT vendor_id, vendor_name, vendor_country, vendor_price
    -> FROM vendors WHERE vendor_price BETWEEN 10000 AND 54000;
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         1 | ABC Corp    | India          |        10000 |
|         2 | M-net       | Bangladesh     |        15000 |
|         3 | ABC Corp    | South Africa   |        10000 |
|         4 | NULL        | Russia         |        21000 |
|         5 | Synergy     | USA            |        29000 |
|         6 | M-net       | NULL           |        31000 |
|         7 | Synergy     | Egypt          |        45000 |
|         8 | Synergy     | USA            |        10000 |
|        10 | Synergy     | Angola         |        54000 |
|        11 | NULL        | USA            |        48000 |
+-----------+-------------+----------------+--------------+
10 rows in set (0.00 sec)

mysql> SELECT vendor_id, vendor_name, vendor_country, vendor_price
    -> FROM vendors WHERE vendor_id = 2,3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',3' at line 2
mysql> SELECT vendor_id, vendor_name, vendor_country, vendor_price
    -> FROM vendors WHERE vendor_id in(2,3);
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         2 | M-net       | Bangladesh     |        15000 |
|         3 | ABC Corp    | South Africa   |        10000 |
+-----------+-------------+----------------+--------------+
2 rows in set (0.00 sec)

mysql> SELECT vendor_id, vendor_name, vendor_country, vendor_price
    -> FROM vendors WHERE vendor_id IN (2, 3, 5, 6, 7);
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         2 | M-net       | Bangladesh     |        15000 |
|         3 | ABC Corp    | South Africa   |        10000 |
|         5 | Synergy     | USA            |        29000 |
|         6 | M-net       | NULL           |        31000 |
|         7 | Synergy     | Egypt          |        45000 |
+-----------+-------------+----------------+--------------+
5 rows in set (0.00 sec)

mysql>