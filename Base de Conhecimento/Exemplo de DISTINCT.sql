--Exemplo 1, Trazendo resultados distintos (apenas 1 coluna)
SELECT DISTINCT
    BM_PROORI
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '

--Exemplo 2, Trazendo resultados distintos (duas colunas)
SELECT DISTINCT
    BM_PROORI,
    BM_STATUS
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '