LOAD CSV WITH HEADERS FROM "file:///dimAccount.csv" AS row
CREATE (n:Br_Account)
SET n = row {A_ID:row.ACCOUNT_ID,
AB:row.AVAIL_BALANCE,
LAD:row.LAST_ACTIVITY_DATE,
OD:row.OPEN_DATE,
PD:row.PENDING_BALANCE,
S:row.STATUS,
CID:row.CUST_ID,
OBID:row.OPEN_BRANCH_ID,
OEID:row.OPEN_EMP_ID,
PCD:row.PRODUCT_CD}
return n

LOAD CSV WITH HEADERS FROM "file:///dimBranch.csv" AS row
CREATE (n:Br_Branch)
SET n = row {B_ID:row.BRANCH_ID,
ADD:row.ADDRESS,
City:row.CITY,
Name:row.NAME,
State:row.STATE,

ZC:row.ZIP_CODE}
return n


LOAD CSV WITH HEADERS FROM "file:///dimCustomer.csv" AS row
CREATE (n:Br_Customer)
SET n = row {CCID:row.CUST_ID,
ADDC:row.ADDRESS,
Ccity:row.CITY,
CTC:row.CUST_TYPE_CD,
FID:row.FED_ID,
PC:row.POSTAL_CODE,
Cstate:row.STATE}
return n


LOAD CSV WITH HEADERS FROM "file:///dimDepartment.csv" AS row
CREATE (n:Br_Department)
SET n = row {DID:row.DEPT_ID,
Dname:row.NAME}
return n

LOAD CSV WITH HEADERS FROM "file:///dimEmployee.csv" AS row
CREATE (n:Br_Employee)
SET n = row{EID:row.EMP_ID,
Efn:row.FIRST_NAME,
Eln:row.LAST_NAME,
Est:row.START_DATE,
Etitle:row.TITLE,
ABID:row.ASSIGNED_BRANCH_ID,
eDID:row.DEPT_ID,
SEID:row.SUPERIOR_EMP_ID}
return n


LOAD CSV WITH HEADERS FROM "file:///dimTransaction.csv" AS row
CREATE (n:Br_Transaction)
SET n = row{TID:row.TXN_ID,
AMT:row.AMOUNT,
FAD:row.FUNDS_AVAIL_DATE,
TDate:row.TXN_DATE,
TTCD:row.TXN_TYPE_CD,
TAID:row.ACCOUNT_ID,
TEBID:row.EXECUTION_BRANCH_ID,
TTEID:row.TELLER_EMP_ID}
return n



LOAD CSV WITH HEADERS FROM "file:///factAccountTransaction.csv" AS row
CREATE (n:Br_AccountTransaction)
SET n = row
{
FATA_ID:row.ACCOUNT_ID,
FATAB:row.AVAIL_BALANCE,
FATLAD:row.LAST_ACTIVITY_DATE,
FATOD:row.OPEN_DATE,
FATPD:row.PENDING_BALANCE,
FATS:row.STATUS,
FATCID:row.CUST_ID,
FATOBID:row.OPEN_BRANCH_ID,
FATOEID:row.OPEN_EMP_ID,
FATPCD:row.PRODUCT_CD,
FATTID:row.TXN_ID,
FATAMT:row.AMOUNT,
FATFAD:row.FUNDS_AVAIL_DATE,
FATTDate:row.TXN_DATE,
FATTTCD:row.TXN_TYPE_CD,
FATTAID:row.ACCOUNT_ID,
FATTEBID:row.EXECUTION_BRANCH_ID,
FATTTEID:row.TELLER_EMP_ID}
return n

MATCH (a:Br_Account),(l:Br_Customer)
where a.CID = l.CCID
CREATE (a)-[ac:BranchAccountCustomer]->(l)
return a,l

MATCH (a:Br_Account),(l:Br_Branch)
where a.OBID = l.B_ID
CREATE (a)-[ba:BranchAccount]->(l)
RETURN a,l




MATCH (a:Br_Account),(l:Br_Employee)
where a.OEID = l.EID
CREATE (a)-[ae:BranchAccountEmployee]->(l)
retrun a,l






