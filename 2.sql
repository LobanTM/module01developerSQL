/*Найти самый дорогой проект (исходя из ЗП разработчиков).*/
select p.project, sum(d.salary) as SUM_salary
from module01.projects p
inner join module01.proj_dev pd on pd.project = p.id
inner join module01.developers d on pd.developer = d.id
group by p.project
order by SUM_salary desc limit 1
