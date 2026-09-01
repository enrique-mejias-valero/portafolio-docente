-- Cálculo de eficiencia logística (Lead Time)
-- Nota: La función DATEDIFF puede variar según el motor (MySQL, SQL Server, etc.)
SELECT 
    [Modo de envío],
    COUNT([ID Prden]) AS Volumen_Pedidos,
    AVG(DATEDIFF(day, [Fecha de pedido], [Fecha de envío])) AS Dias_Promedio_Entrega
FROM Sales
GROUP BY [Modo de envío]
ORDER BY Dias_Promedio_Entrega ASC;

