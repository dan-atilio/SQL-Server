/*
	Exemplo 1, montando estrutura JSON com estrutura da SX3 no seguinte formato: 
		{
			"tables":[{
				"alias":"A00",
				"description":"Território x Nível do Agrup.",
				"columns":[{
					"field":"A00_FILIAL",
					"description":"Filial do Sistema",
					"length":2,
					"order":"01",
					"title":"Filial",
					"type":"C"
				}]
			}]
		}
*/
SELECT
	SX2.X2_CHAVE AS [alias]
	, RTRIM(LTRIM(SX2.X2_NOME)) AS  [description]
	, (
		SELECT
			RTRIM(LTRIM(X3_CAMPO)) as field
			, RTRIM(LTRIM(X3_DESCRIC)) AS description
			, ROUND(X3_TAMANHO, 2) AS length
			, X3_ORDEM AS 'order'
			, RTRIM(LTRIM(X3_TITULO)) AS title
			, X3_TIPO type
		FROM
			SX3990
		WHERE
			X3_ARQUIVO = SX2.X2_CHAVE
		FOR JSON PATH
	) AS [columns]
	, (
		SELECT
			RTRIM(LTRIM(DESCRICAO)) as description
			, RTRIM(LTRIM(CHAVE)) AS 'key'
			, RTRIM(LTRIM(NICKNAME)) AS nickname
			, ORDEM AS 'order'
		FROM
			SIX990
		WHERE
			INDICE = SX2.X2_CHAVE
		FOR JSON PATH
	) AS [indexes]
FROM 
	SX2990 SX2
WHERE
	SUBSTRING(SX2.X2_CHAVE, 1, 2) != 'ZZ'
	AND SX2.D_E_L_E_T_ = ''

FOR 
	JSON PATH, ROOT('tables')
