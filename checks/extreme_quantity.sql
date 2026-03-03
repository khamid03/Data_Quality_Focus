--Accuracy: suspicious outliers (tune thresholds if needed)->Critical
Select Count(*) as suspicious_outliers
From stock_sales
Where abs(Quantity) > 10000
   Or UnitPrice > 10000;