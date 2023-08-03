--DDL EXERCICIO 1.2
CREATE DATABASE Exercicio_1_2;

USE Exercicio_1_2;

CREATE TABLE Cliente
(
	IdCliente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20)NOT NULL,
	CPF VARCHAR(20)NOT NULL UNIQUE
)

CREATE TABLE Empresa
(
	IdEmpresa INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20)NOT NULL
)

CREATE TABLE Modelo
(
	IdModelo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20)NOT NULL
)

CREATE TABLE Marca
(
	IdMarca INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20)NOT NULL
)

CREATE TABLE Veiculo
(
	IdVeiculo INT PRIMARY KEY IDENTITY,
	IdEmpresa INT FOREIGN KEY REFERENCES Empresa(IdEmpresa)NOT NULL,
	IdModelo INT FOREIGN KEY REFERENCES Modelo(IdModelo)NOT NULL,
	IdMarca INT FOREIGN KEY REFERENCES Marca(IdMarca)NOT NULL,
	Placa VARCHAR(20)NOT NULL UNIQUE
)

CREATE TABLE Aluguel
(
	IdAluguel INT PRIMARY KEY IDENTITY,
	IdVeiculo INT FOREIGN KEY REFERENCES Veiculo(IdVeiculo)NOT NULL,
	IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente)NOT NULL,
	Protocolo VARCHAR(20)NOT NULL UNIQUE
)