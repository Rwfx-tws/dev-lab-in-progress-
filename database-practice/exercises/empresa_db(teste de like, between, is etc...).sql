CREATE DATABASE IF NOT EXISTS empresa_db;
USE empresa_db;

DROP TABLE IF EXISTS funcionarios;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2),
    data_admissao DATE,
    cidade VARCHAR(50),
    desconto_vt DECIMAL(10,2) NULL
);

INSERT INTO funcionarios (nome, cargo, departamento, salario, data_admissao, cidade, desconto_vt) 
	VALUES
		('Ana Silva', 'Desenvolvedor Junior', 'TI', 3200.00, '2023-01-15', 'Hortolândia', 150.00),
		('Bruno Souza', 'Analista de Sistemas', 'TI', 5500.00, '2021-06-10', 'Campinas', NULL),
		('Carlos Oliveira', 'Vendedor', 'Comercial', 2100.00, '2022-03-20', 'Sumaré', 120.00),
		('Daniela Lima', 'Gerente de Vendas', 'Comercial', 8200.00, '2019-11-01', 'Campinas', NULL),
		('Eduardo Rocha', 'Desenvolvedor Pleno', 'TI', 6200.00, '2020-08-14', 'Hortolândia', 180.00),
		('Fernanda Costa', 'Analista de RH', 'RH', 4100.00, '2021-02-01', 'Americana', 140.00),
		('Gabriel Santos', 'Assistente Administrativo', 'Administrativo', 1950.00, '2023-05-12', 'Hortolândia', 110.00),
		('Helena Martins', 'Designer UX', 'Marketing', 4800.00, '2022-09-01', 'Campinas', NULL),
		('Igor Ferreira', 'Suporte Tecnico', 'TI', 2500.00, '2023-02-28', 'Sumaré', 130.00),
		('Juliana Alves', 'Coordenadora de Marketing', 'Marketing', 7500.00, '2018-04-15', 'Valinhos', NULL),
		('Lucas Pereira', 'Desenvolvedor Senior', 'TI', 9800.00, '2017-10-10', 'Hortolândia', NULL),
		('Mariana Ribeiro', 'Vendedor', 'Comercial', 2300.00, '2023-07-01', 'Campinas', 125.00),
		('Nicolas Carvalho', 'Assistente de RH', 'RH', 2100.00, '2023-04-10', 'Hortolândia', 115.00),
		('Olivia Gomez', 'Contador', 'Financeiro', 6100.00, '2020-01-20', 'Americana', NULL),
		('Paulo Freitas', 'Analista Financeiro', 'Financeiro', 4300.00, '2022-01-10', 'Campinas', 160.00),
		('Quintino Neto', 'Vendedor', 'Comercial', 2200.00, '2022-11-15', 'Sumaré', 120.00),
		('Rafaela Mendes', 'Desenvolvedor Junior', 'TI', 3400.00, '2023-03-01', 'Hortolândia', 150.00),
		('Sergio Ramos', 'Gerente de TI', 'TI', 12500.00, '2015-05-20', 'Campinas', NULL),
		('Tatiane Barbosa', 'Assistente Comercial', 'Comercial', 2000.00, '2023-06-15', 'Hortolândia', 110.00),
		('Uriel Garcia', 'Estagiario de TI', 'TI', 1400.00, '2024-01-10', 'Hortolândia', 90.00),
		('Valeria Cruz', 'Analista de Marketing', 'Marketing', 3900.00, '2022-08-01', 'Campinas', 145.00),
		('Wagner Lopes', 'Vendedor', 'Comercial', 2400.00, '2021-12-01', 'Sumaré', NULL),
		('Xavier Nunes', 'Analista de Dados', 'TI', 5800.00, '2021-09-15', 'Americana', NULL),
		('Yara Vieira', 'Assistente Financeiro', 'Financeiro', 2200.00, '2023-08-01', 'Hortolândia', 120.00),
		('Zeca Pagodinho', 'Recepcionista', 'Administrativo', 1800.00, '2023-09-10', 'Sumaré', 100.00),
		('Aline Camargo', 'Desenvolvedor Pleno', 'TI', 6400.00, '2021-04-01', 'Campinas', NULL),
		('Bernardo Castro', 'Suporte Tecnico', 'TI', 2600.00, '2022-10-10', 'Hortolândia', 135.00),
		('Camila Franco', 'Gerente de RH', 'RH', 8900.00, '2017-03-01', 'Valinhos', NULL),
		('Diogo Mello', 'Vendedor', 'Comercial', 2150.00, '2023-02-15', 'Campinas', 120.00),
		('Eliana Duarte', 'Contador', 'Financeiro', 6300.00, '2019-07-20', 'Americana', NULL
	);


SELECT nome, cargo FROM funcionarios where nome LIKE "A%";
SELECT * FROM funcionarios where cargo LIKE "Desenvolvedor%";
SELECT * FROM funcionarios where nome like "_a%";

SELECT nome, departamento, salario FROM funcionarios where salario BETWEEN 3000.00 and 6000.00;
SELECT * FROM funcionarios where salario NOT BETWEEN 2000.00 and 8000.00;

SELECT * FROM funcionarios where departamento in ('TI','RH','Financeiro');
SELECT * FROM  funcionarios where cidade NOT in ('Campinas','Americana');

SELECT nome, cargo, desconto_vt FROM funcionarios where desconto_vt IS NULL;
SELECT nome, desconto_vt FROM funcionarios where desconto_vt is not NULL;

SELECT * FROM funcionarios where departamento in ('TI','Comercial') 
	and salario BETWEEN 2000.00 and 7000.00 
	and nome not like '%II';