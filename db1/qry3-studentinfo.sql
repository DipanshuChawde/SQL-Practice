create table student_info (std_id int,std_name varchar(20),parent_nm
varchar(20),ph_no varchar(20),add_of_std varchar(100),city varchar(20),count
ry varchar(20));


INSERT INTO student_info VALUES (1,'Amol','Rao', 9898989898,'Kharadi','Pune','India');
INSERT INTO sstudent_info VALUES (3,'Raj','Sharma', 8785475414,'Thane','Mumbai','India');
INSERT INTO student_info VALUES (4,'Rahul','Mishra', 6545847414,'Civil Lines', 'Mumbai', 'India');
INSERT INTO student_info VALUES (2,'Hari','Prasad', 78787878,'Viman Nagar','pune','India');
INSERT INTO student_info VALUES (5,'Rvinay','kukarni', 78787878,'meera road','mumbai','India');


mysql> select * from student_info;
+--------+----------+-----------+------------+-------------+--------+---------+
| std_id | std_name | parent_nm | ph_no      | add_of_std  | city   | country |
+--------+----------+-----------+------------+-------------+--------+---------+
|      1 | Amol     | Rao       | 9898989898 | Kharadi     | Pune   | India   |
|      4 | Rahul    | Mishra    | 6545847414 | Civil Lines | Mumbai | India   |
|      2 | Hari     | Prasad    | 78787878   | Viman Nagar | pune   | India   |
|      5 | Rvinay   | kukarni   | 78787878   | meera road  | mumbai | India   |
+--------+----------+-----------+------------+-------------+--------+---------+
4 rows in set (0.00 sec)