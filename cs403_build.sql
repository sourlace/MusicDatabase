
DROP TABLE IF EXISTS artist;
DROP TABLE IF EXISTS member;
DROP TABLE IF EXISTS album;

--artist: the whole band or whatever

CREATE TABLE artist(
  artistID int PRIMARY KEY AUTO_INCREMENT

);

CREATE TABLE member(
  memberID int PRIMARY KEY AUTO_INCREMENT,
  firstname varchar(255),
  lastname varchar(255),
  start_year date,
  end_year date,

  FOREIGN KEY(artist_id) REFERENCES artist(artistID)
);


CREATE TABLE album(
  albumID int PRIMARY KEY AUTO_INCREMENT,
  title varchar(255),
  release_year date,
  genre varchar(255) --double circle meaning?
);

CREATE TABLE track(
  name varchar(255),
  number int,
  PRIMARY KEY(name, number)
);

CREATE TABLE label(
  label_ID int PRIMARY KEY AUTO_INCREMENT,
  name varchar(255),
  location varchar(255)
);



---TEST SELECTS---
--SELECT member, begin, end FROM artist WHERE name='The Who' ORDER BY begin, member.name;
SELECT * FROM label;
