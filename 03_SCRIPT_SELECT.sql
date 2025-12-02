-- SCRIPT CONSULTAS SELECT

-- SELECT SIMPLES NA TABELA TUTOR
select * from tutor

-- SELECT SIMPLES NA TABELA ANIMAL COM WHERE
select * from animal AS A
where A.especie = 'Cachorro'
;

-- SELECT SIMPLES NA TABELA VETERINARIO COM ORDER BY
select * from veterinario AS v
order by v.nome ASC
;

-- JOIN SIMPLES NA TABELA ATENDIMENTO
SELECT
    c.id_atendimento,
    c.data AS data_atendimento,
    a.nome AS nome_animal,
    a.especie,
    t.nome AS nome_tutor,
    v.nome AS nome_veterinario
    
FROM atendimento AS c
JOIN animal AS a 
    ON a.id_animal = c.id_animal
JOIN tutor AS t
    ON t.id_tutor = a.id_tutor
JOIN veterinario AS v 
    ON v.id_veterinario = c.id_veterinario;
    

