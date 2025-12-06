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

SELECT nome idade media FROM alunos ORDER BY medias DESC;

## **4. Conta quantos alunos estão no curso 'Multimédia'.**

---

## **5. Faz um JOIN entre professores e disciplinas, listando o nome dos professores e o departamento.**

---

## **6. Mostra quantos alunos existem por curso (usar GROUP BY).**

---

## **7. Apresenta a média global das médias dos alunos, a mais alta e a mais baixa.**

---

## **8. Seleciona os alunos cuja média é superior à média geral da tabela (subconsulta).**

---

Depois de concluíres a atividade, não te esquecas da **reflexão final**, conforme está descrito README.
