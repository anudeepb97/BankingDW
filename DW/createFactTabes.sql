CREATE TABLE  factAccountTransaction  (
     ACCOUNT_ID  int not null,
     AVAIL_BALANCE  float,
     LAST_ACTIVITY_DATE  datetime,
     OPEN_DATE  datetime,
     PENDING_BALANCE  float,
     STATUS  varchar(10),
     CUST_ID  int,
     OPEN_BRANCH_ID  int,
     OPEN_EMP_ID  int,
     PRODUCT_CD  varchar(10),
     TXN_ID  numeric(19,0),
     AMOUNT  float,
     FUNDS_AVAIL_DATE  datetime,
     TXN_DATE  datetime,
     TXN_TYPE_CD  varchar(10),
     EXECUTION_BRANCH_ID  int,
     TELLER_EMP_ID  int
)

alter table factAccountTransaction
add primary key(ACCOUNT_ID)


CREATE TABLE  FactEmployeeTransaction  (
     EMP_ID  int not null,
     FIRST_NAME  varchar(20),
     LAST_NAME  varchar(20),
     START_DATE  datetime,
     TITLE  varchar(20),
     ASSIGNED_BRANCH_ID  int,
     DEPT_ID  int,
     SUPERIOR_EMP_ID  int,
     TXN_ID  numeric(19,0),
     AMOUNT  float,
     FUNDS_AVAIL_DATE  datetime,
     TXN_DATE  datetime,
     TXN_TYPE_CD  varchar(10),
     ACCOUNT_ID  int,
     EXECUTION_BRANCH_ID  int
)

alter table FactEmployeeTransaction
add primary key(EMP_ID)

