DROP TABLE IF EXISTS lightsabers;
DROP TABLE IF EXISTS characters;

CREATE TABLE characters (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers (
  id SERIAL8 PRIMARY KEY,
  character_id INT8 REFERENCES characters(id),
  hilt_metal VARCHAR(255) NOT NULL,
  colour VARCHAR(255) NOT NULL
);

INSERT INTO characters (
  name,
  darkside,
  age
) VALUES (
  'Obi-Wan Kenobi',
  false,
  27
);

INSERT INTO characters (
  name,
  darkside,
  age
) VALUES (
  'Anakin Skywalker',
  false,
  19
);

INSERT INTO characters (
  name,
  darkside,
  age
) VALUES (
  'Darth Maul',
  false,
  32
);

INSERT INTO characters (
  name,
  darkside
) VALUES (
  'Yoda',
  false
);

INSERT INTO lightsabers (
  character_id,
  hilt_metal,
  colour
) VALUES (
  '4',
  'palladium',
  'green'
);

INSERT INTO lightsabers (
  character_id,
  hilt_metal,
  colour
) VALUES (
  '3',
  'gold',
  'red'
);

SELECT * FROM characters;
SELECT * FROM lightsabers;
