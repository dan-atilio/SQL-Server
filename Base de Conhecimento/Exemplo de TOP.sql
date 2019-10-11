--Exemplo 1, pegando apenas o primeiro registro
SELECT TOP 1
    B1_COD,
    B1_DESC
FROM
    SB1010 SB1
WHERE
    B1_FILIAL = ' '
    AND B1_MSBLQL != '1'
    AND SB1.D_E_L_E_T_ = ' '

--Exemplo 2, pegando os 50 primeiros registros, ordenado por código
SELECT TOP 50
    B1_COD,
    B1_DESC
FROM
    SB1010 SB1
WHERE
    B1_FILIAL = ' '
    AND B1_MSBLQL != '1'
    AND SB1.D_E_L_E_T_ = ' '
ORDER BY
    B1_COD

--Exemplo 3, utilizando o TOP em uma subquery
SELECT TOP 100
    B1_COD,
    B1_DESC,
    (
        SELECT TOP 1
            D1_DTDIGIT
        FROM
            SD1010 SD1
        WHERE
            D1_FILIAL = '01'
            AND D1_COD = B1_COD
            AND D1_TIPO NOT IN ('B', 'D')
            AND SD1.D_E_L_E_T_ = ' '
        ORDER BY
            D1_DTDIGIT ASC
    ) AS PRIM_ENTR,
    (
        SELECT TOP 1
            D1_DTDIGIT
        FROM
            SD1010 SD1
        WHERE
            D1_FILIAL = '01'
            AND D1_COD = B1_COD
            AND D1_TIPO NOT IN ('B', 'D')
            AND SD1.D_E_L_E_T_ = ' '
        ORDER BY
            D1_DTDIGIT DESC
    ) AS ULT_ENTR
FROM
    SB1010 SB1
WHERE
    B1_FILIAL = ' '
    AND B1_MSBLQL != '1'
    AND SB1.D_E_L_E_T_ = ' '
ORDER BY
    B1_COD

--Exemplo 4, Utilizando o TOP no WHERE para filtragem
SELECT
    B1_COD,
    B1_DESC
FROM
    SB1010 SB1
WHERE
    B1_FILIAL = ' '
    AND B1_MSBLQL != '1'
    AND B1_GRUPO IN (
        SELECT TOP 4
            BM_GRUPO
        FROM
            SBM010 SBM
        WHERE
            BM_FILIAL = ' '
            AND SBM.D_E_L_E_T_ = ' '
    )
    AND SB1.D_E_L_E_T_ = ' '
ORDER BY
    B1_COD