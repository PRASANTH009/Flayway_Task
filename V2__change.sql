alter table people123 add constraint fk_people_state
  foreign key (state) references states(state);