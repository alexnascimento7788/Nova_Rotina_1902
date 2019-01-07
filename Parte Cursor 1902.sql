select * from pcmanif where nummanif = 39006;

 select p.codcli,p.numnota,n.codmotorista,p.codusur,nf.codfornecfrete,p.numcar 
    from pcpedc p,pccarreg n,pcnfsaid nf
        where P.numcar = N.numcar
        and p.numnota = nf.numnota
        and p.numnota = :NUMNOTA;


 select m.situacao from pcmanif m;

select max(m.nummanif) + 1 from pcmanif m;

(select to_char(sysdate,'dd/mm/yyyy HH:mi:ss')data_hora from dual);

select * from pcnfsaid n where n.numnota = 1016905;

select * from pcmanassunto;

SELECT * FROM PCMANIF M WHERE M.nummanif = 39007;


