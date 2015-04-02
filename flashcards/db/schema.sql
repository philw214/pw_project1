DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS cards;





CREATE TABLE cards(
  id SERIAL PRIMARY KEY,
  question TEXT NOT NULL,
  answer TEXT NOT NULL,
  category_id INTEGER
);

CREATE TABLE categories(
  id SERIAL PRIMARY KEY,
  category TEXT NOT NULL
);
