mysql> \! cls;

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
12 rows in set (0.03 sec)

mysql> select distinct vendor_name from vendors;
+-------------+
| vendor_name |
+-------------+
| ABC Corp    |
| M-net       |
| NULL        |
| Synergy     |
+-------------+
4 rows in set (0.00 sec)

mysql> select VENDOR_NAME from vendors GROUP BY VENDOR_NAME,VENDOR_COUNTRY;
+-------------+
| VENDOR_NAME |
+-------------+
| ABC Corp    |
| M-net       |
| ABC Corp    |
| NULL        |
| Synergy     |
| M-net       |
| Synergy     |
| Synergy     |
| NULL        |
| NULL        |
+-------------+
10 rows in set (0.00 sec)

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

mysql> select VENDOR_NAME,VENDOR_COUNTRY from vendors GROUP BY VENDOR_NAME,VENDOR_COUNTRY;
+-------------+----------------+
| VENDOR_NAME | VENDOR_COUNTRY |
+-------------+----------------+
| ABC Corp    | India          |
| M-net       | Bangladesh     |
| ABC Corp    | South Africa   |
| NULL        | Russia         |
| Synergy     | USA            |
| M-net       | NULL           |
| Synergy     | Egypt          |
| Synergy     | Angola         |
| NULL        | India          |
| NULL        | USA            |
+-------------+----------------+
10 rows in set (0.00 sec)

mysql> select COUNT(VENDOR_NAME),VENDOR_NAME,VENDOR_COUNTRY from vendors GROUP BY VENDOR_NAME,VENDOR_COUNTRY;
+--------------------+-------------+----------------+
| COUNT(VENDOR_NAME) | VENDOR_NAME | VENDOR_COUNTRY |
+--------------------+-------------+----------------+
|                  1 | ABC Corp    | India          |
|                  1 | M-net       | Bangladesh     |
|                  1 | ABC Corp    | South Africa   |
|                  0 | NULL        | Russia         |
|                  2 | Synergy     | USA            |
|                  2 | M-net       | NULL           |
|                  1 | Synergy     | Egypt          |
|                  1 | Synergy     | Angola         |
|                  0 | NULL        | India          |
|                  0 | NULL        | USA            |
+--------------------+-------------+----------------+
10 rows in set (0.00 sec)

mysql> select sum(vendor_price) from vendors;
+-------------------+
| sum(vendor_price) |
+-------------------+
|            343000 |
+-------------------+
1 row in set (0.00 sec)

mysql> select sum(vendor_price) from vendors group by vendor_name;
+-------------------+
| sum(vendor_price) |
+-------------------+
|             20000 |
|             51000 |
|            134000 |
|            138000 |
+-------------------+
4 rows in set (0.00 sec)

mysql> select sum(vendor_price) from vendors group by vendor_country;
+-------------------+
| sum(vendor_price) |
+-------------------+
|             75000 |
|             15000 |
|             10000 |
|             21000 |
|             87000 |
|             36000 |
|             45000 |
|             54000 |
+-------------------+
8 rows in set (0.00 sec)

mysql>mysql> select VENDOR_NAME,MIN(VENDOR_PRICE),MAX(VENDOR_PRICE),SUM(VENDOR_PRICE) from vendors GROUP BY VENDOR_NAME;
+-------------+-------------------+-------------------+-------------------+
| VENDOR_NAME | MIN(VENDOR_PRICE) | MAX(VENDOR_PRICE) | SUM(VENDOR_PRICE) |
+-------------+-------------------+-------------------+-------------------+
| ABC Corp    |             10000 |             10000 |             20000 |
| M-net       |              5000 |             31000 |             51000 |
| NULL        |             21000 |             65000 |            134000 |
| Synergy     |             10000 |             54000 |            138000 |
+-------------+-------------------+-------------------+-------------------+
4 rows in set (0.01 sec)



--------------------where clause with groupby-------------------
mysql> select sum(vendor_price) from vendors where vendor_name in('ABC Corp', 'M-net') group by vendor_name;
+-------------------+
| sum(vendor_price) |
+-------------------+
|             20000 |
|             51000 |
+-------------------+
2 rows in set (0.00 sec)

mysql> select vendor_name, sum(vendor_price) from vendors where vendor_name in('ABC Corp', 'M-net') group by vendor_name;
+-------------+-------------------+
| vendor_name | sum(vendor_price) |
+-------------+-------------------+
| ABC Corp    |             20000 |
| M-net       |             51000 |
+-------------+-------------------+
2 rows in set (0.00 sec)




------------------------------------------------------------------------------------



mysql> select MIN(AVG(VENDOR_PRICE)),MAX(AVG(VENDOR_PRICE)) from vendors where VENDOR_NAME IS NOT NULL GROUP BY VENDOR_NAME;
ERROR 1111 (HY000): Invalid use of group function

--oracle qurey mysql conversion
mysql> SELECT
    ->     VENDOR_NAME,
    ->     MIN(AVG(VENDOR_PRICE)) AS min_avg_price,
    ->     MAX(AVG(VENDOR_PRICE)) AS max_avg_price
    -> FROM
    ->     vendors
    -> WHERE
    ->     VENDOR_NAME IS NOT NULL
    -> GROUP BY
    ->     VENDOR_NAME;
ERROR 1111 (HY000): Invalid use of group function
mysql> SELECT
    ->     MIN(avg_price) AS min_avg_price,
    ->     MAX(avg_price) AS max_avg_price
    -> FROM (
    ->     SELECT
    ->         VENDOR_NAME,
    ->         AVG(VENDOR_PRICE) AS avg_price
    ->     FROM
    ->         vendors
    ->     WHERE
    ->         VENDOR_NAME IS NOT NULL
    ->     GROUP BY
    ->         VENDOR_NAME
    -> ) AS vendor_avg_prices;
+---------------+---------------+
| min_avg_price | max_avg_price |
+---------------+---------------+
|    10000.0000 |    34500.0000 |
+---------------+---------------+
1 row in set (0.00 sec)

mysql> SELECT MIN(AVG_PRICE) AS min_avg_price, MAX(AVG_PRICE) AS max_avg_price
    -> FROM (
    ->     SELECT VENDOR_NAME, AVG(VENDOR_PRICE) AS AVG_PRICE
    ->     FROM vendors
    ->     WHERE VENDOR_NAME IS NOT NULL
    ->     GROUP BY VENDOR_NAME
    -> ) AS subquery;
+---------------+---------------+
| min_avg_price | max_avg_price |
+---------------+---------------+
|    10000.0000 |    34500.0000 |
+---------------+---------------+
1 row in set (0.00 sec)