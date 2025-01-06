WITH gradeList AS 
(
    SELECT
        EMP_NO
        , CASE 
           WHEN AVG(SCORE) >= 96 then 'S'
           WHEN AVG(SCORE) >= 90 then 'A'
           WHEN AVG(SCORE) >= 80 then 'B'
           ELSE 'C'
          END as GRADE
    FROM HR_GRADE
    GROUP BY EMP_NO, YEAR
)

select 
    a.EMP_NO
    , b.EMP_NAME
    , a.GRADE
    , CASE 
        WHEN a.GRADE = 'S' then b.SAL * 0.2
        WHEN a.GRADE = 'A' then b.SAL * 0.15
        WHEN a.GRADE = 'B' then b.SAL * 0.1
        ELSE 0
    END as BONUS
from HR_EMPLOYEES b
inner join gradeList a on a.EMP_NO = b.EMP_NO
order by EMP_NO