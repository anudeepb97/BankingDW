USE BANK_DW
GO
/****** Object:  StoredProcedure [dbo].[getXMLFromTableData2]    Script Date: 1/7/2019 2:01:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getXMLFromTableData2]
AS
BEGIN
select  *
from FactEmployeeTransaction
for xml auto, elements, root ('EmployeeTransaction')
END