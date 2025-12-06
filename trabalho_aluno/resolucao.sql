-- ============================================
-- ATIVIDADE: INTRODUÇÃO AO SQL COM GITHUB
-- FICHEIRO: trabalho_aluno/resolucao.sql
-- Instruções:
--   - Escreve aqui os teus comandos SQL.
--   - Faz commits regulares à medida que fores testando o código.
-- ============================================
-- Início da atividade SQL
-- Importei a base de dados e confirmei que as tabelas foram criadas.


# Exercícios SQL (8 desafios)

## **1. Seleciona todos os registos da tabela `alunos`.**
SELECT * FROM alunos;

## **2. Seleciona os alunos com média superior a 15.**

SELECT * FROM alunos WHERE media > 15;

## **3. Mostra os alunos ordenados pela média em ordem decrescente.**

--SELECT nome idade media FROM alunos ORDER BY medias DESC;
  -- Correção do Exercício 3
-- O erro foi devido à ausência de vírgulas e à coluna incorreta.
SELECT nome, idade, media 
  FROM alunos 
  ORDER BY media DESC;

## **4. Conta quantos alunos estão no curso 'Multimédia'.**

SELECT COUNT(*) AS total_alunos_multimedia
FROM alunos a
JOIN cursos c ON a.id_curso = c.id_curso
WHERE c.nome_curso = 'Multimédia';

## **5. Faz um JOIN entre professores e disciplinas, listando o nome dos professores e o departamento.**

SELECT p.nome_professor,
       d.nome_departamento,
       disc.nome_disciplina
FROM professores p
JOIN departamentos d ON p.id_departamento = d.id_departamento
JOIN disciplinas disc ON disc.id_professor = p.id_professor;

## **6. Mostra quantos alunos existem por curso (usar GROUP BY).**

SELECT c.nome_curso,
       COUNT(a.id_aluno) AS total_alunos
FROM cursos c
LEFT JOIN alunos a ON a.id_curso = c.id_curso
GROUP BY c.nome_curso
ORDER BY c.nome_curso;

## **7. Apresenta a média global das médias dos alunos, a mais alta e a mais baixa.**

SELECT AVG(a.media) AS media_global,
       MAX(a.media) AS media_maxima,
       MIN(a.media) AS media_minima
FROM alunos a;

## **8. Seleciona os alunos cuja média é superior à média geral da tabela (subconsulta).**
SELECT a.*
FROM alunos a
WHERE a.media > (
    SELECT AVG(a2.media)
    FROM alunos a2
);
---
-- Utilizei a IA apenas para perceber porque a minha consulta estava errada.
-- A IA explicou que a coluna “medias” não existe e faltavam vírgulas.
-- A solução final foi escrita por mim.

Depois de concluíres a atividade, não te esquecas da **reflexão final**, conforme está descrito README.
