/*Вычислить, среднюю ЗП программистов в проекте, который приносит наименьшую прибыль*/
select p.project, min(p.cost), avg(d.salary)
from module01.projects p
inner join module01.proj_dev pd on pd.project = p.id
inner join module01.developers d on pd.developer = d.id
