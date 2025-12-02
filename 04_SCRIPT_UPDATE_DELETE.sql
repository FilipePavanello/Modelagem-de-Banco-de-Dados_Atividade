-- SCRIPT UPDATE - alterar nome do animal
UPDATE animal
SET nome = 'Zeus Azul'
where nome = 'Zeus';

-- SCRIPT UPDATE - alterar preco de venda do produto
UPDATE produto
SET preco_venda = 99.90 
where descricao = 'Ração Premium Cães 1kg'
;

-- SCRIPT UPDATE - alterar status do atendimento
UPDATE atendimento
SET status_atendimento = 'Em tratamento'
where status_atendimento = 'Concluído'
;


-- SCRIPT DELETE  - deletar produto
DELETE FROM produto
WHERE id_produto = 1;

-- SCRIPT DELETE  - atendimento de um veterinario
DELETE FROM atendimento
WHERE id_veterinario = 5;

-- SCRIPT DELETE  - deletar veterinario
DELETE FROM veterinario
WHERE id_veterinario = 5;

