/* ------  Strukturen UNIQUE ----- */

/* Datenbanken auf Server anzeigen */
SHOW DATABASES;

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
USE boo;

/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS test
(
    -- Constraint: UNIQUE
    name VARCHAR(20) NOT NULL UNIQUE DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0
);

/* Struktur der Tabelle anzeigen */
DESCRIBE test;

/* ----- Daten ------- */
INSERT INTO test(name,age) VALUES ("Grizabella", 29);
INSERT INTO test(age,name) VALUES (35, "Alonzo");
INSERT INTO test VALUES ();

INSERT INTO test(age,name) VALUES (35, "Alonzo der Coole");

/* Inhalte der Tabelle anzeigen */
SELECT * FROM test;

DROP TABLE IF EXISTS test;

SHOW TABLES;





