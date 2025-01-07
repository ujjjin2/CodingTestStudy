WITH dataList AS(
    SELECT
        d.ID,
        PERCENT_RANK() OVER (ORDER BY d.SIZE_OF_COLONY DESC) * 100 AS percentage
    FROM ECOLI_DATA d
    ORDER BY d.ID ASC
)

select 
    dl.ID,
    Case
        when dl.percentage <= 25 then 'CRITICAL'
        when dl.percentage <= 50 then 'HIGH'
        when dl.percentage <= 75 then 'MEDIUM'
        ELSE 'LOW'
    END as COLONY_NAME
from dataList dl