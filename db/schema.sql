-- drop table
DROP TABLE IF EXISTS Pokemons;


-- create table
CREATE TABLE Pokemons(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  poke_type TEXT NOT NULL,
  cp INT NOT NULL,
  img_url TEXT
);
