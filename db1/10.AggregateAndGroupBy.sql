AGGREGATE OR GROUP FUNCTIONS

SUM
AVG
COUNT
MIN
MAX
STDDEV
VARIANCE

GROUP BY and HAVING




SELECT 
FROM
WHERE
GROUP BY
HAVING
ORDER BY






mysql> select *from vendors;
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
12 rows in set (0.01 sec)

mysql> select STDDEV(VENDOR_PRICE) Standard_Deviation from vendors;
+--------------------+
| Standard_Deviation |
+--------------------+
| 19276.316787417894 |
+--------------------+
1 row in set (0.00 sec)

mysql> select VARIANCE(VENDOR_PRICE) VARIANCE_VENDOR_PRICE from vendors;
+-----------------------+
| VARIANCE_VENDOR_PRICE |
+-----------------------+
|     371576388.8888889 |
+-----------------------+
1 row in set (0.00 sec)

mysql> select VENDOR_NAME  from vendors where VENDOR_COUNTRY = 'India';
+-------------+
| VENDOR_NAME |
+-------------+
| ABC Corp    |
| NULL        |
+-------------+
2 rows in set (0.00 sec)

mysql> select VENDOR_COUNTRY from vendors where VENDOR_NAME = 'ABC Corp';
+----------------+
| VENDOR_COUNTRY |
+----------------+
| India          |
| South Africa   |
+----------------+
2 rows in set (0.00 sec)

mysql> select MIN(VENDOR_PRICE),VENDOR_NAME from vendors GROUP BY VENDOR_NAME;
+-------------------+-------------+
| MIN(VENDOR_PRICE) | VENDOR_NAME |
+-------------------+-------------+
|             10000 | ABC Corp    |
|              5000 | M-net       |
|             21000 | NULL        |
|             10000 | Synergy     |
+-------------------+-------------+
4 rows in set (0.00 sec)

mysql> select COUNT(VENDOR_PRICE),VENDOR_NAME from vendors GROUP BY VENDOR_NAME;
+---------------------+-------------+
| COUNT(VENDOR_PRICE) | VENDOR_NAME |
+---------------------+-------------+
|                   2 | ABC Corp    |
|                   3 | M-net       |
|                   3 | NULL        |
|                   4 | Synergy     |
+---------------------+-------------+
4 rows in set (0.00 sec)

mysql> select SUM(VENDOR_PRICE) from vendors;
+-------------------+
| SUM(VENDOR_PRICE) |
+-------------------+
|            343000 |
+-------------------+
1 row in set (0.00 sec)

mysql> select SUM(VENDOR_PRICE),VENDOR_NAME from vendors GROUP BY VENDOR_NAME;
+-------------------+-------------+
| SUM(VENDOR_PRICE) | VENDOR_NAME |
+-------------------+-------------+
|             20000 | ABC Corp    |
|             51000 | M-net       |
|            134000 | NULL        |
|            138000 | Synergy     |
+-------------------+-------------+
4 rows in set (0.00 sec)

mysql> select VENDOR_NAME from vendors GROUP BY VENDOR_NAME;
+-------------+
| VENDOR_NAME |
+-------------+
| ABC Corp    |
| M-net       |
| NULL        |
| Synergy     |
+-------------+
4 rows in set (0.00 sec)

mysql> select avg(vendor_price) as avg_vendor_price from vendors;
+------------------+
| avg_vendor_price |
+------------------+
|       28583.3333 |
+------------------+
1 row in set (0.00 sec)

mysql> select avg(vendor_price) as avg_vendor_price from vendors group by vendor_name;
+------------------+
| avg_vendor_price |
+------------------+
|       10000.0000 |
|       17000.0000 |
|       44666.6667 |
|       34500.0000 |
+------------------+
4 rows in set (0.00 sec)


-- ------------------------------------------

mysql> select AVG(VENDOR_PRICE) AVERAGE_VENDOR_PRICE from vendors where VENDOR_ID in (8,9);
+----------------------+
| AVERAGE_VENDOR_PRICE |
+----------------------+
|            7500.0000 |
+----------------------+
1 row in set (0.00 sec)

mysql> select * from vendors where AVG(VENDOR_PRICE) = 1000;
ERROR 1111 (HY000): Invalid use of group function

mysql> select MIN(VENDOR_PRICE) from vendors;
+-------------------+
| MIN(VENDOR_PRICE) |
+-------------------+
|              5000 |
+-------------------+
1 row in set (0.00 sec)

mysql> select MIN(VENDOR_PRICE) MINIMUM_VENDOR_PRICE from vendors where VENDOR_ID in (10,11);
+----------------------+
| MINIMUM_VENDOR_PRICE |
+----------------------+
|                48000 |
+----------------------+
1 row in set (0.00 sec)

mysql> select MIN(VENDOR_NAME) MINIMUM_VENDOR_NAME from vendors ;
+---------------------+
| MINIMUM_VENDOR_NAME |
+---------------------+
| ABC Corp            |
+---------------------+
1 row in set (0.00 sec)

mysql> select MAX(VENDOR_PRICE) from vendors;
+-------------------+
| MAX(VENDOR_PRICE) |
+-------------------+
|             65000 |
+-------------------+
1 row in set (0.00 sec)

mysql> select MAX(VENDOR_PRICE) AS MAXIMUM_VENDOR_PRICE from vendors where VENDOR_ID in (10,1);
+----------------------+
| MAXIMUM_VENDOR_PRICE |
+----------------------+
|                54000 |
+----------------------+
1 row in set (0.00 sec)

mysql> select MAX(VENDOR_PRICE) MAXIMUM_VENDOR_PRICE from vendors where VENDOR_ID in (10,1);
+----------------------+
| MAXIMUM_VENDOR_PRICE |
+----------------------+
|                54000 |
+----------------------+
1 row in set (0.00 sec)

mysql> select MAX(VENDOR_NAME) MAXIMUM_VENDOR_NAME from vendors ;
+---------------------+
| MAXIMUM_VENDOR_NAME |
+---------------------+
| Synergy             |
+---------------------+
1 row in set (0.00 sec)