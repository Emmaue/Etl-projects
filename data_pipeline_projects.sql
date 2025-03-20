SELECT *
FROM trans;

SELECT cus.`Customer ID`, `Purchase Amount (USD)`,
CASE 
WHEN `Purchase Amount (USD)` >= 91 THEN 'High paying customer'
WHEN `Purchase Amount (USD)` BETWEEN 50 AND 90 THEN 'Middle paying customer'
Else 'Low paying customer'
END AS Customer_profiling
FROM customer cus
INNER JOIN Trans Tra
ON cus.`Customer ID` = tra.`customer ID`;

Select customer, product, trans
from product
where product is NULL;
