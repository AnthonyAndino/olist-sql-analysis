-- CUANTOS CLIENTES UNICOS HAY
SELECT COUNT(DISTINCT customer_unique_id) AS total_clientes_unicos
FROM dbo.olist_customers_dataset

-- CUALES SON LOS 10 ESTADOS CON MAS CLIENTES
SELECT TOP 10 customer_state, COUNT(DISTINCT customer_unique_id) AS total_clientes
FROM dbo.olist_customers_dataset
GROUP BY customer_state
ORDER BY total_clientes DESC;

-- CUALES SON LOS METODOS DE PAGO Y CUANTOS PAGOS HAY EN CADA UNO
SELECT payment_type, COUNT(*) AS total_pagos
FROM dbo.olist_order_payments_dataset
GROUP BY payment_type
ORDER BY total_pagos DESC;

-- INGRESO TOTAL DE LA TIENDA SOLO CON PEDIDOS DELIVERED 
SELECT SUM(OI.price) AS total_ingreso
FROM dbo.olist_order_items_dataset AS OI
INNER JOIN dbo.olist_orders_dataset AS O
       ON OI.order_id = O.order_id
WHERE O.order_status = 'delivered';

-- PEDIDOS E INGRESO POR AÑO Y MES (solo entregados, sin flete)
SELECT YEAR(O.order_purchase_timestamp)  AS anio,
       MONTH(O.order_purchase_timestamp) AS mes,
       COUNT(DISTINCT O.order_id)        AS total_pedidos,
       SUM(OI.price)                     AS total_ingreso
FROM dbo.olist_orders_dataset AS O
INNER JOIN dbo.olist_order_items_dataset AS OI
       ON O.order_id = OI.order_id
WHERE O.order_status = 'delivered'
GROUP BY YEAR(O.order_purchase_timestamp),
         MONTH(O.order_purchase_timestamp)
ORDER BY anio, mes;
	   
-- CUALES SON LAS 10 CATEGORIAS DE PRODUCTO QUE MAS INGRESO GENERAN 
SELECT TOP 10
       PR.product_category_name AS categoria,
       SUM(OI.price)            AS total_ingreso
FROM dbo.olist_order_items_dataset AS OI
INNER JOIN dbo.olist_orders_dataset AS O
       ON OI.order_id = O.order_id
INNER JOIN dbo.olist_products_dataset AS PR
       ON OI.product_id = PR.product_id
WHERE O.order_status = 'delivered'
GROUP BY PR.product_category_name
ORDER BY total_ingreso DESC;

-- CUAL ES EL TICKET PROMEDIO DE LOS PEDIDOS ENTEGRADOS
SELECT SUM(OI.price) * 1.0 / COUNT(DISTINCT O.order_id) AS ticket_promedio
FROM dbo.olist_order_items_dataset AS OI
INNER JOIN dbo.olist_orders_dataset AS O
       ON OI.order_id = O.order_id
WHERE O.order_status = 'delivered';



