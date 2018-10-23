-- -----------------------------------------------------
-- Add 2 new tables email and email_type.
-- Add some master record in email_type table.
-- -----------------------------------------------------

create table email (
  email_id          int not null auto_increment primary key,
  email_address     varchar(100),
  email_type        char(1) not null,
  person_id         int not null
);

create table email_type (
  email_type        char(1) not null primary key,
  description       varchar(20)
);

insert into email_type (email_type, description)
select 'P', 'primary'
union all
select 'W', 'work';