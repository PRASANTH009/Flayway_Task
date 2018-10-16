-- -----------------------------------------------------
-- Alter email table and add constraint foreign keys of people and email_type table.
-- -----------------------------------------------------

alter table email add constraint fk_person_email
  foreign key (person_id) references people(person_id);

alter table email add constraint fk_email_type
  foreign key (email_type) references email_type(email_type);