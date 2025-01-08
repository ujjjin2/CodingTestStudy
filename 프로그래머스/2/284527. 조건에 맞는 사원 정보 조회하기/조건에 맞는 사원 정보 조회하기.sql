WITH scoreList AS(
    SELECT 
        g.EMP_NO,
        SUM(g.SCORE) as SCORE
    FROM HR_EMPLOYEES e
    inner join HR_GRADE g on e.EMP_NO = g.EMP_NO
    GROUP BY g.EMP_NO
    order by SCORE desc
    limit 1
)

SELECT
    s.SCORE,
    emp.EMP_NO,
    emp.EMP_NAME,
    emp.POSITION,
    emp.EMAIL
FROM HR_EMPLOYEES emp 
inner join scoreList s on emp.EMP_NO = s.EMP_NO