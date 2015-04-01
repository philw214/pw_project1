DROP TABLE IF EXISTS cards;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS answers;


CREATE TABLE answers(
  id SERIAL PRIMARY KEY,
  answer TEXT NOT NULL,
  card_id INTEGER
);

CREATE TABLE cards(
  id SERIAL PRIMARY KEY,
  question TEXT NOT NULL,
  category_id INTEGER 
);

CREATE TABLE categories(
  id SERIAL PRIMARY KEY,
  category TEXT NOT NULL
);
