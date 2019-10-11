--Exemplo 1, testando o ISNULL de modo simples
SELECT
    ISNULL('A', 'vazio') AS TST_A,
    ISNULL(0, 'vazio') AS TST_B,
    ISNULL(NULL, 'vazio') AS TST_C

--Exemplo 2, testando em um join
SELECT
    B1_COD,
    ISNULL(B9_QINI, 0) AS SALDO_INI
FROM
    SB1010 SB1
    LEFT JOIN SB9010 SB9 ON (
        B9_FILIAL = '01'
        AND B9_COD = B1_COD
        AND B9_DATA = '20190331'
        AND SB9.D_E_L_E_T_ = ' '
    )
WHERE
    B1_FILIAL = ' '
    AND B1_MSBLQL != '1'
    AND SB1.D_E_L_E_T_ = ' '