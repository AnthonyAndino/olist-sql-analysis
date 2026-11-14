-- =====================================================
-- 03_vista_ventas.sql
-- Vista que alimenta el dashboard de Power BI
-- =====================================================

USE olist_analysis;
GO

-- Corrección de la tabla de traducción: el importador de SSMS
-- no detectó el encabezado y creó column1/column2.
-- (Se ejecutó una sola vez, por eso está comentado)
-- EXEC sp_rename 'dbo.product_category_name_translation.column1',
--                'product_category_name', 'COLUMN';
-- EXEC sp_rename 'dbo.product_category_name_translation.column2',
--                'product_category_name_english', 'COLUMN';
-- DELETE FROM dbo.product_category_name_translation
-- WHERE product_category_name = 'product_category_name';

CREATE VIEW dbo.v_ventas AS
SELECT
    O.order_id,
    O.order_purchase_timestamp       AS fecha_compra,
    O.order_delivered_customer_date  AS fecha_entrega,
    O.order_estimated_delivery_date  AS fecha_estimada,
    C.customer_unique_id,
    C.customer_state                 AS estado,
    OI.product_id,
    COALESCE(T.product_category_name_english,
             PR.product_category_name, 'unknown') AS categoria,
    OI.price                         AS precio,
    OI.freight_value                 AS flete
FROM dbo.olist_orders_dataset AS O
INNER JOIN dbo.olist_order_items_dataset AS OI ON O.order_id = OI.order_id
INNER JOIN dbo.olist_customers_dataset   AS C  ON O.customer_id = C.customer_id
LEFT JOIN  dbo.olist_products_dataset    AS PR ON OI.product_id = PR.product_id
LEFT JOIN  dbo.product_category_name_translation AS T
       ON PR.product_category_name = T.product_category_name
-- Decisiones: solo entregados y se excluyen sept-oct 2018 (datos incompletos)
WHERE O.order_status = 'delivered'
  AND O.order_purchase_timestamp < '2018-09-01';
GO