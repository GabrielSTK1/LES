CREATE SCHEMA `roupex`;
USE roupex;

CREATE TABLE `roupex`.`usuarios`(
    `usu_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `usu_dt_criacao` DATETIME NOT NULL,
    `usu_habilitado` BOOLEAN NOT NULL,
    `usu_nome` VARCHAR(50) NOT NULL,
    `usu_email` VARCHAR(50) NOT NULL,
    `usu_senha` VARCHAR(50) NOT NULL
);

CREATE TABLE `roupex`.`clientes`(
    `cli_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cli_genero` VARCHAR(10) NOT NULL,
    `cli_dt_nascimento` DATETIME NOT NULL,
    `cli_cpf` VARCHAR(11) NOT NULL,
    `cli_telefone` VARCHAR(15) NOT NULL,
    `cli_ranking` INT NOT NULL,
    `cli_usuario` INT NOT NULL
);

CREATE TABLE `roupex`.`enderecos`(
    `end_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `end_dt_criacao` DATETIME NOT NULL,
    `end_habilitado` BOOLEAN NOT NULL,
    `end_tpResidencia` VARCHAR(15) NOT NULL,
    `end_tpLogradouro` VARCHAR(15) NOT NULL,
    `end_logradouro` VARCHAR(50) NOT NULL,
    `end_numero` VARCHAR(10) NOT NULL,
    `end_bairro` VARCHAR(50) NOT NULL,
    `end_cep` VARCHAR(25) NOT NULL,
    `end_complemento` VARCHAR(50),
    `end_cidade` VARCHAR(50) NOT NULL,
    `end_estado` VARCHAR(50) NOT NULL,
    `end_pais` VARCHAR(25) NOT NULL,
    `end_principal` BOOLEAN NOT NULL,
    `end_cliente` INT NOT NULL
);

CREATE TABLE `roupex`.`cartoes`(
    `crt_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `crt_dt_criacao` DATETIME NOT NULL,
    `crt_habilitado` BOOLEAN NOT NULL,
    `crt_numeroImpresso` VARCHAR(25) NOT NULL,
    `crt_nomeImpresso` VARCHAR(50) NOT NULL,
    `crt_codigoSeguranca` VARCHAR(3) NOT NULL,
    `crt_bandeira` VARCHAR(15) NOT NULL,
    `crt_dt_validade` DATETIME NOT NULL,
    `crt_principal` BOOLEAN NOT NULL,
    `crt_cliente` INT NOT NULL
);

/*FOREIGN KEY*/
ALTER TABLE `roupex`.`clientes` ADD CONSTRAINT `FK_USU_ID` FOREIGN KEY (`cli_usuario`)
REFERENCES `roupex`.`usuarios`(`usu_id`);

ALTER TABLE `roupex`.`enderecos` ADD CONSTRAINT `FK_CLI_ID` FOREIGN KEY (`end_cliente`)
REFERENCES `roupex`.`clientes`(`cli_id`);

ALTER TABLE `roupex`.`cartoes` ADD CONSTRAINT `FK_CLI_CRT_ID` FOREIGN KEY (`crt_cliente`)
REFERENCES `roupex`.`clientes`(`cli_id`);

