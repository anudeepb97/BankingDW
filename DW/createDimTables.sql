CREATE DATABASE BANK_DW
GO
USE BANK_DW
GO

CREATE TABLE  dimTransaction  (
     TXN_ID  numeric(19,0) not null,
     AMOUNT  float,
     FUNDS_AVAIL_DATE  datetime,
     TXN_DATE  datetime,
     TXN_TYPE_CD  varchar(10),
     ACCOUNT_ID  int ,
     EXECUTION_BRANCH_ID  int,
     TELLER_EMP_ID  int 
)

alter table dimTransaction
add primary key(TXN_ID)


CREATE TABLE  dimBranch  (
     BRANCH_ID  int not null,
     ADDRESS  varchar(30),
     CITY  varchar(20),
     NAME  varchar(20),
     STATE  varchar(10),
     ZIP_CODE  varchar(12)
)

alter table dimBranch
add primary key(BRANCH_ID)

CREATE TABLE  dimAccount  (
     ACCOUNT_ID  int not null,
     AVAIL_BALANCE  float,
     LAST_ACTIVITY_DATE  datetime,
     OPEN_DATE  datetime,
     PENDING_BALANCE  float,
     STATUS  varchar(10),
     CUST_ID  int,
     OPEN_BRANCH_ID  int,
     OPEN_EMP_ID  int,
     PRODUCT_CD  varchar(10)
)

alter table dimAccount
add primary key(ACCOUNT_ID)

CREATE TABLE  dimEmployee  (
     EMP_ID  int not null,
     FIRST_NAME  varchar(20),
     LAST_NAME  varchar(20),
     START_DATE  datetime,
     TITLE  varchar(20),
     ASSIGNED_BRANCH_ID  int,
     DEPT_ID  int,
     SUPERIOR_EMP_ID  int
)

alter table dimEmployee
add primary key(EMP_ID)

CREATE TABLE  dimCustomer  (
     CUST_ID  int not null,
     ADDRESS  varchar(30),
     CITY  varchar(20),
     CUST_TYPE_CD  varchar(1),
     FED_ID  varchar(12),
     POSTAL_CODE  varchar(10),
     STATE  varchar(20)
)
alter table dimCustomer
add primary key(CUST_ID)

CREATE TABLE  dimDepartment  (
     DEPT_ID  int not null,
     NAME  varchar(20)
)
alter table dimDepartment
add primary key(DEPT_ID)