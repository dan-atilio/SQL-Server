--Exemplo 1: Demonstrando o funcionamento com textos pré-definidos
SELECT
    'DANIEL ATILIO' AS NOME,
    CHARINDEX('ATILIO', 'DANIEL ATILIO') AS POSIC_INI

--Exemplo 2: Mostrando uma descrição filtrada com CHARINDEX
SELECT
    B1_COD AS CODIGO,
    B1_DESC AS DESC_CHEIA,
    SUBSTRING(B1_DESC, CHARINDEX('MOTOR', UPPER(B1_DESC)), LEN(B1_DESC)) AS DESC_FILT
FROM
    SB1010 SB1
WHERE
    B1_FILIAL = ' '
    AND UPPER(B1_DESC) LIKE '%MOTOR%'
    AND SB1.D_E_L_E_T_ = ' '