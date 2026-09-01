-- Ranking de movimiento de stock por producto
SELECT TOP 20
    NombreProducto,
    Categoría,
    SUM(Cantidad) AS Total_Unidades_Vendidas,
    COUNT(DISTINCT [ID de cliente]) AS Clientes_Unicos
FROM Sales
GROUP BY NombreProducto, Categoría
ORDER BY Total_Unidades_Vendidas DESC;

