--Exemplo 1, Setando um alias para colunas
SELECT
    A1_COD AS Codigo,
    A1_NOME AS Nome,
    A1_NREDUZ AS [Nome Fantasia]
FROM
    SA1010 AS CLIENTES
WHERE
    A1_FILIAL = ' '
    AND CLIENTES.D_E_L_E_T_ = ' '

--Exemplo 2, Setando um alias para uma tabela temporária
SELECT
    TAB_TEMP.COD,
    TAB_TEMP.NOME
FROM
(
    SELECT
        A1_COD AS COD,
        A1_NOME AS NOME
    FROM
        SA1010
    WHERE
        A1_FILIAL = ' '
        AND D_E_L_E_T_ = ' '
) AS TAB_TEMP