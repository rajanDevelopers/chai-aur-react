
-- jab koi database ka use karke usme table insert karte hai ;
    --      use databasename;   -----
use movie;
Database changed
mysql> create table actor(FirstName VARCHAR(15), LastName VARCHAR(10), Dob INTEGER(8), Gender VARCHAR(10), Networth INTEGER);
Query OK, 0 rows affected, 1 warning (0.04 sec)

-- database ke table ko dekhne keliye 
mysql> SHOW tables;
+-----------------+
| Tables_in_movie |
+-----------------+
| actor           |
+-----------------+
1 row in set (0.01 sec)


-- data table ke column ko show karne ke liye 
mysql> desc actor;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| FirstName | varchar(15) | YES  |     | NULL    |       |
| LastName  | varchar(10) | YES  |     | NULL    |       |
| Dob       | int         | YES  |     | NULL    |       |
| Gender    | varchar(10) | YES  |     | NULL    |       |
| Networth  | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

-- table ke under ke value ko inset karne ke liye  // insert into tableName (what ever we want to inset there );
mysql> insert into actor(FirstName,LastName,Dob,Gender,Networth) values ('sarukh', 'khan',1965,'Male', 700);
Query OK, 1 row affected (0.01 sec)

-- row value ko dhne ke liye ==> select * from tableName;
mysql> select * from actor;
+-----------+----------+------+--------+----------+
| FirstName | LastName | Dob  | Gender | Networth |
+-----------+----------+------+--------+----------+
| sarukh    | khan     | 1965 | Male   |      700 |
+-----------+----------+------+--------+----------+
1 row in set (0.00 sec)

-- value ko dhekne ke liye 
mysql> select FirstName from actor;
+------------+
| FirstName  |
+------------+
| sarukh     |
| Amitabh    |
| Salman     |
| Akshay     |
| Amir       |
| Hrithik    |
| Rajni      |
+------------+
21 rows in set (0.00 sec)

-- condition lga kar value ko show karna  isme condition ka use ise kiya jata hai 
-- Where jo condition dena hai ==> where 

mysql> select * from actor WHERE Networth<=300;
+------------+----------+------+--------+----------+
| FirstName  | LastName | Dob  | Gender | Networth |
+------------+----------+------+--------+----------+
| Amir       | khan     | 1965 | Male   |      225 |
| Hrithik    | Roshan   | 1974 | Male   |      100 |
| Rajni      | kant     | 1950 | Male   |       50 |
| Katrina    | Kaif     | 1994 | Femal  |      217 |
| Anushka    | Sharma   | 1992 | Femal  |       47 |
+------------+----------+------+--------+----------+
13 rows in set (0.00 sec)

mysql> select * from actor where networth > 500;
+-----------+----------+------+--------+----------+
| FirstName | LastName | Dob  | Gender | Networth |
+-----------+----------+------+--------+----------+
| sarukh    | khan     | 1965 | Male   |      700 |
| Aishwarya | Rai      | 1991 | Femal  |      820 |
| Priyanka  | Chopra   | 1993 | Femal  |      580 |
| Alia      | Bhatt    | 1994 | Femal  |      557 |
+-----------+----------+------+--------+----------+
4 rows in set (0.00 sec)

-- limit ka use isliye kiya jata hai ki hame kitna value Chahiye ;

mysql> select * from actor where networth <= 300 limit 3;
+-----------+----------+------+--------+----------+
| FirstName | LastName | Dob  | Gender | Networth |
+-----------+----------+------+--------+----------+
| Amir      | khan     | 1965 | Male   |      225 |
| Hrithik   | Roshan   | 1974 | Male   |      100 |
| Rajni     | kant     | 1950 | Male   |       50 |
+-----------+----------+------+--------+----------+
3 rows in set (0.00 sec)

-- me data ko print show karne ke liye 
mysql> select * from actor where networth >= 1990 limit 5;
Empty set (0.00 sec)

-- Condition base commond ;

mysql> select * from actor where networth >= 1970  OR networth < 1982;
+------------+----------+------+--------+----------+
| FirstName  | LastName | Dob  | Gender | Networth |
+------------+----------+------+--------+----------+
| sarukh     | khan     | 1965 | Male   |      700 |
| Amitabh    | Bachchan | 1942 | Male   |      500 |
| Anushka    | Shetty   | 1981 | Femal  |      133 |
| Taapsee    | Pannu    | 1987 | Femal  |       50 |
| Dipika     | Padukone | 1993 | Femal  |       40 |
| Aishwarya  | Rai      | 1991 | Femal  |      820 |
| Priyanka   | Chopra   | 1993 | Femal  |      580 |
| Alia       | Bhatt    | 1994 | Femal  |      557 |
| Kareena    | Kapoor   | 1985 | Femal  |      365 |
| Katrina    | Kaif     | 1994 | Femal  |      217 |
| Anushka    | Sharma   | 1992 | Femal  |       47 |
+------------+----------+------+--------+----------+
21 rows in set (0.00 sec)


mysql> select * from actor where gender = "femal";
+------------+----------+------+--------+----------+
| FirstName  | LastName | Dob  | Gender | Networth |
+------------+----------+------+--------+----------+
| RakulPreet | singh    | 1990 | Femal  |       49 |
| Tamanna    | Bhatia   | 1989 | Femal  |      110 |
| Kareena    | Kapoor   | 1985 | Femal  |      365 |
| Katrina    | Kaif     | 1994 | Femal  |      217 |
| Anushka    | Sharma   | 1992 | Femal  |       47 |
+------------+----------+------+--------+----------+
11 rows in set (0.00 sec)

mysql> select * from actor where gender = "femal" limit 5;
+------------+----------+------+--------+----------+
| FirstName  | LastName | Dob  | Gender | Networth |
+------------+----------+------+--------+----------+
| RakulPreet | singh    | 1990 | Femal  |       49 |
| Tamanna    | Bhatia   | 1989 | Femal  |      110 |
| Anushka    | Shetty   | 1981 | Femal  |      133 |
| Taapsee    | Pannu    | 1987 | Femal  |       50 |
| Dipika     | Padukone | 1993 | Femal  |       40 |
+------------+----------+------+--------+----------+
5 rows in set (0.00 sec)