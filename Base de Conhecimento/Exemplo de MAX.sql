--Exemplo 1, selecionando o maior texto
SELECT 
    MAX(BM_DESC) AS MAIOR
FROM 
    SBM010 SBM 
WHERE 
    SBM.D_E_L_E_T_ = ' '

--Exemplo 2, selecionando o maior número
SELECT 
    MAX(B2_QATU) AS MAIOR
FROM 
    SB2010 SB2 
WHERE 
    B2_FILIAL = '01'
    AND SB2.D_E_L_E_T_ = ' '