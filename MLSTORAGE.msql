CREATE DATABASE [IF NOT EXISTS] MultiStorage;


CREATE TABLE FUNCIONARIO(
cod_func tinyint(3) PRIMARY KEY AUTOINCREMENT ,
nome_func  varchar(50), 
tel_func int(11),
cpf_func int(11),
tipo_sang char(2),
setor char(10),
) Default CHARSET = utf8;



CREATE TABLE GERENCIA_mecanica(
Id_gen_mec int(3) PRIMARY KEY AUTOINCREMENT,
cod_func integer,
CONSTRAINT fk_gen_func_meca FOREIGN KEY (cod_func) REFERENCES FUNCIONARIO (cod_func)
);

CREATE TABLE GERENCIA_Mercadinho(
Id_gen_merc int(3) PRIMARY KEY AUTOINCREMENT;
cod_func integer,
CONSTRAINT fk_gen_func_merc FOREIGN KEY (cod_func) REFERENCES FUNCIONARIO (cod_func)
);

CREATE TABLE PRODUTOS_MERCADINHO(
cod_prod_merc smallint(10) PRIMARY KEY AUTOINCREMENT,
nome_prod char(20)

);

CREATE TABLE PRODUTOS_MECANICA(
cod_prod_mec smallint(10) PRIMARY KEY AUTOINCREMENT,
nome_peca char(30),
valor_peca int(6)
);

CREATE TABLE CLIENTE(
cod_cli int(11) PRIMARY KEY AUTOINCREMENT NOT NULL,
nome_cli char(50),
tel_cli int(11),
end_cli varchar(250),
cpf_cli int(11),
idade_cli tinyint(3)

);


CREATE TABLE SERVICOS_MECANICA(
id_serv smallint (4) PRIMARY KEY AUTOINCREMENT,
cod_func integer,
cod_cli integer,
CONSTRAINT fk_cod_cli FOREIGN KEY (cod_cli) REFERENCES CLIENTE (cod_cli),
CONSTRAINT fk_cod_func FOREIGN KEY (cod_func) REFERENCES FUNCIONARIO(cod_func)
);

CREATE TABLE VENDA_MERC(
cod_venda smallint(4) PRIMARY KEY AUTOINCREMENT NOT NULL;
cod_cli integer,
cod_func integer,
cod_prod_merc integer,
Id_gen_merc integer,
CONSTRAINT fk_cod_cli FOREIGN KEY (cod_cli) REFERENCES CLIENTE (cod_cli),
CONSTRAINT fk_cod_func FOREIGN KEY (cod_func ) REFERENCES FUNCIONARIO (cod_func),
CONSTRAINT fk_cod_prod_merc FOREIGN KEY (cod_prod_merc) REFERENCES PRODUTOS_MERCADINHOO (cod_prod_merc),
CONSTRAINT fk_id_gen_merc FOREIGN KEY (Id_gen_merc) REFERENCES GERENCIA_Mercadinho (Id_gen_merc),
);

CREATE TABLE VENDA_MECA(

);
