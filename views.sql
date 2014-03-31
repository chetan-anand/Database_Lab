use ramakrish;
SELECT * FROM ramakrish.sailors;
create view sail_view as
select sname,rating from sailors
where rating >=20;
SELECT * from sail_view;
SELECT * from sail_view where sname='rana';
create view  ordbyage as
select * from sailors group by age;
SELECT * from ordbyage;
create view  byage as
select age,count(*),sname as count from sailors group by age;

select * from countbyage;
select * from byage;

drop VIEW sail_view;

select * from sail_view;