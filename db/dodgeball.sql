DROP TABLE teams;
DROP TABLE match;

CREATE TABLE teams(
id SERIAL4 primary key,
name VARCHAR(255) not null
);

CREATE TABLE match(

id SERIAL4 primary key,
home_team_id int2 references teams(id) ON DELETE CASCADE,
away_team_id int2 references teams(id) ON DELETE CASCADE,
home_team_score int2,
away_team_score int2
);

