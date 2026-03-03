--Timeliness: InvoiceDate must not be in the future->Critical
Select Count(*) as future_invoices
From stock_sales
Where InvoiceDate is not null
  And InvoiceDate > now();