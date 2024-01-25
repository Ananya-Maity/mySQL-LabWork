Task 1: 

Update the Student table with the following information:
Change the email to 'samantapuja@gmail.com'
Where FirstName is 'Puja' and LastName is 'Samanta';

/* Fetching all the records from Student table*/

mysql> SELECT * from Student;
+-----------+-----------+----------+-------------+--------+---------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email               | Phone      |
+-----------+-----------+----------+-------------+--------+---------------------+------------+
| S101      | Anamika   | Mondal   | 1999-12-26  | Female | anamika@gmail.com   | 9715756984 |
| S102      | Puja      | Samanta  | 1999-04-19  | Female | puja@gmail.coms     | 9778164151 |
| S103      | Swagata   | Patra    | 1999-02-09  | Female | swagata@gmail.com   | 6246721697 |
| S104      | Sanchaita | Mondal   | 1999-02-11  | Female | sanchaita@gmail.com | 6212846328 |
| S105      | Arjun     | Dutta    | 1997-05-15  | Male   | arjun@gmail.com     | 7412478963 |
+-----------+-----------+----------+-------------+--------+---------------------+------------+
5 rows in set


/*updating the email of a student named Puja Samanta to 'samantapuja@gmail.com'*/
 UPDATE Student SET Email = 'samantapuja@gmail.com' where FirstName = 'Puja' and LastName = 'Samanta';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

/*Retrieving all data from the Student table*/
SELECT * from Student;
+-----------+-----------+----------+-------------+--------+----------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                | Phone      |
+-----------+-----------+----------+-------------+--------+----------------------+------------+
| S101      | Anamika   | Mondal   | 1999-12-26  | Female | anamika@gmail.com    | 9715756984 |
| S102      | Puja      | Samanta  | 1999-04-19  | Female | samantapuja@gmail.com| 9778164151 |
| S103      | Swagata   | Patra    | 1999-02-09  | Female | swagata@gmail.com    | 6246721697 |
| S104      | Sanchaita | Mondal   | 1999-02-11  | Female | sanchaita@gmail.com  | 6212846328 |
| S105      | Arjun     | Dutta    | 1997-05-15  | Male   | arjun@gmail.com      | 7412478963 |
+-----------+-----------+----------+-------------+--------+----------------------+------------+
5 rows in set

_____________________________________________________________________________________________________________
Update the Instructor with the following information:
Change the email to 'sohiniroy@gmail.com'
Where FirstName of the instructor is 'Sohini' and LastName is 'Roy'.

/* Fetching all the records from Instructor table*/

SELECT * FROM Instructor;
+--------------+-----------+------------+---------------------+
| InstructorId | FirstName | LastName   | Email               |
+--------------+-----------+------------+---------------------+
| I001         | Arunima   | Chatterjee | arunima@gmail.com   |
| I002         | Sohini    | Roy        | sohini@gmail.com    |
| I003         | Debopriyo | Dasgupta   | debopriyo@gmail.com |
| I004         | Ishani    | Sen        | ishani@gmail.com    |
| I005         | Ritwik    | Adhikary   | ritwik@gmail.com    |
+--------------+-----------+------------+---------------------+
5 rows in set

/*Update the Instructor table's email for a specific instructor*/
mysql> UPDATE Instructor SET Email = 'sohiniroy@gmail.com' where FirstName = 'Sohini' and LastName = 'Roy';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

/*Retrieving all data from the Instructor table*/
mysql> select * from Instructor;
+--------------+-----------+------------+---------------------+
| InstructorId | FirstName | LastName   | Email               |
+--------------+-----------+------------+---------------------+
| I001         | Arunima   | Chatterjee | arunima@gmail.com   |
| I002         | Sohini    | Roy        | sohiniroy@gmail.com |
| I003         | Debopriyo | Dasgupta   | debopriyo@gmail.com |
| I004         | Ishani    | Sen        | ishani@gmail.com    |
| I005         | Ritwik    | Adhikary   | ritwik@gmail.com    |
+--------------+-----------+------------+---------------------+
5 rows in set
================================================================================================================================================================================================================
Task 2:
Delete record from the Student table on following condition:
Delete student/students records from the Student table where last name is Ghosh.


/*Inserting a new row into the Student table*/
mysql> INSERT into Student values
    -> ('S106', 'Sayan', 'Ghosh', '2000-01-01', 'Male', 'Sayan@gmail.com', 9312589674);
Query OK, 1 row affected (0.01 sec)

/*Retrieving all data from the Student table*/
mysql> select * from student;
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                 | Phone      |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| S101      | Anamika   | Mondal   | 1999-12-26  | Female | anamika@gmail.com     | 9715756984 |
| S102      | Puja      | Samanta  | 1999-04-19  | Female | samantapuja@gmail.com | 9778164151 |
| S103      | Swagata   | Patra    | 1999-02-09  | Female | swagata@gmail.com     | 6246721697 |
| S104      | Sanchaita | Mondal   | 1999-02-11  | Female | sanchaita@gmail.com   | 6212846328 |
| S105      | Arjun     | Dutta    | 1997-05-15  | Male   | arjun@gmail.com       | 7412478963 |
| S106      | Sayan     | Ghosh    | 2000-01-01  | Male   | Sayan@gmail.com       | 9312589674 |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
6 rows in set

/* Delete record from the Student table based on a specific condition */
DELETE FROM Student WHERE LastName = 'Ghosh';
mysql> DELETE FROM Student WHERE LastName = 'Ghosh';
Query OK, 1 row affected (0.01 sec)

/*Retrieving all data from the Student table after deletion*/
mysql> select * from student;
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                 | Phone      |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| S101      | Anamika   | Mondal   | 1999-12-26  | Female | anamika@gmail.com     | 9715756984 |
| S102      | Puja      | Samanta  | 1999-04-19  | Female | samantapuja@gmail.com | 9778164151 |
| S103      | Swagata   | Patra    | 1999-02-09  | Female | swagata@gmail.com     | 6246721697 |
| S104      | Sanchaita | Mondal   | 1999-02-11  | Female | sanchaita@gmail.com   | 6212846328 |
| S105      | Arjun     | Dutta    | 1997-05-15  | Male   | arjun@gmail.com       | 7412478963 |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
5 rows in set
================================================================================================================================================================================================================
Task 3:
List the student whose first name starts with P.


mysql> SELECT * from Student WHERE FirstName LIKE 'P%';
/*The '%' wildcard after 'P' in the LIKE operator matches any sequence of characters after 'P' */
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                 | Phone      |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| S102      | Puja      | Samanta  | 1999-04-19  | Female | samantapuja@gmail.com | 9778164151 |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
1 row in set
