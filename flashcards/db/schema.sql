DROP TABLE IF EXISTS cards;
DROP TABLE IF EXISTS categories;



CREATE TABLE answers(
  id SERIAL PRIMARY KEY,
  answer TEXT NOT NULL,
  card_id INTEGER
);

CREATE TABLE cards(
  id SERIAL PRIMARY KEY,
  question TEXT NOT NULL,
  answer TEXT NOT NULL,
  category_id INTEGER
);
