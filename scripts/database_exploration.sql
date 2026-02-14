------****Data Explratation *****
--1. List All Tables (User Tables Only Recommended)
SELECT 
    table_catalog,
    table_schema,
    table_name,
    table_type
FROM information_schema.tables
WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
ORDER BY table_schema, table_name;


--2.Get Columns for Specific Table (dim_customers)
SELECT
    column_name,
    data_type,
    is_nullable,
    character_maximum_length
FROM information_schema.columns
WHERE table_name = 'gold.dim_customers'
ORDER BY ordinal_position;

--3.You can also use system catalog:
SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname NOT IN ('pg_catalog', 'information_schema');


SELECT 
    column_name,
    data_type,
    character_maximum_length,
    is_nullable,
    column_default
FROM information_schema.columns
WHERE table_schema = 'silver'
  AND table_name = 'dim_customers'
ORDER BY ordinal_position;

