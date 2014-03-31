SELECT * FROM assign2.crew;
use assign2;

select s_id,avg(c_id) from assign2.crew group by s_id;
<> is not equal to;
#1
select name_first from stars  where st_id exists all ( select st_id from star_in where s_id='XYZ');

#2
select s1.st_id,s2.st_id from star_in s1,star_in s2 where s1.m_id=s2.m_id and s1.st_id>s2.st_id group by s1.st_id,s2.st_id having count(*)>1;

#3
select st_id,count(m_id) from star_in where s_id='1' group by st_id;

#4.
select avg(temp) from (SELECT count(c_id) as temp from crew group by s_id)tab;

#5
#select title from movie where m_id in (select m_id from star_in where st_id iyn ( select st_id from stars where name_first='kunal'));

#5
select distinct title from movie where m_id in(select distinct m_id from star_in where st_id=2 and m_id not in (select distinct m_id from star_in where st_id=10));


