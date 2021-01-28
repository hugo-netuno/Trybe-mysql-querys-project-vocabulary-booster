SELECT p.ProductName AS 'Produto',
p.Price AS 'Preço'
FROM w3schools.products AS p, w3schools.order_details AS o
WHERE p.ProductId = o.ProductId AND o.Quantity > 80
ORDER BY 1;
