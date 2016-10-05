-- drop table
DROP TABLE IF EXISTS Pokemons;
DROP TABLE IF EXISTS Trainers;


-- create table
CREATE TABLE Pokemons(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  poke_type TEXT NOT NULL,
  cp INT NOT NULL,
  img_url TEXT,
  trainer_id INT
);

CREATE TABLE Trainers(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  level INT NOT NULL,
  img_url text NOT NULL
)
