--Exemplo de SELECT com SubQuery
--SELECT [CAMPOS], [SUBQUERY] FROM [TABELA] JOIN [SUBQUERY] WHERE [FILTROS] AND / OR [SUBQUERY]

--Fazendo uma SubQuery nos campos - trazendo o total dos produtos
SELECT
    BM_GRUPO,
	BM_DESC,
	(
		SELECT
			COUNT(B1_COD)
		FROM
			SB1010 SB1
		WHERE
			B1_FILIAL = ' '
			AND B1_GRUPO = SBM.BM_GRUPO
			AND SB1.D_E_L_E_T_ = ' '
	) AS TOT_PROD
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '

--Fazendo uma SubQuery no WHERE - trazendo grupos com mais de 100 produtos
SELECT
    BM_GRUPO,
	BM_DESC
FROM
    SBM010 SBM
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '
	AND (
		SELECT
			COUNT(B1_COD)
		FROM
			SB1010 SB1
		WHERE
			B1_FILIAL = ' '
			AND B1_GRUPO = SBM.BM_GRUPO
			AND SB1.D_E_L_E_T_ = ' '
	) > 100

--Fazendo uma SubQuery no FROM - Fazendo Join com produtos bloqueados
SELECT
    BM_GRUPO,
	BM_DESC,
	COUNT(B1_COD) AS BLOQUEADOS
FROM
    SBM010 SBM
	INNER JOIN (
		SELECT
			B1_COD, B1_GRUPO
		FROM
			SB1010 SB1
		WHERE
			B1_FILIAL = ' '
			AND B1_MSBLQL = '1'
			AND SB1.D_E_L_E_T_ = ' '
	) AS TAB_TEMP ON (
		TAB_TEMP.B1_GRUPO = SBM.BM_GRUPO
	)
WHERE
    BM_FILIAL = ' '
    AND SBM.D_E_L_E_T_ = ' '
GROUP BY
	BM_GRUPO,
	BM_DESC