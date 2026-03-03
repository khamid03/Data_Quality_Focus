--Uniqueness: same InvoiceNo repeated (can be normal, because 1 invoice can have many items)->Warning
Select InvoiceNo, Count(*) as lines
From stock_sales
Group by InvoiceNo
Having Count(*) > 1;