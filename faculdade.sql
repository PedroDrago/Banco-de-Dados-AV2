--Pedro Jupurity Pinheiro Drago - 202208618804

CREATE TABLE curso (
    nome VARCHAR(30) NOT NULL,
    tipo_de_graduacao VARCHAR(15) NOT NULL,
    quantidade_de_disciplinas INT,
    quantidade_de_eletivas INT,
    horas_ac INT,
    PRIMARY KEY(nome)
);

CREATE TABLE aluno (
    matricula INT NOT NULL,
    nome varchar(50),
    curso varchar(30),
    CR DECIMAL,
    PRIMARY KEY (matricula),
    foreign KEY(nome) references curso(nome)
);
CREATE TABLE professor (
    nome varchar(50) NOT NULL,
    departamento varchar(15) NOT NULL,
    id INT NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE disciplina (
    nome varchar(50) NOT NULL,
    carga_horaria INT,
    creditos INT,
    codigo varchar(15) NOT NULL,
    PRIMARY KEY(codigo)
);
CREATE TABLE turma (
    numero INT NOT NULL,
    vagas INT NOT NULL,
    quantidade_de_alunos INT,
    codigo VARCHAR(15) NOT NULL,
    PRIMARY KEY(numero),
    foreign KEY (codigo) references disciplina(codigo)
);




INSERT INTO curso VALUES (
    "analise e desenvolvimento de sistemas",
    "tecnologica",
    27,
    0,
    40
);

INSERT INTO curso VALUES (
    "gestao de tecnologia da informacao",
    "tecnologica",
    27,
    0,
    40
);

INSERT INTO curso VALUES (
    "sistemas de informacao",
    "bacharelado",
    38,
    4,
    120
);

INSERT INTO disciplina VALUES (
    'banco de dados',
    40,
    4,
    'ARA402'
);

INSERT INTO disciplina VALUES (
    'arquitetura de computadores',
    40,
    4,
    'ARA403'
);
INSERT INTO disciplina VALUES (
    'estrutura de dados',
    40,
    4,
    'ARA404'
);


INSERT INTO turma VALUES(
    3003,
    50,
    0,
    "ARA402"
);

INSERT INTO turma VALUES(
    3001,
    65,
    65,
    "ARA301"
);

INSERT INTO turma VALUES(
    3005,
    50,
    35,
    "ARA303"
);

INSERT INTO aluno VALUES(
    202208618804,
    "Pedro Jupurity Pinheiro Drago",
    "analise e desenvolvimento de sistemas",
    8.0
);

INSERT INTO aluno VALUES(
    202208617803,
    "Jonathan Pinto Silva",
    "gestao de tecnologia da informacao",
    9.0
);

INSERT INTO aluno VALUES(
    202005617402,
    "Alexandre Pereira",
    "sistemas de informacao",
    6.5
);

INSERT INTO professor VALUES(
    'Ana Maria Braganca',
    'matematica',
    30140
);

INSERT INTO professor VALUES(
    'Brandon Matias Borges',
    'tecnologia da informacao',
    20413
);

INSERT INTO professor VALUES(
    'Lester Matias Coutinho',
    'letras',
    39102
);