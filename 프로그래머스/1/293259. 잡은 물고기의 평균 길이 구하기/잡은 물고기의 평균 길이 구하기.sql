WITH dataList AS (
    SELECT 
        Case
            when i.LENGTH is NULL then 10
            else i.LENGTH
        END as LENGTH
    FROM FISH_INFO i
)
SELECT 
    ROUND(avg(d.LENGTH),2) as AVERAGE_LENGTH
FROM dataList d
-- 안올라가져.......?