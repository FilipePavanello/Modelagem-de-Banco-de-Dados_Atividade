-- SCRIPT CRIAÇÃO DE TABELAS --

-- CRIANDO TABELA TUTOR
CREATE TABLE tutor (
    id_tutor    INTEGER    PRIMARY KEY AUTOINCREMENT,
    nome           TEXT(100)       NOT NULL,
    cpf   TEXT (11) NOT NULL,
    telefone     INTERGER

);

-- CRIANDO TABELA ANIMAL
CREATE TABLE animal (
    id_animal    INTEGER    PRIMARY KEY AUTOINCREMENT,
    nome           TEXT(100)       NOT NULL,
    especie   TEXT (100) NOT NULL,
    idade     INTERGER NOT NULL,
    id_tutor INTEGER,
    FOREIGN KEY (id_tutor) REFERENCES tutor (id_tutor)
);

-- CRIANDO TABELA VETERINARIO
CREATE TABLE veterinario (
    id_veterinario    INTEGER    PRIMARY KEY AUTOINCREMENT,
    nome           TEXT(100)       NOT NULL,
    cpf   TEXT (11) NOT NULL,
    crmv     TEXT (20) NOT NULL
 );

-- CRIANDO TABELA ATENDIMENTO
CREATE TABLE atendimento (
    id_atendimento     INTEGER    PRIMARY KEY AUTOINCREMENT,
    data     TEXT(100)       NOT NULL,
    diagnostico   TEXT (200) NOT NULL,
    status_atendimento     TEXT (20) NOT NULL,
    id_animal INTEGER,
    id_veterinario INTEGER,
    FOREIGN KEY (id_animal) REFERENCES animal (id_animal),
    FOREIGN KEY (id_veterinario) REFERENCES veterinario (id_veterinario)
 );
 
-- CRIANDO TABELA ATENDIMENTO
CREATE TABLE atendimento (
    id_atendimento     INTEGER    PRIMARY KEY AUTOINCREMENT,
    data     TEXT(100)       NOT NULL,
    diagnostico   TEXT (200) NOT NULL,
    status_atendimento     TEXT (20) NOT NULL,
    id_animal INTEGER,
    id_veterinario INTEGER,
    FOREIGN KEY (id_animal) REFERENCES animal (id_animal),
    FOREIGN KEY (id_veterinario) REFERENCES veterinario (id_veterinario)
 );
 
-- CRIANDO TABELA PRONTUARIO
CREATE TABLE prontuario (
    id_prontuario     INTEGER    PRIMARY KEY AUTOINCREMENT,
    id_atendimento INTEGER,
    FOREIGN KEY (id_atendimento) REFERENCES atendimento (id_atendimento)
 );
 
-- CRIANDO TABELA PRONTUARIO
CREATE TABLE prontuario (
    id_prontuario     INTEGER    PRIMARY KEY AUTOINCREMENT,
    id_atendimento INTEGER,
    FOREIGN KEY (id_atendimento) REFERENCES atendimento (id_atendimento)
 );
 
-- CRIANDO TABELA PRODUTO
CREATE TABLE produto (
    id_produto     INTEGER    PRIMARY KEY AUTOINCREMENT,
    descricao TEXT (200),
    preco_venda numeric (10,2)
 );
 
-- CRIANDO TABELA ATENDIMENTO_PRODUTO
CREATE TABLE atendimento_produto (
    id_atendimento_produto     INTEGER    PRIMARY KEY AUTOINCREMENT,
    id_atendimento INTEGER,
    id_produto INTEGER,
    quantidade numeric (10,2),
    FOREIGN KEY (id_atendimento) REFERENCES atendimento (id_atendimento),
    FOREIGN KEY (id_produto) REFERENCES produto (id_produto)
    
 );
 
-- CRIANDO TABELA FATURAMENTO_PRODUTO
CREATE TABLE faturamento_produto (
    id_faturamento_produto     INTEGER    PRIMARY KEY AUTOINCREMENT,
    id_atendimento_produto INTEGER,
    num_nota_fiscal_produto INTERGER,
    data_emissao TEXT,
    forma_pgto TEXT (10),
    data_pgto TEXT (10),
    status_pgto TEXT (10),
    FOREIGN KEY (id_atendimento_produto) REFERENCES atendimento_produto (id_atendimento_produto)
       
 );
 
-- CRIANDO TABELA SERVICO
CREATE TABLE servico (
    id_servico     INTEGER    PRIMARY KEY AUTOINCREMENT,
    descricao TEXT (200),
    tipo TEXT (100)
 );
 
-- CRIANDO TABELA ATENDIMENTO_SERVICO
CREATE TABLE atendimento_servico (
    id_atendimento_servico     INTEGER    PRIMARY KEY AUTOINCREMENT,
    id_atendimento INTEGER,
    id_servico INTEGER,
    quantidade numeric (10,2),
    FOREIGN KEY (id_atendimento) REFERENCES atendimento (id_atendimento),
    FOREIGN KEY (id_servico) REFERENCES servico (id_servico)
    
 );
 
-- CRIANDO TABELA FATURAMENTO_SERVICO
CREATE TABLE faturamento_servico (
    id_faturamento_servico     INTEGER    PRIMARY KEY AUTOINCREMENT,
    id_atendimento_servico INTEGER,
    num_nota_fiscal_servico INTERGER,
    data_emissao TEXT,
    forma_pgto TEXT (10),
    data_pgto TEXT (10),
    status_pgto TEXT (10),
    FOREIGN KEY (id_atendimento_servico) REFERENCES atendimento_servico (id_atendimento_servico)
       
 );