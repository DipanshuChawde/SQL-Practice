CREATE TABLE EMP_LOG(EMP_ID int PRIMARY KEY,EMP_NAME VARCHAR(100));

INSERT INTO emp_log VALUES (1,'John');
INSERT INTO emp_log VALUES (2,'Lilly');
INSERT INTO emp_log VALUES (3,'Peter');
INSERT INTO emp_log VALUES (4,'Roy');
INSERT INTO emp_log VALUES (8,'Nick');
INSERT INTO emp_log VALUES (9,'Sam');
INSERT INTO emp_log VALUES (10,'Rock');

CREATE TABLE EMP_DETAILS(EMP_ID int PRIMARY KEY,EMP_ADDRESS VARCHAR(100),EMP_ADDRESS_CODE int);
INSERT INTO emp_details VALUES(1,'India',4444);
INSERT INTO emp_details VALUES(2,'USA',5555);
INSERT INTO emp_details VALUES(3,'Russia',6666);
INSERT INTO emp_details VALUES(4,'South Africa',7777);
INSERT INTO emp_details VALUES(5,'Uk',8888);
INSERT INTO emp_details VALUES(6,'Brazil',9999);
INSERT INTO emp_details VALUES(7,'New Zealand',2222);
INSERT INTO emp_details VALUES(11,'Peru',0003);
INSERT INTO emp_details VALUES(12,'Cuba',0002);
INSERT INTO emp_details VALUES(13,'Norway',0001);
INSERT INTO emp_details VALUES(14,'Singapore',0000);

CREATE TABLE ADDRESS_CODE_NAME(ADD_CODE int PRIMARY KEY, ADD_CODE_NAME VARCHAR(100));

INSERT INTO address_code_name VALUES(4444,'Asia');
INSERT INTO address_code_name VALUES(5555,'North America');
INSERT INTO address_code_name VALUES(6666,'Europe');
INSERT INTO address_code_name VALUES(7777,'Africa');
INSERT INTO address_code_name VALUES(8888,'Antarctica');
INSERT INTO address_code_name VALUES(9999,'South America');
INSERT INTO address_code_name VALUES(2222,'Australia');
INSERT INTO address_code_name VALUES(1111,'Asia-1');
INSERT INTO address_code_name VALUES(3333,'Europe-2');
