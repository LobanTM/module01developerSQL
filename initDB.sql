create schema module01 default character set utf8;

create table module01.developers (
    id int not null auto_increment,
    name_dev varchar(45) null,
    age int null,
    email varchar(45),
    primary key(id));
    
create table `module01`.`skills` (
	`id` INT NOT NULL auto_increment,
    `slill` varchar(20),
    `comments` varchar(45),
    primary key (`id`));
    
create table `module01`.`projects` (
	`id` INT NOT NULL auto_increment,
    `project` varchar(20),
    `company` int,
    `customer` int,
    `comments` varchar(45),
    primary key (`id`));
    
create table `module01`.`companies` (
	`id` INT NOT NULL auto_increment,
    `company` varchar(20),
    `comments` varchar(45),
    primary key (`id`)); 
    
create table `module01`.`customers` (
	`id` INT NOT NULL auto_increment,
    `customer` varchar(20),
    `comments` varchar(45),
    primary key (`id`));  
    
create table `module01`.`dev_skill` (
    `id` INT NOT NULL auto_increment,
    `developer` int,
    `skill` int,
    primary key (`id`));
ALTER TABLE `module01`.`dev_skill` 
ADD CONSTRAINT `developer`
  FOREIGN KEY (`developer`)
  REFERENCES `module01`.`developers` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;    
ALTER TABLE `module01`.`dev_skill` 
ADD CONSTRAINT `skill`
  FOREIGN KEY (`skill`)
  REFERENCES `module01`.`skills` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION; 
  
create table `module01`.`proj_dev` (
	`id` INT NOT NULL auto_increment,
    `project` int,
    `developer` int,
    primary key (`id`));
ALTER TABLE `module01`.`proj_dev` 
ADD CONSTRAINT `developer`
  FOREIGN KEY (`developer`)
  REFERENCES `module01`.`developers` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;    
ALTER TABLE `module01`.`proj_dev` 
ADD CONSTRAINT `project`
  FOREIGN KEY (`project`)
  REFERENCES `module01`.`projects` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  

