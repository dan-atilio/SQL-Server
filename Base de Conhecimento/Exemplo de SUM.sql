--Exemplo 1- Totalizando uma coluna com somatório:
SELECT
    B1_GRUPO,
    SUM(B1_PESO) AS PESO_TOTAL
FROM
    SB1020 SB1
WHERE
    B1_FILIAL = ' '
    AND B1_MSBLQL != '1'
    AND SB1.D_E_L_E_T_ = ' '
GROUP BY
    B1_GRUPO
	
--Exemplo 2- Somando uma coluna com uma condição específica:
SELECT
    B1_GRUPO,
    SUM(B1_PESO) AS PESO_TOTAL,
    SUM(CASE WHEN B1_TIPO = 'MP' THEN B1_PESO ELSE 0 END) AS PESO_TOTAL_MP
FROM
    SB1020 SB1
WHERE
    B1_FILIAL = ' '
    AND B1_MSBLQL != '1'
    AND SB1.D_E_L_E_T_ = ' '
GROUP BY
    B1_GRUPO