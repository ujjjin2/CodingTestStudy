SELECT 
    count(fi.FISH_TYPE) as FISH_COUNT
FROM FISH_INFO fi 
INNER JOIN FISH_NAME_INFO ni on fi.FISH_TYPE = ni.FISH_TYPE
WHERE ni.FISH_NAME in ('BASS','SNAPPER')