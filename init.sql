// Criação do banco
CREATE DATABASE educatech_manha;

// Acesso ao banco para operações
USE educatech_manha;

// Criação da tabela Alunos
-- Armazenar nome completo, e-mail, data de nascimento, telefone e
-- data de cadastro. Cada aluno deve possuir ID único. O e-mail deve ser
-- único. Nome e e-mail são obrigatórios.

CREATE TABLE IF NOT EXISTS alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    data_nascimento DATE,
    telefone INT(11),
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

// Alterando o tipo da coluna telefone
ALTER TABLE alunos MODIFY COLUMN telefone CHAR(14);

// Criação da tabela Professores
-- Armazenar nome, e-mail, telefone e especialidade. Cada professor
-- deve possuir ID único. O e-mail deve ser único. Nome e e-mail são
-- obrigatórios.

CREATE TABLE IF NOT EXISTS professores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telefone CHAR(14),
    especialidade VARCHAR(100)
);


// Criação da tabela Cursos
-- Armazenar nome, descrição, carga horária, valor, professor
-- responsável e data de criação. Todo curso deve possuir um professor
-- responsável. O valor não pode ser negativo e a carga horária deve ser
-- maior que zero.

CREATE TABLE IF NOT EXISTS cursos  (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    descricao TEXT,
    carga_horaria INT NOT NULL CHECK (carga_horaria > 0),
    valor DECIMAL(10,2) NOT NULL CHECK (valor >= 0),
    professor_id INT NOT NULL REFERENCES professores(id),
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

// Criação da tabela Matriculas
-- Armazenar aluno, curso, data da matrícula, nota final e situação. Um
-- aluno não pode se matricular duas vezes no mesmo curso. A nota deve
-- estar entre 0 e 10. Situações permitidas: EM_ANDAMENTO, CONCLUIDA
-- ou CANCELADA.

CREATE TABLE IF NOT EXISTS matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    curso_id INT NOT NULL,
    data_matricula DATETIME DEFAULT CURRENT_TIMESTAMP,
    nota_final DECIMAL(4,2),
    situacao ENUM(
        'EM_ANDAMENTO',
        'CONCLUIDA',
        'CANCELADA'
    ) NOT NULL DEFAULT 'EM_ANDAMENTO',

    CONSTRAINT chk_nota_final 
        CHECK (nota_final BETWEEN 0 AND 10 OR nota_final IS NULL),

    CONSTRAINT uk_aluno_curso 
        UNIQUE (aluno_id, curso_id),

    CONSTRAINT fk_matriculas_alunos 
        FOREIGN KEY (aluno_id) 
        REFERENCES alunos(id),
    
    CONSTRAINT fk_matriculas_cursos 
        FOREIGN KEY (curso_id) 
        REFERENCES cursos(id)
);