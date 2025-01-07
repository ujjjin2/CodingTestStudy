select 
    d.ID,
    d.GENOTYPE,
    e.GENOTYPE as PARENT_GENOTYPE
from ECOLI_DATA d
inner join ECOLI_DATA e on e.ID = d.PARENT_ID
where d.GENOTYPE & e.GENOTYPE = e.GENOTYPE
order by d.ID asc