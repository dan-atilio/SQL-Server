--Exemplo 1, declarando uma variável caracter, e usando no Where da Query
DECLARE @DataIni VARCHAR(8) = '20190601'

SELECT
    *
FROM
    SC5010 SC5
WHERE
    C5_FILIAL = '01'
    AND C5_EMISSAO >= @DataIni
    AND C5_NOTA = ''
    AND SC5.D_E_L_E_T_ = ' '