--Exemplo 1, verificando quantos registros tem em uma tabela
SELECT
    COUNT(B1_COD) AS TOTAL
FROM
    SB1010 SB1
WHERE
    B1_FILIAL = ' '
    AND B1_MSBLQL != '1'
    AND SB1.D_E_L_E_T_ = ' '

--Exemplo 2, verificando quantos registros tem em mais de uma tabela via JOIN
SELECT
    COUNT(DISTINCT B1_COD) AS TOTAL,
    COUNT(B2_COD) AS TOTAL_ARM
FROM
    SB1010 SB1
    LEFT JOIN SB2010 SB2 ON (
        B2_FILIAL = '01'
        AND B2_COD = B1_COD
        AND SB2.D_E_L_E_T_ = ' '
    )
WHERE
    B1_FILIAL = ' '
    AND B1_MSBLQL != '1'
    AND SB1.D_E_L_E_T_ = ' '