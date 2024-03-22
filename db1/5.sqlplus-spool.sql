SQL PLUS (SQL COMMAND LINE EDITOR)

ORACLE
SQL PLUS - COMMAND LINE INTERFACE - SQL LOADER UTILITY, SPOOL, CRETA SPOOL
SQL DEVELOPER - GUI Based

select * from dual;
select 1+1 from dual;
select 10+10 from dual;



1.	Create spool file (.lst or .sql)
SPOOL F:\Spool_Files\sql_session.lst
commands
SPOOL OFF;

2.	Reuse/Edit existing spool file

SPOOl F:\Spool_Files\sql_session.sql APPEND;

3.	Replace with existing spool file

SPOOl F:\Spool_Files\sql_session.sql REPLACE;

4.	Get spool file

GET F:\Spool_Files\sql_session.sql;

5.	Run Spool file

RUN F:\Spool_Files\sql_session.sql;

6. To see output of spool file


SPOOL F:\Spool_Files\sql_2_jan.sql;
SPOOL OFF:
@ F:\Spool_Files\sql_2_jan.sql;

7. Open spool file in editor

ed F:\Spool_Files\sql_2_jan.sql;

Other Commands
set pagesize 300;
set linesize 300;
cl scr

SET LINESIZE (80) 
sql_session.sql
select * from dual;
X
select 1+1 from dual;
2






WINDOWS 10 COMMAND LINE

 
select * from all_tables;
