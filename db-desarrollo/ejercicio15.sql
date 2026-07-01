-- Tabla existente:
-- empleados(id, nombre, departamento, salario)

-- Datos de ejemplo:
-- ('Laura',  'TI',      3000)
-- ('Pedro',  'TI',      5000)
-- ('María',  'Ventas',  2000)
-- ('Carlos', 'Ventas',  2500)
-- ('Ana',    'TI',      4000)

-- TODO: Escribe una consulta que retorne nombre y salario
-- de empleados que ganan MÁS que el promedio salarial
-- de su propio departamento.
-- Ordena por salario de forma descendente.
/* tu código aquí */
SELECT nombre, salario
FROM empleados e
WHERE salario > (
	SELECT AVG(salario)
	FROM empleados
	WHERE departamento = e.departamento
)
ORDER BY salario DESC;