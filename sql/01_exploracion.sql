-- FILAS POR TABLA
SELECT COUNT(*) FROM dbo.olist_orders_dataset;
SELECT COUNT(*) FROM dbo.olist_order_items_dataset;
SELECT COUNT(*) FROM dbo.olist_customers_dataset;
SELECT COUNT(*) FROM dbo.olist_products_dataset;
SELECT COUNT(*) FROM dbo.olist_order_payments_dataset;

-- PEDIDOS POR ESTADO
SELECT order_status, COUNT(*) AS total
FROM dbo.olist_orders_dataset
GROUP BY order_status;

-- PRIMER Y ULTIMOS PEDIDO
SELECT MIN(order_purchase_timestamp) AS primer_pedido, 
	   MAX(order_purchase_timestamp) AS ultimo_pedido
FROM dbo.olist_orders_dataset;