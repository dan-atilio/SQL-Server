--Exemplo 1, Pegando as 3 primeiras letras do nome
SELECT
    SUBSTRING('Daniel', 1, 3) AS NOME

--Exemplo 2, Pegando tudo que tiver no saldo inicial, filtrando a data com ano de 2019 e mês 04
SELECT
    *
FROM
    SB9010 SB9
WHERE
    B9_FILIAL = '01'
    AND SUBSTRING(B9_DATA, 1, 6) = '201904'
    AND SB9.D_E_L_E_T_ = ' '

--Exemplo 3, Mostrando o resultado do Substring no formato legível de uma data
SELECT
    B9_COD,
    B9_QINI,
    SUBSTRING(B9_DATA, 7, 2) + '/' + SUBSTRING(B9_DATA, 5, 2) + '/' + SUBSTRING(B9_DATA, 1, 4) AS DATA_AUX
FROM
    SB9010 SB9
WHERE
    B9_FILIAL = '01'
    AND SUBSTRING(B9_DATA, 1, 6) = '201904'
    AND SB9.D_E_L_E_T_ = ' '