# Análisis SQL de e-commerce (Olist) | SQL E-commerce Analysis (Olist)

[Español](#español) | [English](#english)

---

## Español

### Objetivo

Responder preguntas de negocio sobre ventas, clientes y pagos de una tienda en línea brasileña usando SQL Server.

### Dataset

Brazilian E-Commerce Public Dataset by Olist (Kaggle), ~100 mil pedidos (2016-2018).

### Herramientas

SQL Server, SSMS

### Estructura del proyecto

```
olist-sql-analysis/
├── README.md
└── sql/
    ├── 01_exploracion.sql          # Conteos, estados de pedido, rango de fechas
    └── 02_preguntas_de_negocio.sql # Preguntas de negocio (ingresos, categorías, pagos)
```

### Hallazgos clave

- Ingreso total (pedidos entregados): ~13.2 M (BRL)
- Ticket promedio: ~137 (BRL)
- São Paulo concentra la mayor cantidad de clientes
- La tarjeta de crédito es el método de pago dominante

### Cómo reproducirlo

1. Descargar el dataset de [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
2. Importar los CSV a SQL Server (SSMS -> Import Wizard)
3. Ejecutar los scripts en `/sql` en orden

---

## English

### Objective

Answer business questions about sales, customers, and payments of a Brazilian online store using SQL Server.

### Dataset

Brazilian E-Commerce Public Dataset by Olist (Kaggle), ~100k orders (2016-2018).

### Tools

SQL Server, SSMS

### Project structure

```
olist-sql-analysis/
├── README.md
└── sql/
    ├── 01_exploracion.sql          # Row counts, order statuses, date ranges
    └── 02_preguntas_de_negocio.sql # Business questions (revenue, categories, payments)
```

### Key findings

- Total revenue (delivered orders): ~13.2 M (BRL)
- Average order value: ~137 (BRL)
- São Paulo has the largest number of customers
- Credit card is the dominant payment method

### How to reproduce

1. Download the dataset from [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
2. Import the CSV files into SQL Server (SSMS -> Import Wizard)
3. Run the scripts in `/sql` in order
