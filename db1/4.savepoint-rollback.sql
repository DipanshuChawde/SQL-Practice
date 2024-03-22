DDL
CREATE, ALTER,TRUNCATE, DROP,RENAME

DML
INSERT UPDATE DELETE

TCL
COMMIT ROLLBACK SAVEPOINT

ORACLE SQL - COMMIT ROLLBACK SAVEPOINT
MS SQL SERVER - ROLLBACK

Transactional Control Language 




mysql> select * from student_info;
+--------+----------+-----------+------------+-------------+--------+---------+-----------+
| std_id | std_name | parent_nm | ph_no      | add_of_std  | city   | country | blood_gro |
+--------+----------+-----------+------------+-------------+--------+---------+-----------+
|      1 | Amol     | Rao       | 9898989898 | Kharadi     | Pune   | India   | A         |
|      4 | Rahul    | Mishra    | 6545847414 | Civil Lines | Mumbai | India   | A+        |
|      2 | Hari     | Prasad    | 78787878   | Viman Nagar | pune   | India   | B+        |
|      5 | Rvinay   | kukarni   | 78787878   | meera road  | mumbai | India   | O-        |
|      6 | ram      | mohol     | 8765896534 | bibwewadi   | pune   | india   | o+        |
+--------+----------+-----------+------------+-------------+--------+---------+-----------+
5 rows in set (0.00 sec)


mysql> start transaction;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into student_info values(7, 'seema', 'karve',9965896534, 'wakad', 'pune','india','o+');
Query OK, 1 row affected (0.00 sec)

mysql> update student_info set blood_gro='A-' where std_name='Amol';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> savepoint s1;
Query OK, 0 rows affected (0.00 sec)

mysql> update student_info set blood_gro='A-' where std_name='Rahul';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student_info;
+--------+----------+-----------+------------+-------------+--------+---------+-----------+
| std_id | std_name | parent_nm | ph_no      | add_of_std  | city   | country | blood_gro |
+--------+----------+-----------+------------+-------------+--------+---------+-----------+
|      1 | Amol     | Rao       | 9898989898 | Kharadi     | Pune   | India   | A-        |
|      4 | Rahul    | Mishra    | 6545847414 | Civil Lines | Mumbai | India   | A-        |
|      2 | Hari     | Prasad    | 78787878   | Viman Nagar | pune   | India   | B+        |
|      5 | Rvinay   | kukarni   | 78787878   | meera road  | mumbai | India   | O-        |
|      6 | ram      | mohol     | 8765896534 | bibwewadi   | pune   | india   | o+        |
|      7 | seema    | karve     | 9965896534 | wakad       | pune   | india   | o+        |
+--------+----------+-----------+------------+-------------+--------+---------+-----------+
6 rows in set (0.00 sec)

mysql> rollback to s1;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from student_info;
+--------+----------+-----------+------------+-------------+--------+---------+-----------+
| std_id | std_name | parent_nm | ph_no      | add_of_std  | city   | country | blood_gro |
+--------+----------+-----------+------------+-------------+--------+---------+-----------+
|      1 | Amol     | Rao       | 9898989898 | Kharadi     | Pune   | India   | A-        |
|      4 | Rahul    | Mishra    | 6545847414 | Civil Lines | Mumbai | India   | A+        |
|      2 | Hari     | Prasad    | 78787878   | Viman Nagar | pune   | India   | B+        |
|      5 | Rvinay   | kukarni   | 78787878   | meera road  | mumbai | India   | O-        |
|      6 | ram      | mohol     | 8765896534 | bibwewadi   | pune   | india   | o+        |
|      7 | seema    | karve     | 9965896534 | wakad       | pune   | india   | o+        |
+--------+----------+-----------+------------+-------------+--------+---------+-----------+
6 rows in set (0.00 sec)

mysql>