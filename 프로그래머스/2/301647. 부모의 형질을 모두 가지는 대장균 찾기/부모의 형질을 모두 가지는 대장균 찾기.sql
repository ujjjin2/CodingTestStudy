select 
    d.ID,
    d.GENOTYPE,
    e.GENOTYPE as PARENT_GENOTYPE
from ECOLI_DATA d --자식테이블
inner join ECOLI_DATA e on e.ID = d.PARENT_ID -- 부모테이블
where d.GENOTYPE & e.GENOTYPE = e.GENOTYPE
order by d.ID asc
