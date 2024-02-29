CREATE DATABASE famousdb;
SHOW DATABASES;

USE famousdb;

CREATE TABLE stars (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name TEXT,
    last_name TEXT,
    twitter TEXT,
    STARmeter TEXT,
    birthdate TEXT,
    following_id INTEGER);

INSERT INTO stars (first_name, last_name, twitter , STARmeter, birthdate, following_id)
    VALUES ("Antonio", "Banderas", "@antoniobanderas", "228", "1960-08-10", 5);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Leonardo", "DiCaprio", "@LeoDiCaprio", "38", "1974-11-11", 6);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Adam", "Driver", "@AdamDriver83", "14", "1983-11-19", 2);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Joaquin", "Phoenix", "@JoPhoenix74", "10", "1974-10-28", 2);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Jonathan", "Pryce", "@Pryce47", "179", "1947-06-01", 9);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Tom", "Hanks", "@tomhanks", "58", "1956-07-09", 4);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Anthony", "Hopkins", "@ahopkins", "317", "1937-12-31", 4);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Al", "Pacino", "@alpacino", "123", "1940-04-25", 10);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Joe", "Pesci", "@pesci", "178", "1943-02-09", 8);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Brad", "Pitt", "@bradpitt", "37", "1963-12-18", 7);


CREATE TABLE leading_role (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    stars_id INTEGER,
    movie TEXT,
    rate INTEGER);

INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (4, "Joker", 8.6);
INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (3, "Marriage Story", 8.1);
INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (2, "Once Upon a Time... in Hollywood", 7.8);
INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (1, "Pain and Glory", 7.6);
INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (5, "The Two Popes", 7.6);


CREATE TABLE supporting_role (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    stars_id INTEGER,
    movie TEXT,
    rate INTEGER);

INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (9, "The Irishman", 8.0);
INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (8, "The Irishman", 8.0);
INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (10, "Once Upon a Time... in Hollywood", 7.8);
INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (6, "A Beautiful Day in the Neighborhood", 7.6);
INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (8, "The Two Popes", 7.6);

CREATE TABLE joint_projects (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    stars_id INTEGER,
    title TEXT);
    
INSERT INTO joint_projects (stars_id, title)
    VALUES (2, "J.Edgar 2011");
INSERT INTO joint_projects (stars_id, title)
    VALUES (3, "J.Edgar 2011");
INSERT INTO joint_projects (stars_id, title)
    VALUES (1, "Evita 1996");
INSERT INTO joint_projects (stars_id, title)
    VALUES (5, "Evita 1996");
INSERT INTO joint_projects (stars_id, title)
    VALUES (3, "The Man Who Killed Don Quixote 2018");
INSERT INTO joint_projects (stars_id, title)
    VALUES (5, "The Man Who Killed Don Quixote 2018");
INSERT INTO joint_projects (stars_id, title)
    VALUES (2, "Catch Me If You Can 2002");
INSERT INTO joint_projects (stars_id, title)
    VALUES (6, "Catch Me If You Can 2002");
INSERT INTO joint_projects (stars_id, title)
    VALUES (1, "Philadelphia 1993");
INSERT INTO joint_projects (stars_id, title)
    VALUES (6, "Philadelphia 1993");
INSERT INTO joint_projects (stars_id, title)
    VALUES (1, "The Mask of Zorro 1998");
INSERT INTO joint_projects (stars_id, title)
    VALUES (7, "The Mask of Zorro 1998");
INSERT INTO joint_projects (stars_id, title)
    VALUES (10, "Legends of the Fall 1994");
INSERT INTO joint_projects (stars_id, title)
    VALUES (7, "Legends of the Fall 1994");
INSERT INTO joint_projects (stars_id, title)
    VALUES (10, "Meet Joe Black 1998");
INSERT INTO joint_projects (stars_id, title)
    VALUES (7, "Meet Joe Black 1998");
INSERT INTO joint_projects (stars_id, title)
    VALUES (5, "The Two Popes 2019");
