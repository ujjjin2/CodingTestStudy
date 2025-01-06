WITH listData AS
(
    SELECT 
        DEPT_ID,
        ROUND(AVG(SAL),0) AS AVG_SAL
    FROM HR_EMPLOYEES
    GROUP BY DEPT_ID
)


SELECT 
    d.DEPT_ID
    , dept.DEPT_NAME_EN
    , d.AVG_SAL
FROM listData d
inner join HR_DEPARTMENT dept on d.DEPT_ID = dept.DEPT_ID
ORDER BY d.AVG_SAL desc