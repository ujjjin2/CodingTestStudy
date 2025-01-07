SELECT
    d.ID,
    d.EMAIL,
    d.FIRST_NAME,
    d.LAST_NAME
FROM DEVELOPER_INFOS d
WHERE d.SKILL_1 = 'Python' OR d.SKILL_2 = 'Python' OR d.SKILL_3 = 'Python'
ORDER BY d.ID asc