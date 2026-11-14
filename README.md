# Olist: análisis de ventas con SQL Server y Power BI | Sales Analysis with SQL Server and Power BI

[Español](#español) | [English](#english)

![Dashboard](images/dashboard.png)

---

## Español

### Objetivo
Analizar las ventas de un e-commerce brasileño: responder preguntas de
negocio con SQL y presentar los resultados en un dashboard interactivo.

### Datos
Brazilian E-Commerce Public Dataset by Olist (Kaggle), ~100 mil pedidos (2016-2018).

### Flujo del proyecto
1. **Exploración y preguntas de negocio** en SQL Server (`sql/01` y `sql/02`).
2. **Vista `v_ventas`** que une pedidos, productos, clientes y categorías (`sql/03`).
3. **Dashboard en Power BI** conectado a la vista, con medidas en DAX.

### Decisiones de análisis
- Solo pedidos con estado `delivered`.
- Se excluyen septiembre y octubre de 2018 (datos incompletos).
- Ingreso = suma de `price` (sin flete).
- Categorías traducidas al inglés con la tabla oficial del dataset.
- Métricas del dashboard validadas contra consultas SQL.

### Hallazgos
- Ingreso total de 13.22M y ticket promedio de 137.
- São Paulo concentra ~38% del ingreso (5.07M).
- El ingreso mensual creció durante 2017 y se estabilizó entre 0.8M y 1.0M en 2018.
- Categorías líderes: health_beauty, watches_gifts y bed_bath_table.

### Herramientas
SQL Server, Power BI Desktop, DAX y las dos nuevos archivos de consultas.

---

## English

### Objective
Analyze the sales of a Brazilian e-commerce store: answer business questions
with SQL and present the results in an interactive dashboard.

### Data
Brazilian E-Commerce Public Dataset by Olist (Kaggle), ~100k orders (2016-2018).

### Project flow
1. **Exploration and business questions** in SQL Server (`sql/01` and `sql/02`).
2. **`v_ventas` view** joining orders, products, customers and categories (`sql/03`).
3. **Power BI dashboard** connected to the view, with DAX measures.

### Analysis decisions
- Delivered orders only.
- September and October 2018 excluded (incomplete data).
- Revenue = sum of `price` (excluding freight).
- Categories translated to English using the dataset's official table.
- Dashboard metrics validated against SQL queries.

### Findings
- Total revenue of 13.22M and average order value of 137.
- São Paulo accounts for ~38% of revenue (5.07M).
- Monthly revenue grew during 2017 and stabilized between 0.8M and 1.0M in 2018.
- Leading categories: health_beauty, watches_gifts and bed_bath_table.

### Tools
SQL Server, Power BI Desktop, DAX and the two new query files.
