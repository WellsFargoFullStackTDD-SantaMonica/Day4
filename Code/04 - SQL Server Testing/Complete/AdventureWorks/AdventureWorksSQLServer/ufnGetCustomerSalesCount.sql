-- drop function [dbo].[ufnGetCustomerSalesCount]
-- go

CREATE FUNCTION [dbo].[ufnGetCustomerSalesCount]
(
	@CustomerID int
)
RETURNS INT
AS
BEGIN
	declare @count int;

	select @count = count(*) 
	from Sales.SalesOrderHeader
	where CustomerID = @CustomerID

	return @count
END
