/*Найти клиента (customer), которьій приносит меньше всего 
прибыли компании (company) для каждой из компаний */
select q.company, min(S), q.customer
from(select com.company, p.project, sum(p.cost) as S, cu.customer
	from module01.companies com
	inner join module01.projects p on p.company = com.id
	inner join module01.customers cu on p.customer = cu.id    
	group by cu.customer
    order by s) q
group by q.company    
