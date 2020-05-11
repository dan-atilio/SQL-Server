--Exemplo 1, Buscando registros, e definindo um status para uma coluna de Tipo
SELECT
    A1_COD,
    A1_NOME,
    CASE
        WHEN A1_TIPO = 'F' THEN 'Consumidor Final'
        WHEN A1_TIPO = 'L' THEN 'Produtor Rural'
        WHEN A1_TIPO = 'R' THEN 'Revendedor'
        WHEN A1_TIPO = 'S' THEN 'Solidário'
        WHEN A1_TIPO = 'X' THEN 'Exportação'
        ELSE 'Não Definido'
    END AS TIPO
FROM
    SA1010 SA1
WHERE
    A1_FILIAL = ' '
    AND A1_MSBLQL != '1'
    AND SA1.D_E_L_E_T_ = ' '