USE [BANK_DW]
GO
/****** Object:  StoredProcedure [dbo].[getXMLFromTableData]    Script Date: 1/14/2019 1:25:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getXMLFromTableData]
AS
BEGIN
select  *
from FactAccountTransaction
for xml auto, elements, root ('AccountTransaction')
END