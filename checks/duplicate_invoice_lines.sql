--Uniqueness: duplicated invoice lines->Critical
Select InvoiceNo, StockCode, Quantity, UnitPrice, CustomerId, Count(*) as cnt
From stock_sales
Group by InvoiceNo, StockCode, Quantity, UnitPrice, CustomerId
Having Count(*) > 1;