WITH dataList AS(
    -- 분화된 연도별 가장 큰 대장균의 크기
    SELECT
        YEAR(d.DIFFERENTIATION_DATE) as YEAR,
        max(d.SIZE_OF_COLONY) as max
    FROM ECOLI_DATA d
    GROUP BY YEAR(d.DIFFERENTIATION_DATE)
)

SELECT
    YEAR(di.DIFFERENTIATION_DATE) as YEAR,
    (
        SELECT
            d.max
        FROM dataList d
        WHERE d.YEAR = YEAR(di.DIFFERENTIATION_DATE)
    ) - di.SIZE_OF_COLONY as YEAR_DEV,
    di.ID
FROM ECOLI_DATA di
ORDER BY YEAR, YEAR_DEV;