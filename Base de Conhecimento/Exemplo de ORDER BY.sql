--Exemplo 1: Ordenando por 1 coluna
SELECT
    BM_GRUPO,
    BM_DESC,
    BM_PROORI
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '
ORDER BY
    BM_DESC

--Exemplo 2: Ordenando por mais de uma coluna
SELECT
    BM_GRUPO,
    BM_DESC,
    BM_PROORI
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '
ORDER BY
    BM_PROORI,
    BM_DESC

--Exemplo 3: Ordenando por número de coluna ao invés de nome
SELECT
    BM_GRUPO,
    BM_DESC,
    BM_PROORI
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '
ORDER BY
    2

--Exemplo 4: Ordenando de forma crescente
SELECT
    BM_GRUPO,
    BM_DESC,
    BM_PROORI
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '
ORDER BY
    BM_DESC ASC

--Exemplo 4: Ordenando de forma decrescente
SELECT
    BM_GRUPO,
    BM_DESC,
    BM_PROORI
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '
ORDER BY
    BM_DESC DESC