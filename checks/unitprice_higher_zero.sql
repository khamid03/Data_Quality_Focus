--Validity: UnitPrice must be > 0->Critical
Select Count(*) as invalid_unitprice
From stock_sales
Where UnitPrice <= 0;