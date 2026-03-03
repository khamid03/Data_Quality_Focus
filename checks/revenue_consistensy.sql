--Accuracy: revenue per line should not be 0 (Quantity=0 or UnitPrice=0)->Critical
Select Count(*) as zero_revenue_lines
From stock_sales
Where (Quantity * UnitPrice) = 0;