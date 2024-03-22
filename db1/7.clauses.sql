mysql> select * from employee where city = "Pune";
+----------+---------+------+
| Emp_Name | street  | city |
+----------+---------+------+
| sachin   | baner   | pune |
| radhika  | baner   | Pune |
| Sunita   | kothrud | Pune |
+----------+---------+------+
3 rows in set (0.00 sec)



select Emp_name,salary from works where salary>50000;
+----------+--------+
| Emp_name | salary |
+----------+--------+
| radhika  |  55000 |
| sunita   |  78000 |
| sunil    |  68000 |
| Ajay     |  56000 |
+----------+--------+
4 rows in set (0.00 sec)

mysql> select * from works where Emp_Name like "su%";
+----------+-----------+--------+
| Emp_Name | Comp_Name | salary |
+----------+-----------+--------+
| sunita   | IBM       |  78000 |
| sunil    | Infosys   |  68000 |
+----------+-----------+--------+

mysql> select * from employee where street like "%rd";
+----------+----------+--------+
| Emp_Name | street   | city   |
+----------+----------+--------+
| rahul    | meera rd | Mumbai |
+----------+----------+--------+
1 row in set (0.00 sec)

mysql> select * from employee where Emp_Name like "%i%";
+----------+------------+--------+
| Emp_Name | street     | city   |
+----------+------------+--------+
| sachin   | baner      | pune   |
| radhika  | baner      | Pune   |
| Sunita   | kothrud    | Pune   |
| Sunil    | seetaburdi | Nagpur |
+----------+------------+--------+


mysql> select * from works order by salary;
+----------+-----------+--------+
| Emp_Name | Comp_Name | salary |
+----------+-----------+--------+
| sachin   | TCS       |  32000 |
| rahul    | MBT       |  43000 |
| radhika  | Amdocs    |  55000 |
| Ajay     | Oracle    |  56000 |
| sunil    | Infosys   |  68000 |
| sunita   | IBM       |  78000 |
+----------+-----------+--------+
6 rows in set (0.00 sec)

mysql> select * from works order by salary desc;
+----------+-----------+--------+
| Emp_Name | Comp_Name | salary |
+----------+-----------+--------+
| sunita   | IBM       |  78000 |
| sunil    | Infosys   |  68000 |
| Ajay     | Oracle    |  56000 |
| radhika  | Amdocs    |  55000 |
| rahul    | MBT       |  43000 |
| sachin   | TCS       |  32000 |
+----------+-----------+--------+
6 rows in set (0.00 sec)


mysql> select avg(salary) as Avg_sal from works;
+------------+
| Avg_sal    |
+------------+
| 55333.3333 |
+------------+
1 row in set (0.00 sec)


mysql> select min(salary) as Avg_sal from works;
+---------+
| Avg_sal |
+---------+
|   32000 |
+---------+
1 row in set (0.00 sec)

mysql> select max(salary) as Avg_sal from works;
+---------+
| Avg_sal |
+---------+
|   78000 |
+---------+
1 row in set (0.00 sec)

-------------------------------------------------------------------------------------------------------------
d. update salary of particular employee by percentage

 update works set salary=salary*1.2 where Emp_Name="sachin";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

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

-----------------------------------------------------------------------------------------------------------------------
e. Delete the employee who working in particular city


mysql> select * from employee;
+----------+------------+--------+
| Emp_Name | street     | city   |
+----------+------------+--------+
| sachin   | baner      | pune   |
| radhika  | baner      | Pune   |
| rahul    | meera rd   | Mumbai |
| Sunita   | kothrud    | Pune   |
| Sunil    | seetaburdi | Nagpur |
| Ajay     | ajani      | Mumbai |
| manav    | taka grd   | hgt    |
+----------+------------+--------+
7 rows in set (0.00 sec)

mysql> delete from employee where city="hgt";
Query OK, 1 row affected (0.00 sec)

mysql> select * from employee;
+----------+------------+--------+
| Emp_Name | street     | city   |
+----------+------------+--------+
| sachin   | baner      | pune   |
| radhika  | baner      | Pune   |
| rahul    | meera rd   | Mumbai |
| Sunita   | kothrud    | Pune   |
| Sunil    | seetaburdi | Nagpur |
| Ajay     | ajani      | Mumbai |
+----------+------------+--------+
6 rows in set (0.00 sec)

----------------------------------------------------------------------------------------------------



f. Stored procedure Function1 to find out details of worker from a given company



mysql> delimiter $$
mysql> create procedure empdtls()
    -> begin
    -> select w.emp_name, w.Comp_Name, w.salary, e.street,e.city from works w, employee e where w.emp_name=e.emp_name;
    -> end $$
Query OK, 0 rows affected (0.03 sec)

mysql> delimiter ;
mysql> call empdtls();
+----------+-----------+--------+------------+--------+
| emp_name | Comp_Name | salary | street     | city   |
+----------+-----------+--------+------------+--------+
| sachin   | TCS       |  38400 | wakad      | pune   |
| radhika  | Amdocs    |  55000 | wakad      | Pune   |
| rahul    | MBT       |  43000 | meera rd   | Mumbai |
| sunita   | IBM       |  78000 | kothrud    | Pune   |
| sunil    | Infosys   |  68000 | seetaburdi | Nagpur |
| Ajay     | Oracle    |  56000 | ajani      | Mumbai |
+----------+-----------+--------+------------+--------+
6 rows in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql>
-- ----------------------------------------------------------------------------------------------------------------

g. Stored procedure Function2 to find out average salary of worker from a given
company







--------------------------------------------------------------------
command to find list of stored procedure in mysql
mysql> SELECT ROUTINE_NAME
    -> FROM information_schema.ROUTINES
    -> WHERE ROUTINE_TYPE = 'PROCEDURE' AND ROUTINE_SCHEMA = 'db1'
    -> ;
+--------------+
| ROUTINE_NAME |
+--------------+
| avgComSap    |
| empdtls      |
+--------------+
2 rows in set (0.01 sec)