INSERT INTO joint_projects (stars_id, title)
    VALUES (7, "The Two Popes 2019");
INSERT INTO joint_projects (stars_id, title)
    VALUES (8, "Misconduct 2016");
INSERT INTO joint_projects (stars_id, title)
    VALUES (7, "Misconduct 2016");
INSERT INTO joint_projects (stars_id, title)
    VALUES (8, "Once Upon a Time... in Hollywood 2019");
INSERT INTO joint_projects (stars_id, title)
    VALUES (2, "Once Upon a Time... in Hollywood 2019");    
INSERT INTO joint_projects (stars_id, title)
    VALUES (10, "Once Upon a Time... in Hollywood 2019");
INSERT INTO joint_projects (stars_id, title)
    VALUES (8, "You Don't Know Jack 2010");
INSERT INTO joint_projects (stars_id, title)
    VALUES (3, "You Don't Know Jack 2010");
INSERT INTO joint_projects (stars_id, title)
    VALUES (8, "Glengarry Glen Ross 1992");
INSERT INTO joint_projects (stars_id, title)
    VALUES (5, "Glengarry Glen Ross 1992");
INSERT INTO joint_projects (stars_id, title)
    VALUES (8, "Ocean's Thirteen 2007");
INSERT INTO joint_projects (stars_id, title)
    VALUES (10, "Ocean's Thirteen 2007");
INSERT INTO joint_projects (stars_id, title)
    VALUES (9, "Man on Fire 1987");
INSERT INTO joint_projects (stars_id, title)
    VALUES (5, "Man on Fire 1987");
INSERT INTO joint_projects (stars_id, title)
    VALUES (1, "Interview with the Vampire 1994");
INSERT INTO joint_projects (stars_id, title)
    VALUES (10, "Interview with the Vampire 1994");

CREATE TABLE project_pairs (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    project1_id INTEGER,
    project2_id INTEGER);

INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(21, 29);
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(28, 24);
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(25, 2);
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(1, 7);
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(8, 10); 
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(9, 11);    
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(12, 18);
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(17, 30);
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(31, 4);
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(3, 32);
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(33, 15);
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(16, 14);
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(13, 23);
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(21, 26);
INSERT INTO project_pairs (project1_id, project2_id)
    VALUES(27, 17);

SELECT * FROM stars;
SELECT * FROM leading_role;
SELECT * FROM supporting_role;
SELECT * FROM joint_projects;
SELECT * FROM project_pairs;

/*return the name of the star in a leading role movie*/
SELECT stars.first_name, stars.last_name, leading_role.movie AS "Leading role movie"
	FROM stars
    JOIN leading_role
    ON stars.id = leading_role.stars_id;	

/*return the name of the star in a supporting role movie*/
SELECT stars.first_name, stars.last_name, supporting_role.movie AS "Supporting role movie"
	FROM stars
    JOIN supporting_role
    ON stars.id = supporting_role.stars_id;


/*return the actors in a leading role with movie's rate higher than 8 */
SELECT stars.first_name, stars.last_name, leading_role.rate
	FROM stars
    JOIN leading_role
    ON stars.id = leading_role.stars_id
    WHERE leading_role.rate >= 8;

/*return the actors in a supporting role with movie's rate higher than 8 */
SELECT stars.first_name, stars.last_name, supporting_role.rate
	FROM stars
    JOIN supporting_role
    ON stars.id = supporting_role.stars_id
    WHERE supporting_role.rate >= 8;

/*return the names of the actors that have joint projects*/
SELECT stars.first_name, stars.last_name, joint_projects.title
	FROM stars
    JOIN joint_projects
    ON stars.id = joint_projects.stars_id
    ORDER BY joint_projects.title;
    
/*return the name of the actor that hasn't got a joint project*/
SELECT stars.first_name, stars.last_name, joint_projects.title
	FROM stars
	LEFT JOIN joint_projects
	ON stars.id = joint_projects.stars_id
	WHERE joint_projects.title IS NULL;





