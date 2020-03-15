SELECT Desc1
,PL1
,PL2
,PL3
, CASE WHEN PL1 LIKE '%asj%' THEN 'Update'
       WHEN PL2 LIKE '%ert%' THEN 'Update'
       WHEN PL3 LIKE '%jio%' THEN 'Update'
       ELSE 'NULL' END AS Adj
FROM (SELECT i.Desc1
,m.PL1
,m.PL2
,m.PL3
FROM dbo.table1 AS m 
LEFT OUTER JOIN dbo.table2 AS w ON w.PL1 = m.PL1 
WHERE(i.Desc1 = 'test1')
GROUP BY m.Desc1
,m.PL1
,m.PL2
,m.PL3) AS FilteredResults
ORDER BY PL1
