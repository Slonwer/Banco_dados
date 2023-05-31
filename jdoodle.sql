CREATE TABLE Aluno (
    cod_aluno INT,
    nome VARCHAR(255),
    naturalidade VARCHAR(255),
    ano_nascimento INT,
    cod_disciplina INT,
    nota FLOAT
);

CREATE TABLE Curso (
    Cod_curso INT,
    curso VARCHAR(255),
    diretor VARCHAR(255),
    ano_inscricao INT
);

CREATE TABLE Disciplina (
    Cod_disciplina INT,
    disciplina VARCHAR(255)
);

CREATE TABLE Encomenda (
    Num_encomenda INT,
    num_data_encomenda INT,
    num_endereco INT,
    endereco VARCHAR(255),
    num_encomenda INT
);

CREATE TABLE Cliente (
    Nome_cliente VARCHAR(255),
    endereco VARCHAR(255),
    Num_endereco INT,
    Num_quantidade INT
);

CREATE TABLE Produto (
    Cod_produto INT,
    quantidade INT,
    produto VARCHAR(255)
);

CREATE TABLE Apolice (
    cod_tipo INT,
    cod_cliente INT,
    num_ap INT,
    data_pag DATE,
    marca_viatura VARCHAR(255),
    estado_nome_localidade VARCHAR(255),
    valor FLOAT
);

CREATE TABLE Tipo (
    cod_tipo INT,
    tipo VARCHAR(255)
);
CREATE TABLE Projeto (
    CodigoProjeto INT,
    tipo VARCHAR(255),
    descricao VARCHAR(255),
    categoria VARCHAR(255),
    data_inic DATE,
    nome VARCHAR(255),
    PRIMARY KEY (CodigoProjeto)
);

CREATE TABLE Empregado (
    CodEmpregado INT,
    CodEmpregador INT,
    salario_empregador FLOAT,
    nome_empregador VARCHAR(255),
    PRIMARY KEY (CodEmpregado)
);

CREATE TABLE Salario (
    CodSalario INT,
    CodEmpregado INT,
    FOREIGN KEY (CodEmpregado) REFERENCES Empregado(CodEmpregado),
    PRIMARY KEY (CodSalario)
);
CREATE TABLE Curso (
    CodigoCurso INT,
    nome VARCHAR(255),
    vagas INT,
    PRIMARY KEY (CodigoCurso)
);

CREATE TABLE Candidatos (
    CodigoCurso INT,
    nome_editado VARCHAR(255),
    pontos_candidatos INT,
    PRIMARY KEY (CodigoCurso)
);

CREATE TABLE Inscricao (
    CodigoCurso INT,
    CodigoCandidatos INT,
    FOREIGN KEY (CodigoCurso) REFERENCES Curso(CodigoCurso),
    FOREIGN KEY (CodigoCandidatos) REFERENCES Candidatos(CodigoCandidatos),
    PRIMARY KEY (CodigoCurso, CodigoCandidatos)
);
CREATE TABLE Nota (
    NumeroNF INT,
    DataNF DATE,
    Tipo VARCHAR(255),
    NF VARCHAR(255),
    NomeCliente VARCHAR(255),
    CodCliente INT,
    EnderecoCliente VARCHAR(255),
    CNPJCliente VARCHAR(255),
    InscrEstCliente VARCHAR(255),
    PrecoTotalNF FLOAT,
    PRIMARY KEY (NumeroNF)
);

CREATE TABLE Produto (
    CodigoCliente INT,
    DescricaoProduto VARCHAR(255),
    QtdProduto INT,
    Unidade VARCHAR(255),
    preco FLOAT,
    NumeroNF INT,
    FOREIGN KEY (NumeroNF) REFERENCES Nota(NumeroNF),
    PRIMARY KEY (CodigoCliente, NumeroNF)
);

CREATE TABLE Cliente (
    CodigoCliente INT,
    nome_cliente VARCHAR(255),
    EnderecoCliente VARCHAR(255),
    CNPJ VARCHAR(255),
