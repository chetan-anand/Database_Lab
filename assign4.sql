use assign2;
CREATE USER 'movie_agent'@'host' IDENTIFIED BY 'passwd';
CREATE USER 'movie_agent'@'codefire' IDENTIFIED BY 'abc123';
CREATE USER 'movie-agent'@'codefire' IDENTIFIED BY 'abc123';
CREATE USER 'movie_agent'@'localhost' IDENTIFIED BY 'abc123';
CREATE USER 'studio_agent'@'localhost' IDENTIFIED BY 'abc123';

GRANT SELECT ON assign2.movie TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT SELECT ON assign2.star_in TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT SELECT ON assign2.stars TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT SELECT ON assign2.stars_phone TO movie_agent@localhost IDENTIFIED BY 'abc123';


GRANT SELECT ON assign2.movie TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT SELECT ON assign2.studios TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT SELECT ON assign2.crew TO studio_agent@localhost IDENTIFIED BY 'abc123';



CREATE VIEW movie_v AS
SELECT * from assign2.movie;

Create VIEW stars_v AS
select * from assign2.stars;

 
Create VIEW starsphone_v AS
select * from assign2.stars_phone;
use assign2;
create view starallot2_v as select * from assign2.star_in;
GRANT ALL ON starallot2_v TO movie_agent@localhost IDENTIFIED BY 'abc123';

create VIEW starsallot_v AS 
select * from assign2.star_in s1 
	where  3<=(select count(*) as cnt from star_in s2 
			where s1.st_id=s2.st_id group by s2.st_id)
	;


drop view starsallot_v;
GRANT ALL ON assign2.movie_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT SELECT ON assign2.movie_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT insert ON assign2.movie_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT update ON assign2.movie_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT delete ON assign2.movie_v TO movie_agent@localhost IDENTIFIED BY 'abc123';

GRANT ALL ON assign2.stars_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT SELECT ON assign2.stars_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT insert ON assign2.stars_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT update ON assign2.stars_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT delete ON assign2.stars_v TO movie_agent@localhost IDENTIFIED BY 'abc123';

GRANT ALL ON assign2.starsphone_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT SELECT ON assign2.starsphone_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT insert ON assign2.starsphone_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT update ON assign2.starsphone_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT delete ON assign2.starsphone_v TO movie_agent@localhost IDENTIFIED BY 'abc123';

GRANT ALL ON assign2.starsallot_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT SELECT ON assign2.starsallot_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT insert ON assign2.starsallot_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT update ON assign2.starsallot_v TO movie_agent@localhost IDENTIFIED BY 'abc123';
GRANT delete ON assign2.starsallot_v TO movie_agent@localhost IDENTIFIED BY 'abc123';


create VIEW studio_v AS
select * from assign2.studios;

use assign2;

create view crew_v as
select c1.c_id,c1.s_id from crew c1 
	where 5>(select count(*) from crew c2 
		where c1.s_id = c2.s_id )
	;


create view movieallot_v as
select m_id,s_id from assign2.movie;

GRANT ALL ON assign2.studio_v TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT SELECT ON assign2.studio_v TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT insert ON assign2.studio_v TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT update ON assign2.studio_v TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT delete ON assign2.studio_v TO studio_agent@localhost IDENTIFIED BY 'abc123';

GRANT ALL ON assign2.crew_v TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT SELECT ON assign2.crew_v TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT insert ON assign2.crew_v TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT update ON assign2.crew_v TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT delete ON assign2.crew_v TO studio_agent@localhost IDENTIFIED BY 'abc123';

GRANT ALL ON assign2.movieallot_v TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT SELECT ON assign2.movieallot_v TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT insert ON assign2.movieallot_v TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT update ON assign2.movieallot_v TO studio_agent@localhost IDENTIFIED BY 'abc123';
GRANT delete ON assign2.movieallot_v TO studio_agent@localhost IDENTIFIED BY 'abc123';


insert into starallot2_v value((select st_id from starallot2_v where st_id=1 and st_id in (select st_id from starallot_v)),1,3);
