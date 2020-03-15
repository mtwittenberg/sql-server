SELECT pl.pl1         AS PL_1, 
       pl.pl2         AS PL_2, 
       pl.pl3         AS PL_3, 
       pl.pl4, 
       i.ip1, 
       i.ip2, 
       i.ip3, 
       i.ip4, 
       i.ip5, 
       i.ip6, 
       i.ip7, 
       i.ip8, 
       i.ip9, 
       ef.region1, 
       ef.region2, 
       Sum(f.units)     AS Units, 
       Sum(f.volume)    AS Volume
FROM   source_items i 
       LEFT JOIN source_attributes pl 
              ON pl.pl4 = i.ip4 
       LEFT JOIN enc_product p 
              ON p.pl4 = i.ip4 
       JOIN enc_regiontable1 ef
         ON efo.region1 = f.region1 
       JOIN timekey tk
         ON tk.timekey = f.timekey  
WHERE  pl.pl3 in ('productgroup1', 'productgroup2')
       AND tk.year = 2018 
GROUP  BY pl.pl1, 
          pl.pl2, 
          pl.pl3, 
          pl.pl4, 
          i.ip1, 
          i.ip2, 
          i.ip3, 
          i.ip4, 
          i.ip5, 
          i.ip6, 
          i.ip7, 
          i.ip8, 
          i.ip9, 
          ef.region1, 
          ef.region2