
CREATE DATABASE IF NOT EXISTS db_telegraph;
USE db_telegraph;

CREATE TABLE IF NOT EXISTS t_message (
    idMessage INT AUTO_INCREMENT PRIMARY KEY,
    mesIPSender VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS t_character (
    idCharacter INT AUTO_INCREMENT PRIMARY KEY,
    idMessage INT NOT NULL,    
    charAscii TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY (idMessage) REFERENCES t_message(idMessage) ON DELETE CASCADE ON UPDATE CASCADE
);
