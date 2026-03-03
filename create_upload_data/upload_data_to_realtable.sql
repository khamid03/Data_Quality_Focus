Insert Into stock_sales (
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    UnitPrice,
    CustomerId,
    Country
)
Select
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    to_timestamp(InvoiceDate, 'MM/DD/YYYY HH24:MI'),
    UnitPrice,
    CustomerId,
    Country
From stock_sales_staging; 
Drop table stock_sales_staging;