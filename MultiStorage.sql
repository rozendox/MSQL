CREATE DATABASE IF NOT EXISTS MultiStorage;


CREATE TABLE FUNCIONARIO(
cod_func tinyint(3) PRIMARY KEY  ,
nome_func  varchar(50),
tel_func bigint(11),
cpf_func bigint(11),
tipo_sang char(2),
setor char(10)
) Default CHARSET = utf8;



CREATE TABLE GERENCIA_mecanica(
Id_gen_mec int(3) PRIMARY KEY ,
cod_func integer,
CONSTRAINT fk_gen_func_meca FOREIGN KEY (cod_func) REFERENCES FUNCIONARIO (cod_func)
);

CREATE TABLE GERENCIA_Mercadinho(
Id_gen_merc int(3) PRIMARY KEY,
cod_func integer,
CONSTRAINT fk_gen_func_merc FOREIGN KEY (cod_func) REFERENCES FUNCIONARIO (cod_func)
);

CREATE TABLE PRODUTOS_MERCADINHO(
cod_prod_merc smallint(10) PRIMARY KEY ,
nome_prod char(20)

);

CREATE TABLE PRODUTOS_MECANICA(
cod_prod_mec smallint(10) PRIMARY KEY ,
nome_peca char(30),
valor_peca int(6)
);

CREATE TABLE CLIENTE(
cod_cli bigint(11) PRIMARY KEY  NOT NULL,
nome_cli char(50),
tel_cli bigint(11),
end_cli varchar(250),
cpf_cli bigint(11),
idade_cli int(3)

);


CREATE TABLE SERVICOS_MECANICA(
id_serv int (4) PRIMARY KEY ,
cod_func integer,
cod_cli integer,
CONSTRAINT fk_cod_cli FOREIGN KEY (cod_cli) REFERENCES CLIENTE (cod_cli),
CONSTRAINT fk_cod_func FOREIGN KEY (cod_func) REFERENCES FUNCIONARIO(cod_func)
);

CREATE TABLE VENDA_MERC(
cod_venda_merc smallint(4) PRIMARY KEY  NOT NULL,
cod_cli integer,
cod_func integer,
cod_prod_merc integer,
Id_gen_merc integer,
CONSTRAINT fk_cod_cli FOREIGN KEY (cod_cli) REFERENCES CLIENTE (cod_cli),
CONSTRAINT fk_cod_func FOREIGN KEY (cod_func ) REFERENCES FUNCIONARIO (cod_func),
CONSTRAINT fk_cod_prod_merc FOREIGN KEY (cod_prod_merc) REFERENCES PRODUTOS_MERCADINHO (cod_prod_merc),
CONSTRAINT fk_id_gen_merc FOREIGN KEY (Id_gen_merc) REFERENCES GERENCIA_Mercadinho (Id_gen_merc)
);

CREATE TABLE VENDA_MECA(
cod_venda_meca smallint(4) PRIMARY KEY  NOT NULL,
cod_cli integer,
cod_func integer,
cod_prod_mec integer,
Id_gen_mec integer,
CONSTRAINT fk_cod_cli FOREIGN KEY (cod_cli) REFERENCES CLIENTE (cod_cli),
CONSTRAINT fk_cod_func FOREIGN KEY (cod_func ) REFERENCES FUNCIONARIO (cod_func),
CONSTRAINT fk_cod_prod_mec FOREIGN KEY (cod_prod_mec) REFERENCES PRODUTOS_MECANICA (cod_prod_mec),
CONSTRAINT fk_Id_gen_mec FOREIGN KEY (Id_gen_mec ) REFERENCES GERENCIA_mecanica (Id_gen_mec)
);


INSERT INTO `FUNCIONARIO` (`cod_func`, `nome_func`, `tel_func`, `cpf_func`, `tipo_sang`,`setor`) VALUES
  ('010', 'ANAKIN SKYWALKER', '66996457812', '45685942615','A+', 'MERCADINHO'),
  ('011', 'ROBSON VIEIRA', '66966524268', '458965987595', 'O+', 'MERCADINHO'),
  ('012', 'KLEIVEK TRISTANO', '66969587562', '60565975975','B-', 'MERCADINHO')
;

INSERT INTO `GERENCIA_mecanica`  (`Id_gen_mec`,`cod_func` ) VALUES
  ('01','010')
  ;
INSERT INTO `GERENCIA_Mercadinho`(`Id_gen_merc`,`cod_func`) VALUES 
  ('01','011')
;

INSERT INTO `PRODUTOS_MERCADINHO` (`cod_prod_merc`, `nome_prod`, `valor_prod`) VALUES 
   ('6695371659','Arroz Tio Joao TP1','34,50') 
;

INSERT INTO `PRODUTOS_MECANICA` (`cod_prod_mec`,`nome_peca`,`tipo`,`valor_peca`) VALUES 
    ('1091091556','Cabeçote do motor','carro','5850.00')
;



