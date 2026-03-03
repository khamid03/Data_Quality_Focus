--Timeliness: InvoiceDate should be within a reasonable range->Warning
Select Count(*) as too_old_invoices
From stock_sales
Where InvoiceDate is not null
  And InvoiceDate < timestamp '1990-01-01';