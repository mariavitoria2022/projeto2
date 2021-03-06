DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS posts;

CREATE TABLE usuarios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT UNIQUE NOT NULL,
  email TEXT NOT NULL,
  senha TEXT NOT NULL
);

CREATE TABLE tipos (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  descricao TEXT NOT NULL
);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  id_autor INTEGER NOT NULL,
  data_postagem created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  titulo TEXT NOT NULL,
  like INTEGER NOT NULL,
  deslike INTEGER NOT NULL,
  observacao TEXT NOT NULL,
  imagem BLOB NOT NULL,
  id_tipo INTEGER NOT NULL,
  publico NUMERIC DEFAULT 0,

  FOREIGN KEY (id_autor) REFERENCES usuarios (id),
  FOREIGN KEY (id_tipo) REFERENCES tipos (id)
);