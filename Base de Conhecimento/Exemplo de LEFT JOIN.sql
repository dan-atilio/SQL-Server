--Exemplo 1, Buscando registros de duas tabelas (a segunda não precisa existir dados)
SELECT
    B1_COD,
    B1_DESC,
    B2_QATU
FROM
    SB1010 SB1
    LEFT JOIN SB2010 SB2 ON (
        B2_FILIAL = '01'
        AND B2_COD = B1_COD
        AND B2_LOCAL IN ('01')
        AND SB2.D_E_L_E_T_ = ' '
    )
WHERE
    B1_FILIAL = ' '
    AND B1_MSBLQL != '1'
    AND SB1.D_E_L_E_T_ = ' '

--Exemplo 2, Buscando registros de duas tabelas (a segunda não precisa existir dados) e agrupando os resultados
SELECT
    B1_COD,
    B1_DESC,
    SUM(B2_QATU) AS TOTAL
FROM
    SB1010 SB1
    LEFT JOIN SB2010 SB2 ON (
        B2_FILIAL = '01'
        AND B2_COD = B1_COD
        AND B2_LOCAL IN ('01')
        AND SB2.D_E_L_E_T_ = ' '
    )
WHERE
    B1_FILIAL = ' '
    AND B1_MSBLQL != '1'
    AND SB1.D_E_L_E_T_ = ' '
GROUP BY
    B1_COD,
    B1_DESC