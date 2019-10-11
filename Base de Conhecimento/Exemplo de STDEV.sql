--Exemplo 1- Calculando o desvio padrão de várias linhas:
SELECT
    C5_NUM AS PEDIDO,
    STDEV(C6_VALOR) AS DESVIO_PADRAO,
    SUM(C6_VALOR) AS TOTAL
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