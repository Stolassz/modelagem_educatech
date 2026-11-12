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