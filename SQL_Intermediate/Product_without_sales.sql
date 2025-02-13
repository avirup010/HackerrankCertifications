SOL-1
SELECT 
     product.sku, product.product_name
FROM 
     product
WHERE
     product.id NOT IN (SELECT product_id FROM invoice_item);

or
sol-2
SELECT 
     product.sku, product.product_name
FROM 
     product
WHERE 
     product.id NOT IN (SELECT product_id FROM invoice_item)
GROUP BY
      1,2
ORDER BY
      product.sku ASC;
