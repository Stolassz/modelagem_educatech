
INSERT INTO professores 
    (nome, email, telefone, especialidade) 
VALUES 
    ('Marcos Antônio', 'markin@email.com', '+5585977777777', 'Frontend'),
    ('João Pedro', 'joaozin@email.com', '+5585988888888', 'Backend'),
    ('Marliana Fontes', 'marli@email.com', '+5585966666666', 'DevOps');

// Pelo menos um professor deve ser responsável por dois cursos.

INSERT INTO cursos 
    (nome, descricao, carga_horaria, valor, professor_id) 
VALUES 
    ('FullStack', 'Desenvolvimento do básico ao avançado', 160, 5000, 1),
    ('Analytics', 'Data analytics do básico ao avançado', 120, 3500.50, 2),
    ('Marketing', 'Estratégias de marketing e gestão de tráfego', 140, 3000, 2),
    ('DbAdmin', 'Foco na carreira de gestor de banco de dados', 100, 3000, 3),
    ('QA', 'Como quebrar qualquer aplicação? Descubra com nossa formação QA', 100, 1999.99, 1);

INSERT INTO alunos 
    (nome, email, data_nascimento, telefone)
VALUES
    ('Katy Perry', 'katy@email.com', '1989-10-05', '+5585911111111'),
    ('Lady Gaga', 'ladygaga@email.com', '1986-03-28', '+5585922222222'),
    ('Beyonce da Silva', 'beyonce@email.com', '1981-09-04', '+5585933333333'),
    ('Zara Larson', 'zara@email.com', '1990-07-15', '+5585944444444'),
    ('Rihanna de Oliveira', 'rihanna@email.com', '1988-02-20', '+5585955555555'),
    ('Lisa Montenegro', 'lisa@email.com', '1987-12-10', '+5585966666666'),
    ('Raye Gomes', 'raye@email.com', '1992-05-12', '+5585977777777'),
    ('Ariana Grande', 'ariana@email.com', '1993-08-20', '+5585988888888');

// Pelo menos um aluno deve ficar sem matrícula, para permitir testar consultas de alunos vazios.
// Pelo menos um curso deve ficar sem matrícula, para permitir testar consultas de cursos vazios.
// Um aluno deve estar matriculado em pelo menos dois cursos; um curso deve possuir mais de um aluno.

INSERT INTO matriculas
    (aluno_id, curso_id, nota_final, situacao)
VALUES
    (1, 1, 3.0, 'CANCELADA'),
    (1, 2, 9.0, 'CONCLUIDA'),
    (2, 1, 7.5, 'CONCLUIDA'),
    (3, 1, NULL, 'EM_ANDAMENTO'),
    (3, 3, 9.0, 'CONCLUIDA'),
    (4, 2, NULL, 'EM_ANDAMENTO'),
    (4, 3, NULL, 'EM_ANDAMENTO'),
    (5, 4, 10.0, 'CONCLUIDA'),
    (6, 1, 8.0, 'CONCLUIDA'),
    (6, 4, 8.0, 'CONCLUIDA'),
    (7, 2, 9.5, 'CONCLUIDA'),
    (7, 3, NULL, 'EM_ANDAMENTO');