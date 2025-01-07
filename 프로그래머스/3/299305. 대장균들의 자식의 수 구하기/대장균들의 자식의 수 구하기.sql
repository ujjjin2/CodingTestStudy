SELECT
    d.ID,
    (
        SELECT count(*)
        FROM ECOLI_DATA f
        WHERE d.ID = f.PARENT_ID
    ) as CHILD_COUNT
FROM ECOLI_DATA d
ORDER BY d.ID asc