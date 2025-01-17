SELECT
    d.ID,
    d.EMAIL,
    d.FIRST_NAME,
    d.LAST_NAME
FROM DEVELOPERS d
WHERE d.SKILL_CODE & (
    SELECT SUM(CODE)
    FROM SKILLCODES s
    WHERE s.NAME = 'C#' OR s.NAME = 'Python' 
)
ORDER BY d.ID ASC