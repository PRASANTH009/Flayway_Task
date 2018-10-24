-- -----------------------------------------------------
-- Alter people table and add constraint foreign key of state table. 
-- Create people_view view and people_procedure stored procedure.
-- -----------------------------------------------------

alter table people add constraint fk_people_state
  foreign key (state) references states(state);

create view people_view as (
  select
    person_id,
    first_name,
    last_name,
    phone_number,
    address_line_1,
    address_line_2,
    city,
    state,
    zip_code
  from people
);

DELIMITER //
CREATE PROCEDURE `people_procedure` (IN var1 INT)
LANGUAGE SQL
DETERMINISTIC
SQL SECURITY DEFINER
COMMENT 'A procedure'
BEGIN
    SELECT var1 + 2 AS result;
END//