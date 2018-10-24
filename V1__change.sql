-- -----------------------------------------------------
-- Create 2 tables people and states
-- -----------------------------------------------------

create table people (
  person_id         int not null auto_increment primary key,
  first_name        varchar(20),
  last_name         varchar(20),
  phone_number      varchar(20),
  address_line_1    varchar(20),
  address_line_2    varchar(100),
  city              varchar(20),
  state             varchar(2),
  zip_code          varchar(5)
);

create table states (
  state             varchar(2) not null primary key,
  description       varchar(20)
);