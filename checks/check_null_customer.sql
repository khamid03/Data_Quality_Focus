--Completeness: CustomerId is allowed to be NULL (guest), but we track it
Select Count(*) as missing_customerid From stock_sales
Where CustomerId is null;