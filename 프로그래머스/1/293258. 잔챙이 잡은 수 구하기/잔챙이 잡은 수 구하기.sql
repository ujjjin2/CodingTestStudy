SELECT 
    count(*) as FISH_COUNT
FROM FISH_INFO i
WHERE i.LENGTH <= 10 or i.LENGTH is null