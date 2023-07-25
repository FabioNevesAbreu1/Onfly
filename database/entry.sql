CREATE DATABASE Onfly;

USE Onfly;

CREATE TABLE Usuario (
    `Id` INT AUTO_INCREMENT,
    `Email` VARCHAR(150) NOT NULL,
    `Nome` VARCHAR(150) NOT NULL,
    `Senha` VARCHAR(150) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Despesa (
    `Id` INT AUTO_INCREMENT,
    `Descricao` VARCHAR(150) NOT NULL,
    `Data_Despesa` datetime NOT NULL,
    `Usuario` INT NOT NULL,
    `Valor` DOUBLE(9,2) NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY (Usuario) REFERENCES Usuario(Id)
);
 