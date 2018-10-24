-- -----------------------------------------------------
-- Insert some master data in state table.
-- -----------------------------------------------------

insert into states (state, description)
select 'KA' as state, 'Karnataka' as description
union all
select 'GO' as state, 'Goa' as description;