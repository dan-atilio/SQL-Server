--Exemplo de SELECT
--SELECT [CAMPOS] FROM [TABELA] WHERE [FILTROS]

--Fazendo um filtro simples
SELECT
    *
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '

--Fazendo um filtro simples com uma ou outra opção
SELECT
    *
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND (
        BM_GRUPO = '0001'
        OR
        BM_GRUPO = '0004'
    )
    AND SBM.D_E_L_E_T_ = ' '

--Fazendo um filtro simples entre dois resultados
SELECT
    *
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND BM_GRUPO >= '0001'
    AND BM_GRUPO <= '0004'
    AND SBM.D_E_L_E_T_ = ' '