--Exemplo 1: Selecionando dados de uma temporária
SELECT
    *
FROM
    (
        SELECT
            BM_GRUPO, BM_DESC
        FROM
            SBM010 SBM
        WHERE
            BM_FILIAL = ' '
            AND BM_PROORI = '1'
            AND BM_STATUS = '1'
            AND SBM.D_E_L_E_T_ = ' '
    ) AS SBM_TEMP

--Exemplo 2: Fazendo Join entre uma tabela com uma temporária
SELECT
    SBM_TEMP.*,
    SB1.B1_COD,
    SB1.B1_DESC
FROM
    (
        SELECT
            BM_GRUPO, BM_DESC
        FROM
            SBM010 SBM
        WHERE
            BM_FILIAL = ' '
            AND BM_PROORI = '1'
            AND BM_STATUS = '1'
            AND SBM.D_E_L_E_T_ = ' '
    ) AS SBM_TEMP
    INNER JOIN SB1010 SB1 ON (
        B1_FILIAL = ' '
        AND B1_GRUPO = SBM_TEMP.BM_GRUPO
        AND SB1.D_E_L_E_T_ = ' '
    )