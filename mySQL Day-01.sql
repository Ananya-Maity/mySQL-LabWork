Lab 1. Create a Database & Table Using MySQL Command-Line Client.


● Create a database with the name StudentManagementSystem.

mysql> CREATE DATABASE StudentManagementSystem;
Query OK, 1 row affected (0.00 sec)

mysql> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| ecommerce               |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.00 sec)
__________________________________________________________________________________________________________________________________________________________________________________________________________________________________
Create a table with named Student with attributes:
● StudentID (Primary Key)
● FirstName
● LastName
● DateOfBirth
● Gender
● Email
● Phone

USE studentmanagementsystem;
Database changed
> CREATE TABLE Student (
    -> StudentID varchar(30) PRIMARY KEY,
    -> FirstName varchar (30) NOT NULL,
    -> LastName varchar (30) NOT NULL,
    -> DateOfBirth date,
    -> Gender varchar(20) NOT NULL,
    -> Email varchar(50) NOT NULL,
    -> Phone bigint
    -> );
Query OK,

 DESC Student;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| StudentID   | varchar(30) | NO   | PRI | NULL    |       |
| FirstName   | varchar(30) | NO   |     | NULL    |       |
| LastName    | varchar(30) | NO   |     | NULL    |       |
| DateOfBirth | date        | YES  |     | NULL    |       |
| Gender      | varchar(20) | NO   |     | NULL    |       |
| Email       | varchar(50) | NO   |     | NULL    |       |
| Phone       | bigint      | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set

________________________________________________________________________________________________________________________________________________________________________________________________________________________________________
Create a table with name Course with attributes:
● CourseID (Primary Key)
● CourseTitle
● Credits

mysql> CREATE TABLE Course(
    -> CourseID varchar(30) PRIMARY KEY,
    -> CourseTitle varchar(30) NOT NULL,
    -> Credits int
    -> );
Query OK,

 DESC Course;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| CourseID    | varchar(30) | NO   | PRI | NULL    |       |
| CourseTitle | varchar(30) | NO   |     | NULL    |       |
| Credits      | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set

____________________________________________________________________________________________________
Create a table with named Instructor with attributes:
● InstructorID (Primary Key)
● FirstName
● LastName
● Email
 
CREATE TABLE Instructor(
    -> InstructorId varchar(20) PRIMARY KEY,
    -> FirstName varchar(30) NOT NULL,
    -> LastName varchar(30) NOT NULL,
    -> Email varchar(50) NOT NULL
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> DESC Instructor;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| InstuctorId | varchar(20) | NO   | PRI | NULL    |       |
| FirstName   | varchar(30) | NO   |     | NULL    |       |
| LastName    | varchar(30) | NO   |     | NULL    |       |
| Email       | varchar(50) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
_____________________________________________________________________________________________________
Create a table with named Enrollment with attributes:
● EnrollmentID (Primary Key)
● EnrollmentDate
● StudentID(Foreign key)
● CourseID(Foreign Key)
● InstructorID(Foreign key)

 CREATE TABLE Enrollment (
    -> EnrollmentID varchar(30) PRIMARY KEY,
    -> EnrollmentDate DATE,
    -> StudentID varchar(30) NOT NULL,
    -> CourseID varchar(30) NOT NULL,
    -> InstructorID varchar (30) NOT NULL,
    -> FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    -> FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    -> FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> DESC Enrollment;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| EnrollmentID   | varchar(30) | NO   | PRI | NULL    |       |
| EnrollmentDate | date        | YES  |     | NULL    |       |
| StudentID      | varchar(30) | NO   | MUL | NULL    |       |
| CourseID       | varchar(30) | NO   | MUL | NULL    |       |
| InstructorID   | varchar(30) | NO   | MUL | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set
_____________________________________________________________________________________________________
Create a table with named Score with attributes:
● ScoreID (Primary Key)
● CourseID (Foreign key)
● StudentID (Foreign Key)s
● DateOfExam
● CreditObtained

 CREATE TABLE Score(
    -> ScoreID varchar(25) PRIMARY KEY,
    -> CourseID varchar(25) NOT NULL,
    -> StudentID varchar(25) NOT NULL,
    -> DateOfExam date,
    -> CreditObtained int,
    -> FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    -> FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> DESC Score;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| ScoreID        | varchar(25) | NO   | PRI | NULL    |       |
| CourseID       | varchar(25) | NO   | MUL | NULL    |       |
| StudentID      | varchar(25) | NO   | MUL | NULL    |       |
| DateOfExam     | date        | YES  |     | NULL    |       |
| CreditObtained | int         | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set
_____________________________________________________________________________________________________
Create a table with named Feedback with attributes:
● FeedbackID (Primary Key)
● StudentID (Foreign key)
● Date
● InstructorName
● Feedback

CREATE TABLE Feedback (
    -> FeedbackID VARCHAR(50) PRIMARY KEY,
    -> StudentID VARCHAR(50) NOT NULL,
    -> Date DATE,
    -> InstructorName VARCHAR(30) NOT NULL,
    -> FeedbackText varchar(50) NOT NULL,
    -> FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> DESC Feedback;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| FeedbackID     | varchar(50) | NO   | PRI | NULL    |       |
| StudentID      | varchar(50) | NO   | MUL | NULL    |       |
| Date           | date        | YES  |     | NULL    |       |
| InstructorName | varchar(30) | NO   |     | NULL    |       |
| FeedbackText   | varchar(50) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set



