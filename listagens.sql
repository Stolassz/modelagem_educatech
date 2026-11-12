// Listagem de alunos e cursos com seus relacionamentos, utilizando JOIN.

SELECT  
    alunos.nome AS aluno,
    cursos.nome AS curso,
    matriculas.data_matricula,
    matriculas.nota_final,
    matriculas.situacao
FROM matriculas
INNER JOIN alunos
    ON matriculas.aluno_id = alunos.id
INNER JOIN cursos
    ON matriculas.curso_id = cursos.id;

// Listagem de cursos mesmo quando não houver matrículas (LEFT JOIN).
// Listagem de alunos mesmo quando não houver matrículas (LEFT JOIN).

SELECT
    cursos.id,
    cursos.nome AS curso,
    alunos.nome as alunos
FROM cursos
LEFT JOIN matriculas
    ON cursos.id = matriculas.curso_id
LEFT JOIN alunos
    ON matriculas.aluno_id = alunos.id;

// Quantidade de alunos matriculados por curso (COUNT e GROUP BY).

SELECT
    cursos.nome AS cursos,
    COUNT(matriculas.id) AS quantidade_alunos
FROM cursos
LEFT JOIN matriculas
    ON cursos.id = matriculas.curso_id
GROUP BY cursos.id, cursos.nome;

// Cursos de um determinado aluno e alunos de um determinado curso.

SELECT


// Filtros por situação da matrícula e ordenação por nome, data ou nota. 

SELECT
