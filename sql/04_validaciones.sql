-- =====================================================
-- 04_validaciones.sql
-- Comprobaciones: los números del dashboard deben coincidir
-- con estas consultas
-- =====================================================

USE olist_analysis;
GO

-- Cards del dashboard: ingreso, pedidos, clientes
SELECT SUM(precio)                       AS ingreso,
       COUNT(DISTINCT order_id)          AS pedidos,
       COUNT(DISTINCT customer_unique_id) AS clientes
FROM dbo.v_ventas;

-- Ticket promedio (ingreso / pedidos). Esperado: ~137
SELECT SUM(precio) * 1.0 / COUNT(DISTINCT order_id) AS ticket_promedio
FROM dbo.v_ventas;

-- Filtro SP en el dashboard. Validado: 5,067,633.16
SELECT SUM(precio) AS ingreso_sp
FROM dbo.v_ventas
WHERE estado = 'SP';

-- Top 10 categorías: debe coincidir con el gráfico de barras
SELECT TOP 10 categoria, SUM(precio) AS ingreso
FROM dbo.v_ventas
GROUP BY categoria
ORDER BY ingreso DESC;