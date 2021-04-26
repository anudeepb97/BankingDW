# Banking Data Warehouse

### Background
Banking is an ever-growing sector of finance and the economy. To keep track of areas of growth and areas where improvement is required is of great interest. We are using the data warehousing concepts to provide the important data at the same place using the ETL process and also providing a report for the data collected and visualizing the data using different angles. 

Using a sample SQL database with bank account details that provides valuable and good quality data to understand how it works well in the banking sector.

### ER Diagram
[!screenshot](./BankingDW/DW/ERDiagram.png)

The tables available in the dataset are as follows:
-	Account
-	Branch
-	Customer
-	Department
-	Employee
-	Transaction


### Dimension tables based on STAR Schema
A star schema is a type of relational database schema that is composed of a one or more fact tables that is surrounded by number of dimension tables.

-	dimAccount - keeps track of the details of accounts made in the banks.
-	dimBranch- keeps track of the branches of the bank.
-	dimCustomer - keeps track of the details of the customers linked to the bank.
-	dimEmployees- keeps track of Employees working for the bank
-	dimTransaction- keeps track of the transactions done in the bank.

### Reports

  SSRS Report
-	Report to show names of people having balance greater than 2000
-	Report to show the number of accounts per customer
-	Report to show the pending balance after each transaction
-	The report showing the total available balance.

R Visualization
-	Show names of people having a balance greater than 2000
-	Show number of accounts per customer
-	Show pending balance after each transaction
-	Show total available balance.





