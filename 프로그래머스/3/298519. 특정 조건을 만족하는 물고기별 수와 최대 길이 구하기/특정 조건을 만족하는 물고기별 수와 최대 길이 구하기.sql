WITH dataList AS(
    SELECT
        fi.ID,
        CASE
            WHEN fi.LENGTH is NULL OR fi.LENGTH<=10 THEN 10
            ELSE fi.LENGTH
        END as LENGTH,
        fi.FISH_TYPE
    FROM FISH_INFO fi
)

SELECT
    count(*) as FISH_COUNT,
    max(f.LENGTH) as MAX_LENGTH,
    f.FISH_TYPE
FROM dataList f
GROUP BY f.FISH_TYPE
HAVING avg(f.LENGTH) >= 33
ORDER BY f.FISH_TYPE asc