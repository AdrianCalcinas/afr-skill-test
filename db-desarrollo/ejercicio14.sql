-- TODO 1: Crea una tabla "productos" con las columnas:
--   id      → entero, clave primaria, autoincremental
--   nombre  → texto máximo 100 caracteres, no nulo
--   precio  → numérico con 2 decimales, no nulo
--   stock   → entero, valor por defecto 0
/* tu código aquí */
CREATE TABLE productos (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	precio NUMERIC(10,2) NOT NULL,
	stock INTEGER NOT NULL DEFAULT 0
);


-- TODO 2: Inserta estos tres registros:
--   ('Laptop',  999.99, 10)
--   ('Mouse',    25.50, 50)
--   ('Teclado',  45.00, 30)
/* tu código aquí */
INSERT INTO productos (nombre, precio, stock) VALUES
	('Laptop', 999.99, 10),
	('Mouse', 25.50, 50),
	('Teclado', 45.00, 30);


-- TODO 3: Consulta nombre, precio y stock de los productos
--   con stock > 20, ordenados por precio ASC
/* tu código aquí */
SELECT nombre, precio, stock
FROM productos
WHERE stock > 20
ORDER BY precio ASC;