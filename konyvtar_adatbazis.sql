-- 2. feladat
CREATE DATABASE konyvtaradatbazis
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_hungarian_ci;

-- 3. feladat
USE konyvtaradatbazis;

-- 4. feladat
CREATE TABLE konyvek (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    cim VARCHAR(200) NOT NULL UNIQUE,
    szerzo VARCHAR(120),
    kiadasi_ev YEAR, 
    oldalszam INTEGER CHECK (oldalszam BETWEEN 20 AND 2000),
    kategoria ENUM("fantasy", "sci-fi", "disztópia", "történelem"),
    ertekeles FLOAT DEFAULT 5.0
);

-- 5. feladat
CREATE TABLE olvasok (
    id INT AUTO_INCREMENT NOT NULL UNIQUE,
    nev VARCHAR(100) NOT NULL,
    szuletesi_datum DATE NOT NULL,
    varos VARCHAR(50) DEFAULT 'Budapest',
    aktiv ENUM('igen', 'nem') DEFAULT 'igen',
    regisztracio_idopontja TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);