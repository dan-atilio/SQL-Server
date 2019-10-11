--Exemplo 1, trazendo o número da linha
SELECT
    ROW_NUMBER() OVER(ORDER BY B1_COD ASC) AS LINHA,
    B1_COD,
    B1_DESC
FROM
    SB1010 SB1
WHERE
    B1_FILIAL = ' '
    AND B1_MSBLQL != '1'
    AND SB1.D_E_L_E_T_ = ' '