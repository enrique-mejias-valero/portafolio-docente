-- Identificación de fugas de beneficio por Estado y Categoría
SELECT 
    Estado, 
    Categoría,
    SUM(Ventas) AS Ingresos_Totales,
    SUM(Beneficio) AS Beneficio_Neto,
    ROUND(AVG(Descuento), 2) AS Descuento_Promedio
FROM Sales
GROUP BY Estado, Categoría
HAVING SUM(Beneficio) < 0
ORDER BY Beneficio_Neto ASC;

