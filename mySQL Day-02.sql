/* Inserting five records in Student table*/

insert into student values
    -> ('S101', 'Anamika', 'Mondal', '1999-12-26', 'Female', 'anamika@gmail.com', 9715756984),
    -> ('S102', 'Puja', 'Samanta', '1999-04-19', 'Female', 'puja@gmail.com', 9778164151),
    -> ('S103', 'Swagata', 'Patra', '1999-02-09', 'Female', 'swagata@gmail.com', 6246721697),
    -> ('S104', 'Sanchaita', 'Mondal', '1999-02-11', 'Female', 'sanchaita@gmail.com', 6212846328),
    -> ('S105', 'Arjun', 'Dutta', '1997-05-15', 'Male', 'arjun@gmail.com', 7412478963);
Query OK, 5 rows affected

/* Fetching all the records from Student table*/

mysql> SELECT * from Student;
+-----------+-----------+----------+-------------+--------+---------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email               | Phone      |
+-----------+-----------+----------+-------------+--------+---------------------+------------+
| S101      | Anamika   | Mondal   | 1999-12-26  | Female | anamika@gmail.com   | 9715756984 |
| S102      | Puja      | Samanta  | 1999-04-19  | Female | puja@gmail.coms      | 9778164151 |
| S103      | Swagata   | Patra    | 1999-02-09  | Female | swagata@gmail.com   | 6246721697 |
| S104      | Sanchaita | Mondal   | 1999-02-11  | Female | sanchaita@gmail.com | 6212846328 |
| S105      | Arjun     | Dutta    | 1997-05-15  | Male   | arjun@gmail.com     | 7412478963 |
+-----------+-----------+----------+-------------+--------+---------------------+------------+
5 rows in set
______________________________________________________________________________________________________________________________________
/* Inserting five records in Course table*/

insert into Course values
    -> ('C101', 'Python', 9),
    -> ('C102', 'Soft skills', 10),
    -> ('C103', 'DBMS', 10),
    -> ('C104', 'Graphic Design', 8),
    -> ('C105', 'Java', 7);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

/* Fetching all the records from Course table*/

mysql> SELECT * from Course;
+----------+----------------+---------+
| CourseID | CourseTitle    | Credits |
+----------+----------------+---------+
| C101     | Python         |       9 |
| C102     | Soft skills    |      10 |
| C103     | DBMS           |      10 |
| C104     | Graphic Design |       8 |
| C105     | Java           |       7 |
+----------+----------------+---------+
5 rows in set
______________________________________________________________________________________________________________________________________
/* Inserting five records in Instructor table*/

insert into Instructor values
    -> ('I001', 'Arunima', 'Chatterjee', 'arunima@gmail.com'),
    -> ('I002', 'Sohini', 'Roy', 'sohini@gmail.com'),
    -> ('I003', 'Debopriyo', 'Dasgupta', 'debopriyo@gmail.com'),
    -> ('I004', 'Ishani', 'Sen', 'ishani@gmail.com'),
    -> ('I005', 'Ritwik', 'Adhikary', 'ritwik@gmail.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

/* Fetching all the records from Instructor table*/

mysql> SELECT * FROM Instructor;
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
______________________________________________________________________________________________________________________________________
/* Inserting five records in Enrollment table*/

insert into Enrollment values
    -> ('E101', '2023-08-15', 'S101', 'C101', 'I001'),
    -> ('E102', '2023-09-20', 'S102', 'C102', 'I002'),
    -> ('E103', '2023-10-10', 'S103', 'C103', 'I003'),
    -> ('E104', '2023-11-05', 'S104', 'C104', 'I004'),
    -> ('E105', '2023-06-12', 'S105', 'C105', 'I005');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

/* Fetching all the records from Enrollment table*/

mysql> SELECT * FROM Enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
| E101         | 2023-08-15     | S101      | C101     | I001         |
| E102         | 2023-09-20     | S102      | C102     | I002         |
| E103         | 2023-10-10     | S103      | C103     | I003         |
| E104         | 2023-11-05     | S104      | C104     | I004         |
| E105         | 2023-06-12     | S105      | C105     | I005         |
+--------------+----------------+-----------+----------+--------------+
5 rows in set
_____________________________________________________________________________________________________________________________________
/* Inserting five records in Score table*/

insert into Score values
    -> ('SC001', 'C101', 'S101', '2023-10-05', 85),
    -> ('SC002', 'C102', 'S102', '2023-11-15', 92),
    -> ('SC003', 'C103', 'S103', '2023-12-20', 78),
    -> ('SC004', 'C104', 'S104', '2023-11-25', 80),
    -> ('SC005', 'C105', 'S105', '2023-12-29', 88);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

/* Fetching all the records from Score table*/

mysql> SELECT * from Score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
| SC001   | C101     | S101      | 2023-10-05 |             85 |
| SC002   | C102     | S102      | 2023-11-15 |             92 |
| SC003   | C103     | S103      | 2023-12-20 |             78 |
| SC004   | C104     | S104      | 2023-11-25 |             80 |
| SC005   | C105     | S105      | 2023-12-29 |             88 |
+---------+----------+-----------+------------+----------------+
5 rows in set
_____________________________________________________________________________________________________________________________________
/* Inserting five records in Feedback table*/

mysql> insert into Feedback values
    -> ('FB001', 'S101', '2023-10-15', 'Arunima Chatterjee', 'Excellent teaching style, very engaging'),
    -> ('FB002', 'S102', '2023-11-20', 'Sohini Roy', 'Helped me understand complex concepts easily.'),
    -> ('FB003', 'S103', '2023-12-05', 'Debopriyo Dasgupta', 'Great instructor, very knowledgeable.'),
    -> ('FB004', 'S104', '2023-09-25', 'Ishani Sen', 'Clear explanations, enjoyed the sessions.'),
    -> ('FB005', 'S105', '2023-08-30', 'Ritwik Adhikary', 'Instructor was supportive, made learning fun.');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

/* Fetching all the records from Feedback table*/

mysql> SELECT * FROM Feedback;
+------------+-----------+------------+--------------------+-----------------------------------------------+
| FeedbackID | StudentID | Date       | InstructorName     | FeedbackText
               |
+------------+-----------+------------+--------------------+-----------------------------------------------+
| FB001       | S101      | 2023-10-15 | Arunima Chatterjee | Excellent teaching style, very engaging       |
| FB002      | S102      | 2023-11-20 | Sohini Roy         | Helped me understand complex concepts easily. |
| FB003      | S103      | 2023-12-05 | Debopriyo Dasgupta | Great instructor, very knowledgeable.         |
| FB004      | S104      | 2023-09-25 | Ishani Sen         | Clear explanations, enjoyed the sessions.     |
| FB005      | S105      | 2023-08-30 | Ritwik Adhikary    | Instructor was supportive, made learning fun. |
+------------+-----------+------------+--------------------+-----------------------------------------------+
5 rows in set
