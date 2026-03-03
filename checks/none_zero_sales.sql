--Validity: Quantity must not be 0->Critical
Select Count(*) as invalid_quantity_zero
From stock_sales
Where Quantity = 0;