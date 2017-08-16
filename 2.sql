/*Найти самый дорогой проект (исходя из ЗП разработчиков).*/
select p.project, sum(d.salary) as SUM_salary
from module01.projects p
inner join module01.proj_dev pd on pd.project = p.id
inner join module01.developers d on pd.developer = d.id
group by p.project

/*????
запрос возвращает список проектов и сумарную ЗП разработчиков по каждому из них
как теперь из етого запроса вьібрать проект с наибольшим значением?

project,    SUM_salary
projects00,   3000
projects01,   2300
projects02,   2200
projects04,   2300
projects05,   600
projects06,   2300
projects08,   1500
projects09,   300
projects10,   300
projects11,   3700
projects12,   900
???*/
