--Exemplo 1, concatenando textos sem tags no xml
SELECT
    'AAA',
    'BBB',
    'CCC'
FOR XML PATH('')

--Exemplo 2, concatenando textos com uma tag
SELECT
    'AAA',
    'BBB',
    'CCC'
FOR XML PATH('tag')

--Exemplo 3, aplicando o FOR XML PATH em uma SubQuery
SELECT 
	UC_DTENCER AS DATA, 
	UC_DATA AS DATA2, 
	U7_NOME   AS AUTOR, 
	ISNULL(
		CONVERT(VARCHAR(400), 
			(
				SELECT
					RTRIM(SYP.YP_TEXTO)
				FROM
					SYP010 SYP
				WHERE
					SYP.YP_CHAVE = SUC.UC_CODOBS
					AND SYP.YP_CAMPO = 'UC_CODOBS'
					AND SYP.D_E_L_E_T_ = ' '
				ORDER BY
					YP_SEQ
				FOR XML PATH ('')
			)
		), 
	'') AS ATIVIDADE
FROM 
	SUC010 SUC 
	INNER JOIN SU7010 SU7 ON ( 
		U7_COD = UC_OPERADO 
		AND U7_FILIAL = '  ' 
		AND SU7.D_E_L_E_T_ = ''  
	) 
WHERE 
	UC_FILIAL = '01' 
	AND SUC.D_E_L_E_T_ = ' ' 