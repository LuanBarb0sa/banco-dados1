create database netflix_p2

use netflix_p2


create table tb_usuario
	(
		id INT IDENTITY(1,1) NOT NULL,
		CONSTRAINT PK_usuario PRIMARY KEY NONCLUSTERED (id),
		nome VARCHAR(55),
		email VARCHAR(50) NOT NULL,
		senha VARCHAR(50) NOT NULL,
		cartao VARCHAR(16) NOT NULL,
		telefone VARCHAR(50) NOT NULL,
		cod_endereço VARCHAR, 
	
		
	);

create table tb_video
	(
		id INT IDENTITY(1,1) NOT NULL,
		CONSTRAINT PK_video PRIMARY KEY NONCLUSTERED (id),
		genero VARCHAR(55) NOT NULL,
		temporada INT NOT NULL,
		episódio int NOT NULL,
		titulo VARCHAR(55) NOT NULL,
		ano VARCHAR(50) NOT NULL,
		duração VARCHAR(16) NOT NULL, 
		produtora VARCHAR(55), 
		tipo VARCHAR(55),
		sinopse VARCHAR(255),
	
		
	);

create table tb_mensalidade
	(	id INT IDENTITY(1,1) NOT NULL,
		CONSTRAINT PK_mensalidade PRIMARY KEY NONCLUSTERED (id),
		tpAssinatura INT NOT NULL,
		valor_pago DECIMAL(5,2) NOT NULL,
		pagamento DATETIME NOT NULL, 
	)

create table tb_pagamento
	(
		id INT IDENTITY(1,1) NOT NULL,
		CONSTRAINT PK_pagamento PRIMARY KEY NONCLUSTERED (id),
		tpStatus CHAR(1) 
	)

create table tb_avaliacao
	(	
		id INT IDENTITY(1,1) NOT NULL,
		CONSTRAINT PK_avaliacao PRIMARY KEY NONCLUSTERED (id),
		avaliacao VARCHAR(5) NOT NULL
	)

ALTER TABLE tb_pagamento ADD CONSTRAINT FK_mensalidade FOREIGN KEY (id)
REFERENCES tb_mensalidade (id)

ALTER TABLE tb_pagamento ADD CONSTRAINT FK_usuario FOREIGN KEY (id)
REFERENCES tb_usuario (id)

ALTER TABLE tb_avaliacao ADD CONSTRAINT FK_usuarioavaliacao FOREIGN KEY (id)
REFERENCES tb_usuario (id)

ALTER TABLE tb_avaliacao ADD CONSTRAINT FK_video FOREIGN KEY (id)
REFERENCES tb_video (id)