-- ye check karta hai ki chris name ka koi person hai mera database me
-- ya kisi ka first name chris hai ; 
mysql> SELECT * FROM ACTORS WHERE FIRSTNAME = "Chris";
+-----------+-----------+--------+----------+
| Firstname | Lastname  | Gender | Networth |
+-----------+-----------+--------+----------+
| Chris     | Hemsworth | Male   |      400 |
| Chris     | Evans     | Male   |      700 |
+-----------+-----------+--------+----------+
2 rows in set (0.00 sec)

-- like('ch%') ka matlab hota hai ki ch ka jiska bhi firstname start hota hai hamko
--  uska name print kara do aur ch ke bad kuch bhi ho 

mysql> SELECT * FROM ACTORS WHERE FIRSTNAME like "Ch%";
+-----------+-----------+--------+----------+
| Firstname | Lastname  | Gender | Networth |
+-----------+-----------+--------+----------+
| Chris     | Hemsworth | Male   |      400 |
| Chris     | Evans     | Male   |      700 |
| Chadwick  | Boseman   | Male   |      400 |
+-----------+-----------+--------+----------+
3 rows in set (0.00 sec)


-- firstname ka last me is hai to hamko uska first name do suru me kuch bhi ho 
mysql> SELECT * FROM ACTORS WHERE FIRSTNAME like "%is";
+-----------+-----------+--------+----------+
| Firstname | Lastname  | Gender | Networth |
+-----------+-----------+--------+----------+
| Chris     | Hemsworth | Male   |      400 |
| Chris     | Evans     | Male   |      700 |
+-----------+-----------+--------+----------+
2 rows in set (0.00 sec)

-- jiska bhi firstname me bech me A hi hamko uska name firstname bato baad me kuch bhi ho;
mysql> SELECT * FROM ACTORS WHERE FIRSTNAME like "%a%";
+-----------+----------+--------+----------+
| Firstname | Lastname | Gender | Networth |
+-----------+----------+--------+----------+
| Scarlett  | Johnson  | Female |      500 |
| Paul      | Rudd     | Male   |      150 |
| Chadwick  | Boseman  | Male   |      400 |
+-----------+----------+--------+----------+
3 rows in set (0.00 sec)

-- kisi ko Proper Order me lane ke liye ==> ORDER BY ka use kiya jata hai 
mysql> SELECT * FROM ACTORS ORDER BY Networth ASC;
+-----------+-----------+--------+----------+
| Firstname | Lastname  | Gender | Networth |
+-----------+-----------+--------+----------+
| Paul      | Rudd      | Male   |      150 |
| Johnny    | Depp      | Male   |      200 |
| Chris     | Hemsworth | Male   |      400 |
| Chadwick  | Boseman   | Male   |      400 |
| Scarlett  | Johnson   | Female |      500 |
| Brie      | Larson    | Female |      650 |
| Chris     | Evans     | Male   |      700 |
+-----------+-----------+--------+----------+
7 rows in set (0.00 sec)


--  ASE ka use Assending order me lane ke liye kiya jata hai ==> order by  __ ASC 
mysql> SELECT * FROM ACTORS ORDER BY Networth ASC;
+-----------+-----------+--------+----------+
| Firstname | Lastname  | Gender | Networth |
+-----------+-----------+--------+----------+
| Paul      | Rudd      | Male   |      150 |
| Johnny    | Depp      | Male   |      200 |
| Chris     | Hemsworth | Male   |      400 |
| Chadwick  | Boseman   | Male   |      400 |
| Scarlett  | Johnson   | Female |      500 |
| Brie      | Larson    | Female |      650 |
| Chris     | Evans     | Male   |      700 |
+-----------+-----------+--------+----------+
7 rows in set (0.00 sec)

-- decending order ke liye ==> desc ka use kiya jata hai ==> order by __ desc ;
-- first me Big value after small value like networth 
mysql> SELECT * FROM ACTORS ORDER BY Networth DESC;
+-----------+-----------+--------+----------+
| Firstname | Lastname  | Gender | Networth |
+-----------+-----------+--------+----------+
| Chris     | Evans     | Male   |      700 |
| Brie      | Larson    | Female |      650 |
| Scarlett  | Johnson   | Female |      500 |
| Chris     | Hemsworth | Male   |      400 |
| Chadwick  | Boseman   | Male   |      400 |
| Johnny    | Depp      | Male   |      200 |
| Paul      | Rudd      | Male   |      150 |
+-----------+-----------+--------+----------+
7 rows in set (0.01 sec)

