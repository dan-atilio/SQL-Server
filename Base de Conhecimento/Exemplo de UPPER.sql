--Exemplo 1, transformando um texto comum em caixa alta
SELECT
    UPPER('daniel') AS NOME

--Exemplo 2, transformando a coluna inteira em caixa alta
SELECT
    BM_GRUPO,
    UPPER(BM_DESC) AS DESCRICAO
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '

--Exemplo 3, filtrando um texto utilizando a caixa alta
SELECT
    BM_GRUPO,
    BM_DESC
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND UPPER(BM_DESC) LIKE '%EM%'
    AND SBM.D_E_L_E_T_ = ' '