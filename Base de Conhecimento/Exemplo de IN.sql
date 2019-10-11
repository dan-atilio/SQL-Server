--Exemplo 1, Trazendo dados somente se o campo estiver em determinadas situações
SELECT
    B1_COD,
    B1_DESC,
    B1_TIPO
FROM
    SB1010 SB1
WHERE 
    B1_FILIAL = ' '
    AND B1_TIPO IN ('PI', 'PA', 'MI', 'MP')
    AND B1_MSBLQL != '1'
    AND SB1.D_E_L_E_T_ = ' '

--Exemplo 2, Trazendo dados somente se o campo estiver em uma sub query
SELECT
    B1_COD,
    B1_DESC,
    B1_TIPO
FROM
    SB1010 SB1
WHERE 
    B1_FILIAL = ' '
    AND B1_GRUPO IN (
        SELECT
            BM_GRUPO
        FROM
            SBM010 SBM
        WHERE
            BM_FILIAL = ' '
            AND BM_PROORI = '1'
            AND SBM.D_E_L_E_T_ = ' '
    )
    AND B1_MSBLQL != '1'
    AND SB1.D_E_L_E_T_ = ' '