--Comentário de uma única linha com traço traço
--Consulta do grupo de produtos
SELECT * FROM SBM010 WHERE D_E_L_E_T_ = ' '

--Comentário em bloco com /* */
/*
    Consulta no Grupo de Produtos
    Filtro usado para desconsiderar deletados
    Data de Criação: 17/03/2019
    Autor: Daniel Atilio
*/
SELECT * FROM SBM010 WHERE D_E_L_E_T_ = ' '

--Mesclando comentários
--Seleção de colunas
SELECT
    BM_GRUPO,
    BM_DESC
--Tabela de Grupo de Produtos
FROM
    SBM010 SBM
/*
    Filtrando os grupos que não estão deletados
*/
WHERE
    SBM.D_E_L_E_T_ = ' '