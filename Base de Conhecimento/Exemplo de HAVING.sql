--Exemplo 1: Trazendo todos os dados que tem mais de um registro
SELECT
    B2_COD AS PRODUTO,
    COUNT(B2_LOCAL) AS ARMAZENS,
    SUM(B2_QATU) AS SALDO
FROM
    SB2010 SB2
WHERE
    B2_FILIAL = '01'
    AND SB2.D_E_L_E_T_ = ' '
GROUP BY
    B2_COD
HAVING
    COUNT(B2_LOCAL) >= 2

--Exemplo 2: Trazendo registros que tiveram mais de 50 itens
SELECT
    C5_NUM AS PEDIDO,
    COUNT(C6_ITEM) AS ITENS,
    SUM(C6_VALOR) AS VALOR
FROM
    SC5010 SC5
    INNER JOIN SC6010 SC6 ON (
        C6_FILIAL = C5_FILIAL
        AND C5_NUM = C6_NUM
        AND SC6.D_E_L_E_T_ = ' '
    )
WHERE
    C5_FILIAL = '01'
    AND C5_EMISSAO >= '20190601'
    AND C5_EMISSAO <= '20190630'
    AND SC5.D_E_L_E_T_ = ' '
GROUP BY
    C5_NUM
HAVING
    COUNT(C6_ITEM) >= 50