/*Добавить поле (cost - стоимость) в таблицу Projects .*/
alter table module01.projects
add column cost float after project;
