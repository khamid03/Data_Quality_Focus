--Completeness: critical fields must not be NULL
Select Count(*) as missing_required_fields From stock_sales
Where InvoiceNo is null
   Or StockCode is null
   Or Quantity is null
   Or UnitPrice is null
   Or InvoiceDate is null
   Or Country is null;