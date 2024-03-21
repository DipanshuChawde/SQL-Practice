create database db1;
use db1
create table works(Emp_Name varchar(20),Comp_Name varchar(10),salary int);

insert into table works values("sachin","TCS",32000)
insert into works values("rahul","MBT",43000);
insert into works values("radhika","Amdocs",55000);
insert into works values("sunita","IBM",78000);
insert into works values("sunil","Infosys",68000);
insert into works values("Ajay","Oracle",56000);

insert into works values("gopal","MBT",67000);
insert into works values("baban","Amdocs",35000);
insert into works values("dipak","Amdocs",45000);
insert into works values("Eshan","Infosys",58000);
insert into works values("falguni","Oracle",88000);

select * from works;
+----------+-----------+--------+
| Emp_Name | Comp_Name | salary |
+----------+-----------+--------+
| sachin   | TCS       |  32000 |
| rahul    | MBT       |  43000 |
| radhika  | Amdocs    |  55000 |
| sunita   | IBM       |  78000 |
| sunil    | Infosys   |  68000 |
| Ajay     | Oracle    |  56000 |
+----------+-----------+--------+
6 rows in set (0.00 sec)

 create table company
    -> (Comp_Name varchar(10),salary int);

alter table company change salary city varchar(10);
Query OK, 0 rows affected (0.04 sec)

desc company;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Comp_Name | varchar(10) | YES  |     | NULL    |       |
| city      | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+


insert into company values("TCS","Pune"),("MBT","Mumbai"),("Amdocs","Delhi"),("IBM","Bangluru"),("IBM","Pune"),("Infosys","Nagpur"),("Oracle","Mu
mbai");

 select * from company;
+-----------+----------+
| Comp_Name | city     |
+-----------+----------+
| TCS       | Pune     |
| MBT       | Mumbai   |
| Amdocs    | Delhi    |
| IBM       | Bangluru |
| IBM       | Pune     |
| Infosys   | Nagpur   |
| Oracle    | Mumbai   |
+-----------+----------+


mysql> insert into employee values("radhika","baner","Pune");
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values("rahul","meera rd","Mumbai");
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values("Sunita","kothrud","Pune");
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values("Sunil","seetaburdi","Nagpur");
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values("Ajay","ajani","Mumbai");
Query OK, 1 row affected (0.00 sec)

 select * from employee;
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


