show DATABASES;
use assign2;
show tables;
create table star_in(
M_id int,
st_id int,
Primary key(M_id,st_id),
CONSTRAINT fk1 FOREIGN KEY(M_id) REFERENCES movie(M_id)
on delete CASCADE,
CONSTRAINT fk2 FOREIGN KEY(st_id) REFERENCES stars(st_id)
on delete CASCADE
);

use assign2;
alter table movie
drop FOREIGN key fk1;
alter table star_in drop FOREIGN key fk1;
alter table star_in drop FOREIGN key fk2;
alter table movie add CONSTRAINT fk3 FOREIGN key (s_id) REFERENCES studios(s_id) on delete CASCADE;
desc crew;
alter table crew add PRIMARY key (cid,s_id);
alter table crew add CONSTRAINT fk4 FOREIGN KEY(s_id) REFERENCES studios(s_id) on delete CASCADE;

use assign3;
