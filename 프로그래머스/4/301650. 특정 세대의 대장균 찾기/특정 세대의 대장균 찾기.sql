WITH datalist AS 
(
    -- 2세대
    select d2.ID
    from ECOLI_DATA d2
    where d2.PARENT_ID in (
        -- 1세대
        SELECT d.ID
        FROM ECOLI_DATA d
        WHERE d.PARENT_ID is null
    ) 
)

SELECT d3.ID
FROM ECOLI_DATA d3
JOIN datalist dl ON d3.PARENT_ID = dl.ID;