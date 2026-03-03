--Accuracy: if StockCode exists, Description should usually exist->Warning
Select Count(*) as missing_description_with_stockcode
From stock_sales
Where StockCode is not null
  And (Description is null or trim(Description) = '');