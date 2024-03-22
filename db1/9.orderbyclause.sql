-- Order by Clause 

-- SELECT   --column list
-- FROM     --table name
-- WHERE    --filter condition
-- GROUP BY 
-- HAVING
-- ORDER BY; -- Sort the record ASC DESC

-- A-Z
-- Z-A

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
12 rows in set (0.00 sec)

mysql> select VENDOR_ID, VENDOR_NAME, VENDOR_COUNTRY, VENDOR_PRICE from vendors;
+-----------+-------------+----------------+--------------+
| VENDOR_ID | VENDOR_NAME | VENDOR_COUNTRY | VENDOR_PRICE |
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

mysql> select VENDOR_NAME from vendors order by VENDOR_NAME;
+-------------+
| VENDOR_NAME |
+-------------+
| NULL        |
| NULL        |
| NULL        |
| ABC Corp    |
| ABC Corp    |
| M-net       |
| M-net       |
| M-net       |
| Synergy     |
| Synergy     |
| Synergy     |
| Synergy     |
+-------------+
12 rows in set (0.00 sec)

mysql> select * from vendors order by VENDOR_NAME;
+-----------+-------------+----------------+--------------+
| vendor_id | vendor_name | vendor_country | vendor_price |
+-----------+-------------+----------------+--------------+
|         4 | NULL        | Russia         |        21000 |
|        11 | NULL        | India          |        65000 |
|        11 | NULL        | USA            |        48000 |
|         1 | ABC Corp    | India          |        10000 |
|         3 | ABC Corp    | South Africa   |        10000 |
|         2 | M-net       | Bangladesh     |        15000 |
|         6 | M-net       | NULL           |        31000 |
|         9 | M-net       | NULL           |         5000 |
|         5 | Synergy     | USA            |        29000 |
|         7 | Synergy     | Egypt          |        45000 |
|         8 | Synergy     | USA            |        10000 |
|        10 | Synergy     | Angola         |        54000 |
+-----------+-------------+----------------+--------------+
12 rows in set (0.00 sec)

mysql> select VENDOR_NAME from vendors order by VENDOR_NAME ASC;
+-------------+
| VENDOR_NAME |
+-------------+
| NULL        |
| NULL        |
| NULL        |
| ABC Corp    |
| ABC Corp    |
| M-net       |
| M-net       |
| M-net       |
| Synergy     |
| Synergy     |
| Synergy     |
| Synergy     |
+-------------+
12 rows in set (0.00 sec)

mysql> select VENDOR_NAME from vendors order by VENDOR_NAME DESC;
+-------------+
| VENDOR_NAME |
+-------------+
| Synergy     |
| Synergy     |
| Synergy     |
| Synergy     |
| M-net       |
| M-net       |
| M-net       |
| ABC Corp    |
| ABC Corp    |
| NULL        |
| NULL        |
| NULL        |
+-------------+
12 rows in set (0.00 sec)

mysql>mysql> select VENDOR_NAME,vendor_country from vendors order by VENDOR_NAME ASC;
+-------------+----------------+
| VENDOR_NAME | vendor_country |
+-------------+----------------+
| NULL        | Russia         |
| NULL        | India          |
| NULL        | USA            |
| ABC Corp    | India          |
| ABC Corp    | South Africa   |
| M-net       | Bangladesh     |
| M-net       | NULL           |
| M-net       | NULL           |
| Synergy     | USA            |
| Synergy     | Egypt          |
| Synergy     | USA            |
| Synergy     | Angola         |
+-------------+----------------+
12 rows in set (0.00 sec)


mysql> select VENDOR_NAME,vendor_country from vendors order by VENDOR_NAME ASC, vendor_country desc;
+-------------+----------------+
| VENDOR_NAME | vendor_country |
+-------------+----------------+
| NULL        | USA            |
| NULL        | Russia         |
| NULL        | India          |
| ABC Corp    | South Africa   |
| ABC Corp    | India          |
| M-net       | Bangladesh     |
| M-net       | NULL           |
| M-net       | NULL           |
| Synergy     | USA            |
| Synergy     | USA            |
| Synergy     | Egypt          |
| Synergy     | Angola         |
+-------------+----------------+
12 rows in set (0.00 sec)


-- ---------------------------ORDER BY CLAUSE USING EXPRESSION-----------------------------

mysql> select VENDOR_NAME,vendor_country from vendors order by length(vendor_country);
+-------------+----------------+
| VENDOR_NAME | vendor_country |
+-------------+----------------+
| M-net       | NULL           |
| M-net       | NULL           |
| Synergy     | USA            |
| Synergy     | USA            |
| NULL        | USA            |
| ABC Corp    | India          |
| Synergy     | Egypt          |
| NULL        | India          |
| NULL        | Russia         |
| Synergy     | Angola         |
| M-net       | Bangladesh     |
| ABC Corp    | South Africa   |
+-------------+----------------+
12 rows in set (0.00 sec)

mysql> select vendor_country,length(vendor_country) from vendors;
+----------------+------------------------+
| vendor_country | length(vendor_country) |
+----------------+------------------------+
| India          |                      5 |
| Bangladesh     |                     10 |
| South Africa   |                     12 |
| Russia         |                      6 |
| USA            |                      3 |
| NULL           |                   NULL |
| Egypt          |                      5 |
| USA            |                      3 |
| NULL           |                   NULL |
| Angola         |                      6 |
| India          |                      5 |
| USA            |                      3 |
+----------------+------------------------+
12 rows in set (0.00 sec)

