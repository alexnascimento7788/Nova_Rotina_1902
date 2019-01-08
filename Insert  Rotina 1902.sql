-------//////////########## CURSOR INSERT INTO PCMANIF  ##########\\\\\\\\\\---------------------------------
-------//////////########## NÃO ESQUECER DE ATIVAR :& NO SQL NAVIGATOR  ##########\\\\\\\\\\---------------------------------

DECLARE

   I INTEGER ;

    BEGIN FOR C IN ( select p.codcli,p.numnota,n.codmotorista,p.codusur,nf.codfornecfrete,p.numcar 
                            from pcpedc p,pccarreg n,pcnfsaid nf
                                where P.numcar = N.numcar
                                and p.numnota = nf.numnota
                                and p.numnota = :NUMNOTA
)LOOP 
            INSERT INTO PCMANIF
                (NUMMANIF, NUMSEQ, CODCLI, CONTATO, TELEFONE, MEIO, COMPORTAMENTO, SITUACAO, DTAB, DTRE, DTPR, DTSO, DTCO, DTRB, DTRT, 
                CODFUNCAB, CODFUNCRE, CODFUNCPR, CODFUNCSO, CODFUNCCO, CODFUNCRB, CODFUNCRT, CODSETORRT, MANIFESTACAO, CODASSUNTO, 
                CODSETORENVIAR, CODPROD, PROVIDENCIA, SOLUCAO, COMUNICADO, SATISFEITO, RECEPTOR, REABERTA, CARGO, TEMPODECORRIDO, CODFILIAL, 
                NUMMANIFCOPIA, NUMSEQCOPIA, DTCP, CODSETORCP, CODFUNCCP, DTEXPIRA, NUMNOTA, CODMOTORISTA, CODRCA, CODTRANSPORTADOR, CODAJUDANTE)
        VALUES
                ( 
				-- SELECT PARA GERAR A PROXIMA CHAVE NUMMANIF TABELA PCMANIF ----
				(select max(m.nummanif) + 1 from pcmanif m),
				-- VALOR DEFAULT 1902 = 0 --- 
                0, 
				-- CODCLI PCPEDC CURSOR ------- 
                C.CODCLI, 
                NULL,NULL,NULL,NULL, 
				-- DEFAULT AB ---
                'AB',
                -- DATA E HORA DO BANCO DE DADOS ORACLE				
                (select to_char(TO_DATE(sysdate,'DD/MM/YYYY HH24:MI:SS')) from dual), 
                NULL,NULL,NULL,NULL,NULL,NULL, 
				 -- SELECT USUARIOBD DO USUARIO LOGADO --
                :NUM_ANALISTASAM,
                NULL,NULL,NULL,NULL,NULL,NULL,NULL,
				-- DESCRIÇÃO DO MANIFESTO ---
                :MANIFESTACAO_DESCRICAO, 
				-- DEFAULT 71 LANÇAMENTO ---
                '71',
                NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
				-- MOTIVO DEVOLUÇÃ TABELA MOTIVOS PCTABDEV ---
                :NUM_CODIGO_MOTIVO_DEVOLUCAO, 
                NULL,
				-- DEFAULT FILIAL 1 ----
                '1', 
                NULL,NULL,NULL,NULL,NULL,NULL,
				--- NUM NOTA CURSOR ---
                C.NUMNOTA,
				--- COD MOTORISTA CURSOR --
                C.CODMOTORISTA,
				--- CODIGO RCA CURSOR ---
                C.CODUSUR,
				--- CODIGO TRANSPORTADORA CURSOR
                C.CODFORNECFRETE,
                NULL);
 END LOOP;               
                
                
END; 