/*Creating a Database and Table */

mysql> CREATE Database BankAccountManagementSystem;
Query OK,
 SHOW DATABASES;
+-----------------------------+
| Database                    |
+-----------------------------+
| bankaccountmanagementsystem |
| ecommerce                   |
| information_schema          |
| mysql                       |
| performance_schema          |
| sakila                      |
| studentmanagementsystem     |
| sys                         |
| world                       |
+-----------------------------+
9 rows in set
/* Creating a new table named BankAccount in the selected database */

mysql> CREATE TABLE BankAccount(
    -> Account_id int PRIMARY KEY,
    -> Account_holder_name varchar(30),
    -> Account_balance int
    -> );
Query OK, 0 rows affected (0.06 sec)

/* Describing the structure of the BankAccount table */

mysql> DESC BankAccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| Account_id          | int         | NO   | PRI | NULL    |       |
| Account_holder_name | varchar(30) | YES  |     | NULL    |       |
| Account_balance     | int         | YES  |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set
____________________________________________________________________________________________________________________________________________________
/*Inserting Data into BankAccount Table */

Task 1: Insert Data
Write an SQL INSERT statement to insert data into the BankAccount table.


mysql> INSERT into BankAccount VALUES
    -> (10001, 'Sourav Das', 20000),
    -> (10002, 'Rima Banerjee', 30000),
    -> (10003, 'Subhan Roy', 40000),
    -> (10004, 'Priya Mondal', 50000),
    -> (10005, 'Arghya Sarkar', 60000);
Query OK, 5 rows affected

/* Retrieving all data from the BankAccount table */

SELECT * FROM BankAccount;
+------------+---------------------+-----------------+
| Account_id | Account_holder_name | Account_balance |
+------------+---------------------+-----------------+
|      10001 | Sourav Das          |           20000 |
|      10002 | Rima Banerjee       |           30000 |
|      10003 | Subhan Roy          |           40000 |
|      10004 | Priya Mondal        |           50000 |
|      10005 | Arghya Sarkar       |           60000 |
+------------+---------------------+-----------------+
5 rows in set
____________________________________________________________________________________________________________________________________________________

Task 2: Retrieving Data
Write an SQL SELECT statement to retrieve the account_holder_name and
account_balance of all account holders from the BankAccount table.

/* Retrieving account_holder_name and account_balance of all account holders */

mysql> SELECT account_holder_name, Account_balance
    -> FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | Account_balance |
+---------------------+-----------------+
| Sourav Das          |           20000 |
| Rima Banerjee       |           30000 |
| Subhan Roy          |           40000 |
| Priya Mondal        |           50000 |
| Arghya Sarkar       |           60000 |
+---------------------+-----------------+
5 rows in set
____________________________________________________________________________________________________________________________________________________

Task 3: Filtering Data
Write an SQL SELECT statement to retrieve the account_holder_name and
account_balance where the account_balance is more than 30,000.

/* Retrieving account_holder_name and account_balance where the account_balance is more than 30,000 */

 SELECT account_holder_name, Account_balance
    -> FROM BankAccount
    -> WHERE Account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | Account_balance |
+---------------------+-----------------+
| Subhan Roy          |           40000 |
| Priya Mondal        |           50000 |
| Arghya Sarkar       |           60000 |
+---------------------+-----------------+
3 rows in set
____________________________________________________________________________________________________________________________________________________

Task 4: Updating Data
Write an SQL UPDATE statement to change the account_balance of the account
holder whose ID is 10001.

/* Updating the account_balance of the account holder with ID 10001 */

mysql> UPDATE BankAccount
    -> SET Account_balance = 25000 WHERE Account_id = 10001;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1

/* Retrieving all data from the BankAccount table after the update */

mysql> SELECT * FROM BankAccount;
+------------+---------------------+-----------------+
| Account_id | Account_holder_name | Account_balance |
+------------+---------------------+-----------------+
|      10001 | Sourav Das          |           25000 |
|      10002 | Rima Banerjee       |           30000 |
|      10003 | Subhan Roy          |           40000 |
|      10004 | Priya Mondal        |           50000 |
|      10005 | Arghya Sarkar       |           60000 |
+------------+---------------------+-----------------+
5 rows in set





