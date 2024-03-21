mysql> select * from works;
+----------+-----------+--------+
| Emp_Name | Comp_Name | salary |
+----------+-----------+--------+
| sachin   | TCS       |  38400 |
| rahul    | MBT       |  43000 |
| radhika  | Amdocs    |  55000 |
| sunita   | IBM       |  78000 |
| sunil    | Infosys   |  68000 |
| Ajay     | Oracle    |  56000 |
+----------+-----------+--------+
6 rows in set (0.00 sec)

mysql> update employee set street="wakad" where street='baner' and city='pun
e';
Query OK, 2 rows affected (0.00 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from employee;
+----------+------------+--------+
| Emp_Name | street     | city   |
+----------+------------+--------+
| sachin   | wakad      | pune   |
| radhika  | wakad      | Pune   |
| rahul    | meera rd   | Mumbai |
| Sunita   | kothrud    | Pune   |
| Sunil    | seetaburdi | Nagpur |
| Ajay     | ajani      | Mumbai |
+----------+------------+--------+
6 rows in set (0.00 sec)


