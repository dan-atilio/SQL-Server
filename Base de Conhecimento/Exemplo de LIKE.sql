--Exemplo 1, Trazendo dados somente quando comecem com a palavra Daniel
SELECT
    RA_MAT,
    RA_NOME
FROM
    SRA020 SRA
WHERE
    RA_FILIAL = '03'
    AND UPPER(RA_NOME) LIKE 'DANIEL%'
    AND SRA.D_E_L_E_T_ = ' '

--Exemplo 2, Trazendo dados somente quando terminem com a palavra Atilio
SELECT
    RA_MAT,
    RA_NOME
FROM
    SRA020 SRA
WHERE
    RA_FILIAL = '03'
    AND UPPER(RA_NOME) LIKE '%ATILIO'
    AND SRA.D_E_L_E_T_ = ' '

--Exemplo 3, Trazendo dados quando conter as palavras Daniel Atilio
SELECT
    RA_MAT,
    RA_NOME
FROM
    SRA020 SRA
WHERE
    RA_FILIAL = '03'
    AND UPPER(RA_NOME) LIKE 'DANIEL%ATILIO'
    AND SRA.D_E_L_E_T_ = ' '