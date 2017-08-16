/*Найти клиента (customer), которьій приносит меньше всего 
прибыли компании (company) для каждой из компаний */
select com.company, cu.customer, sum(p.cost)
from module01.companies com
inner join module01.projects p on p.company = com.id
inner join module01.customers cu on p.customer = cu.id
group by cu.customer
