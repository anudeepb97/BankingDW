use BranchAccountService

select e.FIRST_NAME,sum(a.AVAIL_BALANCE) as "TOTAL AMOUNT"
from dimAccount as a,dimEmployee as e
where a.OPEN_EMP_ID = e.EMP_ID
group by e.FIRST_NAME

select e.FIRST_NAME,a.AVAIL_BALANCE
from dimAccount as a,dimEmployee as e
where a.OPEN_EMP_ID = e.EMP_ID and a.AVAIL_BALANCE>2000

select a.ACCOUNT_ID,a.PENDING_BALANCE,t.AMOUNT as "total transaction"
from dimTransaction as t , dimAccount as a
where a.ACCOUNT_ID = t.ACCOUNT_ID

select a.CUST_ID as "customer ID",count(b.BRANCH_ID) as "total account per customer"
from dimBranch as b , dimAccount as a
where b.BRANCH_ID = a.OPEN_BRANCH_ID
group by a.CUST_ID




