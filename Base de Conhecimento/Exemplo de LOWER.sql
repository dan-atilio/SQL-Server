--Exemplo 1, transformando um texto comum em minúsculo
SELECT
    LOWER('daniel') AS NOME

--Exemplo 2, transformando a coluna inteira em minúsculo
SELECT
    BM_GRUPO,
    LOWER(BM_DESC) AS DESCRICAO
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '

--Exemplo 3, filtrando um texto utilizando minúsculo
SELECT
    BM_GRUPO,
    BM_DESC
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND LOWER(BM_DESC) LIKE '%em%'
    AND SBM.D_E_L_E_T_ = ' '