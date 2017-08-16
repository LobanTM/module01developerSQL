/* Добавить разаработчикам поле (salary - зарплата).*/

alter table `module01`.`developers`
add column `salary` float NULL after `company`;
