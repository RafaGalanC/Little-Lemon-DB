Database Engineer Capstone Project
In this project, I was required to create a data model for Little Lemon Restaurant and deploy it in the MySQL database. This includes a set of tables to store relevant information. I have populated the tables with some records of data for testing purposes. In addition, I have analyzed data using the Little Lemon Excel Data File. Further, I have completed the data analysis in Tableau.

I have demonstrated my ability with the following tools and software:

Git,
MySQL Workbench,
Tableau,
Python,
Jupyter Notebook,
In this project, I have proven my ability to:

Set up a database project,
Add sales reports,
Create a table booking system,
Work with data analytics and visualization,
Create a database client.
Following Tasks were completed in this Project :
Task 1 :
Scenario
Little Lemon needs to build a robust relational database system in MySQL in which they can store large amounts of data. They then need to easily manage and find this data as required. Little Lemon has decided to use MySQL Workbench to develop its new database system. This database system should maintain information about the following aspects of the business:

Bookings.
Orders.
Order delivery status.
Menu.
Customer details.
Staff information.
Set up the MySQL instance server in MySQL Workbench.

First, you need to create a normalized ER diagram (that adheres to 1NF, 2NF, and 3NF) with relevant relationships to meet the data requirements of Little Lemon. When creating your diagram, include the following tables:

Bookings: To store information about booked tables in the restaurant including booking ID, date, and table number.
Orders: To store information about each order such as order date, quantity, and total cost.
Order delivery status: To store information about the delivery status of each order such as delivery date and status.
Menu: To store information about cuisines, starters, courses, drinks, and desserts.
Customer details: To store information about the customer's names and contact details.
Staff information: Including role and salary.
You need to implement the Little Lemon data model inside your MySQL server.

You need to show the databases in the MySQL server. Write a SQL code inside MySQL Workbench SQL editor to show all your databases in the MySQL server. Check if the Little Lemon database is included in the list.

You need to create a new branch and commit the changes to Git.

You should now push and pull the changes to the GitHub repository.

Task 2 :
Scenario
Little Lemon needs to retrieve data from their database. You can use your knowledge of MySQL to help them. As part of this task, you need to:

Create a virtual table to summarize data.
Use a JOIN statement to query data from multiple tables.
Create a SQL statement with a subquery.
Creating optimized queries using stored procedures and prepared statements.
Little Lemon needs you to create a virtual table called OrdersView that focuses on OrderID, Quantity, and Cost columns within the Orders table for all orders with a quantity greater than 2.

Little Lemon needs information from four tables on all customers with orders that cost more than $150. Extract the required information from each of the following tables by using the relevant JOIN clause:

Customers table: The customer ID and full name.
Orders table: The order id and cost.
Menus table: The menu's name.
MenusItems table: course name and starter name.
The result set should be sorted by the lowest cost amount.
Little Lemon needs you to find all menu items for which more than 2 orders have been placed. You can carry out this task by creating a subquery that lists the menu names from the menus table for any order quantity with more than 2.

Little Lemon needs you to create a Stored Procedure that displays the maximum ordered quantity in the Orders table. Creating this procedure will allow Little Lemon to reuse the logic implemented in the procedure easily without retyping the same code over again and again to check the maximum quantity. You can call the procedure "GetMaxQuantity".

Little Lemon needs you to help them create a prepared statement called "GetOrderDetail". This prepared statement will help to reduce the parsing time of queries. It will also help to secure the database from SQL injections.

The prepared statement should accept one input argument, the CustomerID value, from a variable.
The statement should return the order ID, the quantity, and the order cost from the Orders table. 
Once you create the prepared statement, you can create a variable called id and assign it the value of 1.
Then execute the prepared statement "GetOrderDetail".
Create a stored procedure called "CancelOrder". Little Lemon wants to use this stored procedure to delete an order record based on the user input of the order ID. Creating this procedure will allow Little Lemon to cancel any order by specifying the order ID value in the procedure parameter without typing the entire SQL delete statement.
Task 3 :
Scenario
Little Lemon’s data model must include a Bookings table so that they can store data for table bookings. They also need a stored procedure that checks available bookings based on user input and a MySQL transaction that can be used to cancel bookings.

Also, They help with managing their bookings. They need you to create stored procedures that they can invoke as required to add, update, and delete bookings in their database. Use your knowledge of MySQL to help them out.

Little Lemon wants to populate the Bookings table of their database with some records of data. Your first task is to replicate the list of records in the following table by adding them to the Little Lemon booking table. You can use simple INSERT statements to complete this task.

Table

Little Lemon needs you to create a stored procedure called "CheckBooking" to check whether a table in the restaurant is already booked. Creating this procedure helps to minimize the effort involved in repeatedly coding the same SQL statements.

The procedure should have two input parameters in the form of booking date and table number. You can also create a variable in the procedure to check the status of each table.

Little Lemon needs to verify a booking and decline any reservations for tables that are already booked under another name. Since integrity is not optional, Little Lemon needs to ensure that every booking attempt includes these verification and decline steps. However, implementing these steps requires a stored procedure and a transaction.
To implement these steps, you need to create a new procedure called "AddValidBooking". This procedure must use a transaction statement to perform a rollback if a customer reserves a table that’s already booked under another name.

Create a new procedure called "AddBooking" to add a new table booking record. The procedure should include four input parameters in the form of the following booking parameters:
booking id,
customer id,
booking date,
table number.
Little Lemon needs you to create a new procedure called "UpdateBooking" that they can use to update existing bookings in the booking table. The procedure should have two input parameters in the form of booking ID and booking date. You must also include an UPDATE statement inside the procedure.

Little Lemon needs you to create a new procedure called "CancelBooking" that they can use to cancel or remove a booking. The procedure should have one input parameter in the form of a booking ID. You must also write a DELETE statement inside the procedure.