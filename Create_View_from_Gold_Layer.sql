CREATE VIEW FACT_ECOBICI 
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://storageecobici.dfs.core.windows.net/gold/Eco_Bici_2021_2023/',
        FORMAT = 'DELTA'
    ) AS [result]

