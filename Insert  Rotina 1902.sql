-------//////////########## INSERT INTO PCMANIF  ##########\\\\\\\\\\---------------------------------
-------//////////########## NÃO ESQUECER DE ATIVAR :& NO SQL NAVIGATOR  ##########\\\\\\\\\\---------------------------------
INSERT INTO PCMANIF
(NUMMANIF, NUMSEQ, CODCLI, CONTATO, TELEFONE, MEIO, COMPORTAMENTO, SITUACAO, DTAB, DTRE, DTPR, DTSO, DTCO, DTRB, DTRT, 
CODFUNCAB, CODFUNCRE, CODFUNCPR, CODFUNCSO, CODFUNCCO, CODFUNCRB, CODFUNCRT, CODSETORRT, MANIFESTACAO, CODASSUNTO, 
CODSETORENVIAR, CODPROD, PROVIDENCIA, SOLUCAO, COMUNICADO, SATISFEITO, RECEPTOR, REABERTA, CARGO, TEMPODECORRIDO, CODFILIAL, 
NUMMANIFCOPIA, NUMSEQCOPIA, DTCP, CODSETORCP, CODFUNCCP, DTEXPIRA, NUMNOTA, CODMOTORISTA, CODRCA, CODTRANSPORTADOR, CODAJUDANTE)
VALUES
( (select max(m.nummanif) + 1 from pcmanif m),
-- VALOR DEFAULT 1902 = 0 --- 
 0, 
-- CODCLI PCPEDC ------- 
 :CODCLI, 
 NULL,NULL,NULL,NULL, 
-- VALOR DEFAULT ROTINA 1902 ----  
 'AB', 
-- SELECT DATA/HORA PARA ORACLE ---  
 (select to_char(sysdate,'dd/mm/yyyy HH:mi:ss')data_hora from dual), 
 NULL,NULL,NULL,NULL,NULL,NULL, 
  -- SELECT USUARIOBD DO USUARIO LOGADO --
 :ANALISTASAM,
 NULL,NULL,NULL,NULL,NULL,NULL,NULL, 
 -- DESCRIÇÃO DO MANIFESTO ---
 :MANIFESTACAO_DESCRICAO, 
  -- CODIGO ASSUNTO PCMANASSUNTO ---
 :CODIGO_ASSUNTO,
 NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
 -- CODIGO DEVOLUÇÃO --- 
 :CODIGO_MOTIVO, 
 NULL,
 --  DEFAULT FILIAL DA NFE PCPEDC --  
 '1', 
 NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)