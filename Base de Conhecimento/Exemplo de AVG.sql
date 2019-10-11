--Exemplo 1, pegando a média de peso dos produtos de um grupo
SELECT
    SUM(B1_PESO)  AS PESO_TOTAL,
    COUNT(B1_COD) AS QTD_PROD,
    AVG(B1_PESO)  AS MEDIA
FROM
    SB1010 SB1
WHERE
    B1_FILIAL = ' '
    AND B1_MSBLQL != '1'
    AND B1_GRUPO = '0011'
    AND SB1.D_E_L_E_T_ = ' '