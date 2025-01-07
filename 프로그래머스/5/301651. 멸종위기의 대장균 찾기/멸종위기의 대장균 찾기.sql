WITH RECURSIVE dataList AS (
    -- 1. 첫 세대 (PARENT_ID가 NULL인 개체)
    SELECT 
        ID, 
        PARENT_ID, 
        1 AS GENERATION
    FROM ECOLI_DATA
    WHERE PARENT_ID IS NULL
    
    UNION ALL
    
    -- 2. 재귀적으로 세대 구하기
    SELECT 
        e.ID,
        e.PARENT_ID,
        g.GENERATION + 1 AS GENERATION
    FROM ECOLI_DATA e
    JOIN dataList g ON e.PARENT_ID = g.ID
)

-- 3. 각 세대별 자식이 없는 개체 수 구하기
SELECT 
    COUNT(*) AS COUNT,
    GENERATION
FROM dataList g
WHERE NOT EXISTS (
    SELECT 1
    FROM ECOLI_DATA e
    WHERE e.PARENT_ID = g.ID
)
GROUP BY GENERATION
ORDER BY GENERATION;
