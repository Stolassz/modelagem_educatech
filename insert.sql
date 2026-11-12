INSERT INTO professores 
    (nome, email, telefone, especialidade) 
VALUES 
    ('Marcos Antônio', 'markin@email.com', '+5585977777777', 'Frontend'),
    ('João Pedro', 'joaozin@email.com', '+5585988888888', 'Backend'),
    ('Marliana Fontes', 'marli@email.com', '+5585966666666', 'DevOps');

INSERT INTO cursos 
    (nome, descricao, carga_horaria, valor, professor_id) 
VALUES 
    ('FullStack', 'Desenvolvimento do básico ao avançado', 160, 5000, 1),
    ('Analytics', 'Data analytics do básico ao avançado', 120, 3500.50, 2),
    ('Marketing', 'Estratégias de marketing e gestão de tráfego', 140, 3000, 2),
    ('DbAdmin', 'Foco na carreira de gestor de banco de dados', 100, 3000, 3),
    ('QA', 'Como quebrar qualquer aplicação? Descubra com nossa formação QA', 100, 1999.99, 1);