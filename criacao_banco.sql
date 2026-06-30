CREATE TABLE ESTUDANTE (
    matricula VARCHAR(20) PRIMARY KEY,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    nome_completo VARCHAR(150) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE MENTOR (
    matricula VARCHAR(20) PRIMARY KEY REFERENCES ESTUDANTE(matricula) ON DELETE CASCADE,
    ira NUMERIC(4,2),
    semestre_atual INT,
    especialidade VARCHAR(100)
);

CREATE TABLE MENTORADO (
    matricula VARCHAR(20) PRIMARY KEY REFERENCES ESTUDANTE(matricula) ON DELETE CASCADE
);

CREATE TABLE DISCIPLINA (
    codigo VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT
);

CREATE TABLE LOCAL (
    id_local SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo_acesso VARCHAR(50) NOT NULL
);

CREATE TABLE MATERIAL (
    id_material SERIAL PRIMARY KEY,
    link_referencia VARCHAR(255) NOT NULL
);

CREATE TABLE GRUPO (
    id_grupo SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    semestre VARCHAR(10)
);

CREATE TABLE DISPONIBILIDADE (
    id_disp SERIAL PRIMARY KEY,
    matricula_mentor VARCHAR(20) REFERENCES MENTOR(matricula) ON DELETE CASCADE,
    dia_semana VARCHAR(20) NOT NULL,
    horario_inicio TIME NOT NULL,
    horario_fim TIME NOT NULL
);

CREATE TABLE SESSAO (
    id_sessao SERIAL PRIMARY KEY,
    matricula_mentor VARCHAR(20) REFERENCES MENTOR(matricula),
    codigo_disciplina VARCHAR(20) REFERENCES DISCIPLINA(codigo),
    id_local INT REFERENCES LOCAL(id_local),
    id_grupo INT REFERENCES GRUPO(id_grupo),
    data DATE NOT NULL,
    horario TIME NOT NULL,
    presenca_mentor BOOLEAN,
    nota NUMERIC(4,2),
    comentario TEXT
);

CREATE TABLE GRUPO_MENTORADO (
    id_grupo INT REFERENCES GRUPO(id_grupo) ON DELETE CASCADE,
    matricula_mentorado VARCHAR(20) REFERENCES MENTORADO(matricula) ON DELETE CASCADE,
    PRIMARY KEY (id_grupo, matricula_mentorado)
);

CREATE TABLE PRESENCA_SESSAO (
    id_sessao INT REFERENCES SESSAO(id_sessao) ON DELETE CASCADE,
    matricula_mentorado VARCHAR(20) REFERENCES MENTORADO(matricula) ON DELETE CASCADE,
    presenca BOOLEAN NOT NULL,
    PRIMARY KEY (id_sessao, matricula_mentorado)
);

CREATE TABLE MENTOR_ENSINA (
    matricula_mentor VARCHAR(20) REFERENCES MENTOR(matricula) ON DELETE CASCADE,
    codigo_disciplina VARCHAR(20) REFERENCES DISCIPLINA(codigo) ON DELETE CASCADE,
    PRIMARY KEY (matricula_mentor, codigo_disciplina)
);

CREATE TABLE SESSAO_MATERIAL (
    id_sessao INT REFERENCES SESSAO(id_sessao) ON DELETE CASCADE,
    id_material INT REFERENCES MATERIAL(id_material) ON DELETE CASCADE,
    PRIMARY KEY (id_sessao, id_material)
);