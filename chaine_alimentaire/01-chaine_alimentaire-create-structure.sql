---- RESET

DROP TABLE IF EXISTS animaux;
DROP TABLE IF EXISTS legumes;

---- CREATION

CREATE TABLE legumes
(
    tid     VARCHAR(36) PRIMARY KEY,
    nom     TEXT NOT NULL,
    couleur TEXT
);

CREATE TABLE animaux
(
    tid            VARCHAR(36) PRIMARY KEY,
    nom            TEXT NOT NULL,
    nombre_pattes  INT  NOT NULL,
    legume_prefere VARCHAR(36) REFERENCES legumes (tid)
);
