SELECT count(*) as COUNT 
FROM ECOLI_DATA d
WHERE (d.GENOTYPE & 2) = 0
  AND (
    (d.GENOTYPE & 4) = 4 -- 3이 포함되어야 함
    OR (d.GENOTYPE & 1) = 1 -- 1이 포함되어야 함
  )
