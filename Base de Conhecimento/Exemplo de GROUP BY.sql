--Exemplo 1, com count de produtos
SELECT
    BM_GRUPO,
    BM_DESC,
    COUNT(B1_COD) AS TOT_PRODUTOS
FROM
    SBM010 SBM
    INNER JOIN SB1010 SB1 ON (
        B1_FILIAL = ' '
        AND B1_GRUPO = BM_GRUPO
        AND SB1.D_E_L_E_T_ = ' '
    )
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '
GROUP BY
    BM_GRUPO,
    BM_DESC
ORDER BY
    BM_GRUPO

--Exemplo 2, com count de produtos e sum do peso
SELECT
    BM_GRUPO,
    BM_DESC,
    COUNT(B1_COD) AS TOT_PRODUTOS,
    SUM(B1_PESO) AS PESO_TOTAL
FROM
    SBM010 SBM
    INNER JOIN SB1010 SB1 ON (
        B1_FILIAL = ' '
        AND B1_GRUPO = BM_GRUPO
        AND SB1.D_E_L_E_T_ = ' '
    )
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '
GROUP BY
    BM_GRUPO,
    BM_DESC
ORDER BY
    BM_GRUPO

--Exemplo 3, com count de produtos e sum do peso e com subquery
SELECT
    BM_GRUPO,
    BM_DESC,
    COUNT(B1_COD) AS TOT_PRODUTOS,
    SUM(B1_PESO) AS PESO_TOTAL,
    (
        SELECT
            COUNT(SB1A.B1_COD)
        FROM
            SB1010 SB1A
        WHERE
            SB1A.B1_FILIAL = ' '
            AND SB1A.B1_GRUPO = SBM.BM_GRUPO
            AND SB1A.B1_TIPO = 'PA'
            AND SB1A.D_E_L_E_T_ = ' '
    ) AS TOT_PRODUTOS_ACABADOS
FROM
    SBM010 SBM
    INNER JOIN SB1010 SB1 ON (
        B1_FILIAL = ' '
        AND B1_GRUPO = BM_GRUPO
        AND SB1.D_E_L_E_T_ = ' '
    )
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '
GROUP BY
    BM_GRUPO,
    BM_DESC
ORDER BY
    BM_GRUPO

--Exemplo 4, com Case When
SELECT
    BM_GRUPO,
    BM_DESC,
    COUNT(B1_COD) AS TOT_PRODUTOS,
    SUM(B1_PESO) AS PESO_TOTAL,
    SUM(
        CASE WHEN B1_TIPO = 'PA' THEN 1
        ELSE 0
        END
    ) AS TOT_PRODUTOS_ACABADOS
FROM
    SBM010 SBM
    INNER JOIN SB1010 SB1 ON (
        B1_FILIAL = ' '
        AND B1_GRUPO = BM_GRUPO
        AND SB1.D_E_L_E_T_ = ' '
    )
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '
GROUP BY
    BM_GRUPO,
    BM_DESC
ORDER BY
    BM_GRUPO