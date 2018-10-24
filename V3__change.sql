-- -----------------------------------------------------
-- Insert some master data in state table.
-- -----------------------------------------------------

insert into states (state, description)
select 'KA' as state, 'Karnataka' as descriptio
union all
select 'GO' as state, 'Goa' as description;
