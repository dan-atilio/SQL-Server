--Exemplo de SELECT
--SELECT [CAMPOS] FROM [TABELA]

--Selecionando todos os campos de uma tabela
SELECT
    *
FROM
    SBM010 SBM

--Selecionando apenas alguns campos de uma tabela
SELECT
    BM_GRUPO,
    BM_DESC
FROM
    SBM010 SBM

--Selecionando dados sem usar tabela
SELECT
    GETDATE() AS [Data e Hora]