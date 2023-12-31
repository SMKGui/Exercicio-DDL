--DDL CRIAR BANCO E TABELAS
--CRIAR BANCO DE DADOS
CREATE DATABASE Exercicio_1_2;

CREATE TABLE Cliente
(
	IdCliente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20)NOT NULL,
	CPF VARCHAR(11)NOT NULL UNIQUE
)

CREATE TABLE Empresa
(
	IdEmpresa INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20)NOT NULL
)

CREATE TABLE Marca
(
	IdMarca INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20)NOT NULL
)

CREATE TABLE Modelo
(
	IdModelo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20)NOT NULL
)

SELECT * FROM Marca
SELECT * FROM Modelo


CREATE TABLE Veiculo
(
	IdVeiculo INT PRIMARY KEY IDENTITY,
	IdMarca INT FOREIGN KEY REFERENCES Marca(IdMarca)NOT NULL,
	IdModelo INT FOREIGN KEY REFERENCES Modelo(IdModelo)NOT NULL,
	IdEmpresa INT FOREIGN KEY REFERENCES Empresa(IdEmpresa)NOT NULL,
	Placa VARCHAR(20)NOT NULL UNIQUE
)

CREATE TABLE Aluguel
(
	IdAluguel INT PRIMARY KEY IDENTITY,
	IdVeiculo INT FOREIGN KEY REFERENCES Veiculo(IdVeiculo)NOT NULL,
	IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente)NOT NULL,
	Valor VARCHAR(20)NOT NULL,
	Protocolo VARCHAR(20)NOT NULL UNIQUE
)

