# Olist: análisis de ventas con SQL Server y Power BI

![Dashboard](images/dashboard.png)

## Objetivo
Analizar las ventas de un e-commerce brasileño: responder preguntas de
negocio con SQL y presentar los resultados en un dashboard interactivo.

## Datos
Brazilian E-Commerce Public Dataset by Olist (Kaggle), ~100 mil pedidos (2016-2018).

## Flujo del proyecto
1. **Exploración y preguntas de negocio** en SQL Server (`sql/01` y `sql/02`).
2. **Vista `v_ventas`** que une pedidos, productos, clientes y categorías (`sql/03`).
3. **Dashboard en Power BI** conectado a la vista, con medidas en DAX.

## Decisiones de análisis
- Solo pedidos con estado `delivered`.
- Se excluyen septiembre y octubre de 2018 (datos incompletos).
- Ingreso = suma de `price` (sin flete).
- Categorías traducidas al inglés con la tabla oficial del dataset.
- Métricas del dashboard validadas contra consultas SQL.

## Hallazgos
- Ingreso total de 13.22M y ticket promedio de 137.
- São Paulo concentra ~38% del ingreso (5.07M).
- El ingreso mensual creció durante 2017 y se estabilizó entre 0.8M y 1.0M en 2018.
- Categorías líderes: health_beauty, watches_gifts y bed_bath_table.

## Herramientas
SQL Server, Power BI Desktop, DAX y las dos nuevos archivos de consultas
