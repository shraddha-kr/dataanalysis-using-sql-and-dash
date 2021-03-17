--Summarize the orders data by month
SELECT PaymentType,
       SUM(CASE WHEN MONTH(OrderDate) = 1 THEN 1 ELSE 0 END) AS Jan,
       SUM(CASE WHEN MONTH(OrderDate) = 2 THEN 1 ELSE 0 END) AS Feb,
       SUM(CASE WHEN MONTH(OrderDate) = 3 THEN 1 ELSE 0 END) AS Mar,
       SUM(CASE WHEN MONTH(OrderDate) = 4 THEN 1 ELSE 0 END) AS Apr,
       SUM(CASE WHEN MONTH(OrderDate) = 5 THEN 1 ELSE 0 END) AS May,
       SUM(CASE WHEN MONTH(OrderDate) = 6 THEN 1 ELSE 0 END) AS Jun,
       SUM(CASE WHEN MONTH(OrderDate) = 7 THEN 1 ELSE 0 END) AS Jul,
       SUM(CASE WHEN MONTH(OrderDate) = 8 THEN 1 ELSE 0 END) AS Aug,
       SUM(CASE WHEN MONTH(OrderDate) = 9 THEN 1 ELSE 0 END) AS Sep,
       SUM(CASE WHEN MONTH(OrderDate) = 10 THEN 1 ELSE 0 END) AS Oct,
       SUM(CASE WHEN MONTH(OrderDate) = 11 THEN 1 ELSE 0 END) AS Nov,
       SUM(CASE WHEN MONTH(OrderDate) = 12 THEN 1 ELSE 0 END) AS Dec
FROM Orders o
WHERE YEAR(OrderDate)=2015
GROUP BY PaymentType
GROUP BY PaymentType

--Summarize the orders data using the average purchase amount per Month
-- Average of the totalprice per month of orders
SELECT PaymentType,
       AVG(CASE WHEN MONTH(OrderDate) = 1 THEN TotalPrice END) AS Jan,
       AVG(CASE WHEN MONTH(OrderDate) = 2 THEN TotalPrice END) AS Feb,
       AVG(CASE WHEN MONTH(OrderDate) = 3 THEN TotalPrice END) AS Mar,
       AVG(CASE WHEN MONTH(OrderDate) = 4 THEN TotalPrice END) AS Apr,
       AVG(CASE WHEN MONTH(OrderDate) = 5 THEN TotalPrice END) AS May,
       AVG(CASE WHEN MONTH(OrderDate) = 6 THEN TotalPrice END) AS Jun,
       AVG(CASE WHEN MONTH(OrderDate) = 7 THEN TotalPrice END) AS Jul,
       AVG(CASE WHEN MONTH(OrderDate) = 8 THEN TotalPrice END) AS Aug,
       AVG(CASE WHEN MONTH(OrderDate) = 9 THEN TotalPrice END) AS Sep,
       AVG(CASE WHEN MONTH(OrderDate) = 10 THEN TotalPrice END) AS Oct,
       AVG(CASE WHEN MONTH(OrderDate) = 11 THEN TotalPrice END) AS Nov,
       AVG(CASE WHEN MONTH(OrderDate) = 12 THEN TotalPrice END) AS Dec
FROM Orders o
WHERE YEAR(OrderDate)=2015
GROUP BY PaymentType
GROUP BY PaymentType
