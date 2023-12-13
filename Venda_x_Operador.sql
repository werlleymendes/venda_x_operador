SELECT a.dtavda, a.nroempresa, a.seqoperador, a.operador,   
       a.seqproduto, b.desccompleta, sum(a.qtditem), (a.vlritem - a.vlrdesconto) totallinhas
       FROM consinco.maxv_abcdistribbase a JOIN
            consinco.map_produto b ON a.seqproduto = b.seqproduto
       where a.codgeraloper = 800 and 
             a.dtavda between '01-nov-2023' and '30-nov-2023'
       GROUP BY a.seqproduto, a.operador, a.dtavda, 
             b.desccompleta, a.nroempresa, a.seqoperador, 
             a.vlritem, a.vlrdesconto
       ORDER BY a.dtavda;
