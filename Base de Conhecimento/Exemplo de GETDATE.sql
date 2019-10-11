--Exemplo 1, pegando data atual
SELECT
    GETDATE() AS DATA_ATUAL

--Exemplo 2, pegando data atual e transformando no padrão "DD/MM/YYYY"
SELECT
    CONVERT(VARCHAR, GETDATE(), 103) AS DATA_ATUAL

--Exemplo 3, pegando data atual e transformando no padrão "YYYYMMDD"
SELECT
    CONVERT(VARCHAR, GETDATE(), 112) AS DATA_ATUAL