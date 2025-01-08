WITH dataList AS (
    select 
        sum(CODE) as CODE
    from SKILLCODES s
    where CATEGORY = 'Front End'
)

SELECT 
    d.ID,
    d.EMAIL,
    d.FIRST_NAME,
    d.LAST_NAME
FROM DEVELOPERS d,dataList a
WHERE d.SKILL_CODE & a.CODE > 0
ORDER BY d.ID ASC

