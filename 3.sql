/*Вычислить общую ЗП всех Java разработчиков*/
SELECT sum(d.salary) as salary
FROM module01.developers d
inner join module01.dev_skill ds on d.id = ds.developer
inner join module01.skills s on ds.skill = s.id
where s.skill = 'JAVA'
