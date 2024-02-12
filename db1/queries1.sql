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