mysql> select vendor_country,length(vendor_country) from vendors
    -> WHERE length(vendor_country) = 5 order by vendor_country;
+----------------+------------------------+
| vendor_country | length(vendor_country) |
+----------------+------------------------+
| Egypt          |                      5 |
| India          |                      5 |
| India          |                      5 |
+----------------+------------------------+
3 rows in set (0.00 sec)

-- ----------------------sort by position-----------------------------------

-- this will sort by given order column if 1 then column first in query

mysql> select vendor_country,VENDOR_NAME from vendors ORDER BY 1;
+----------------+-------------+
| vendor_country | VENDOR_NAME |
+----------------+-------------+
| NULL           | M-net       |
| NULL           | M-net       |
| Angola         | Synergy     |
| Bangladesh     | M-net       |
| Egypt          | Synergy     |
| India          | ABC Corp    |
| India          | NULL        |
| Russia         | NULL        |
| South Africa   | ABC Corp    |
| USA            | Synergy     |
| USA            | Synergy     |
| USA            | NULL        |
+----------------+-------------+
12 rows in set (0.00 sec)

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

mysql> select vendor_country,VENDOR_NAME from vendors ORDER BY 1 desc;
+----------------+-------------+
| vendor_country | VENDOR_NAME |
+----------------+-------------+
| USA            | Synergy     |
| USA            | Synergy     |
| USA            | NULL        |
| South Africa   | ABC Corp    |
| Russia         | NULL        |
| India          | ABC Corp    |
| India          | NULL        |
| Egypt          | Synergy     |
| Bangladesh     | M-net       |
| Angola         | Synergy     |
| NULL           | M-net       |
| NULL           | M-net       |
+----------------+-------------+
12 rows in set (0.00 sec)


mysql> select vendor_country,VENDOR_NAME from vendors ORDER BY 1;
+----------------+-------------+
| vendor_country | VENDOR_NAME |
+----------------+-------------+
| NULL           | M-net       |
| NULL           | M-net       |
| Angola         | Synergy     |
| Bangladesh     | M-net       |
| Egypt          | Synergy     |
| India          | ABC Corp    |
| India          | NULL        |
| Russia         | NULL        |
| South Africa   | ABC Corp    |
| USA            | Synergy     |
| USA            | Synergy     |
| USA            | NULL        |
+----------------+-------------+
12 rows in set (0.00 sec)

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

mysql> select vendor_country,VENDOR_NAME from vendors ORDER BY 1 desc;
+----------------+-------------+
| vendor_country | VENDOR_NAME |
+----------------+-------------+
| USA            | Synergy     |
| USA            | Synergy     |
| USA            | NULL        |
| South Africa   | ABC Corp    |
| Russia         | NULL        |
| India          | ABC Corp    |
| India          | NULL        |
| Egypt          | Synergy     |
| Bangladesh     | M-net       |
| Angola         | Synergy     |
| NULL           | M-net       |
| NULL           | M-net       |
+----------------+-------------+
12 rows in set (0.00 sec)

mysql> select vendor_country,VENDOR_NAME from vendors ORDER BY 2 desc;
+----------------+-------------+
| vendor_country | VENDOR_NAME |
+----------------+-------------+
| USA            | Synergy     |
| Egypt          | Synergy     |
| USA            | Synergy     |
| Angola         | Synergy     |
| Bangladesh     | M-net       |
| NULL           | M-net       |
| NULL           | M-net       |
| India          | ABC Corp    |
| South Africa   | ABC Corp    |
| Russia         | NULL        |
| India          | NULL        |
| USA            | NULL        |
+----------------+-------------+
12 rows in set (0.00 sec)


-- ------------------SORTING WITH NULL VALUES----------------------------------------

-- In MySQL, there isn't a direct syntax for NULLS FIRST or NULLS LAST like in some other databases such as PostgreSQL.
-- However, you can achieve similar functionality by using a combination of IS NULL and IS NOT NULL conditions in the ORDER BY clause.

mysql> SELECT VENDOR_NAME, vendor_country FROM vendors ORDER BY VENDOR_NAME IS NULL, VENDOR_NAME ASC;
+-------------+----------------+
| VENDOR_NAME | vendor_country |
+-------------+----------------+
| ABC Corp    | India          |
| ABC Corp    | South Africa   |
| M-net       | Bangladesh     |
| M-net       | NULL           |
| M-net       | NULL           |
| Synergy     | USA            |
| Synergy     | Egypt          |
| Synergy     | USA            |
| Synergy     | Angola         |
| NULL        | Russia         |
| NULL        | India          |
| NULL        | USA            |
+-------------+----------------+


mysql> SELECT VENDOR_NAME, vendor_country FROM vendors ORDER BY VENDOR_NAME IS NOT NULL, VENDOR_NAME desc;
+-------------+----------------+
| VENDOR_NAME | vendor_country |
+-------------+----------------+
| NULL        | Russia         |
| NULL        | India          |
| NULL        | USA            |
| Synergy     | USA            |
| Synergy     | Egypt          |
| Synergy     | USA            |
| Synergy     | Angola         |
| M-net       | Bangladesh     |
| M-net       | NULL           |
| M-net       | NULL           |
| ABC Corp    | India          |
| ABC Corp    | South Africa   |
+-------------+----------------+
12 rows in set (0.00 sec)