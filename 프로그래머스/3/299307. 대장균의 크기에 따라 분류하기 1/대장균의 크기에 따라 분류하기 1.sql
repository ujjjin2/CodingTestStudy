SELECT
    d.ID as ID,
    CASE
        WHEN d.SIZE_OF_COLONY <= 100 then 'LOW'
        WHEN d.SIZE_OF_COLONY <= 1000  then 'MEDIUM'
        ELSE 'HIGH'
    END as SIZE
FROM ECOLI_DATA d
ORDER BY d.ID;