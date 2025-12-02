-- INSERINDO DADOS NAS TRABELAS -- 

-- INSERINDO DADOS ENTIDADE TUTOR
INSERT INTO tutor (id_tutor, nome, cpf, telefone)
VALUES
(1, 'Carlos Almeida', '12345678910', '(11) 99999-1234'),
(2, 'Juliana Ribeiro', '98765432100', '(21) 98888-4321'),
(3, 'Fernanda Martins', '32178965422', '(41) 97777-2211'),
(4, 'Lucas Tavares', '65432198733', '(31) 96666-1456'),
(5, 'Mariana Lopes', '15975348677', '(47) 92222-5544'),
(6, 'Rodrigo Pires', '25814736955', '(51) 95555-9988'),
(7, 'Patrícia Costa', '74185296344', '(61) 93333-6677'),
(8, 'Rafael Vieira', '36925814766', '(62) 91111-3344'),
(9, 'Bianca Moreira', '85236914799', '(27) 94444-7788'),
(10, 'Eduardo Santos', '74136925811', '(19) 98888-1100')
;

-- INSERINDO DADOS ENTIDADE ANIMAL
INSERT INTO animal (id_animal, id_tutor, nome, especie, idade)
VALUES
(1, 1, 'Thor', 'Cachorro', 4),
(2, 2, 'Mimi', 'Gato', 2),
(3, 3, 'Luna', 'Cachorro', 1),
(4, 4, 'Zeus', 'Cachorro', 6),
(5, 5, 'Nina', 'Gato', 3),
(6, 6, 'Bolota', 'Hamster', 1),
(7, 7, 'Mel', 'Cachorro', 5),
(8, 8, 'Bidu', 'Cachorro', 2),
(9, 9, 'Amora', 'Gato', 4),
(10, 10, 'Pingo', 'Coelho', 2)
;

INSERT INTO veterinario (id_veterinario, nome, cpf, crmv)
VALUES
(1, 'Dr. André Moretti', '12345678910', 'CRMV-SP 45678'),
(2, 'Dra. Luana Ferreira', '98765432100', 'CRMV-RJ 39211'),
(3, 'Dr. Gustavo Nogueira', '32178965422', 'CRMV-PR 28944'),
(4, 'Dra. Renata Almeida', '65432198733', 'CRMV-MG 50312'),
(5, 'Dr. Felipe Rocha', '15975348677', 'CRMV-SC 17489')
;

INSERT INTO atendimento (id_atendimento, id_animal, id_veterinario, data, diagnostico, status_atendimento)
VALUES
(1, 1, 2, '2025-01-10', 'Otite aguda', 'Concluído'),
(2, 2, 1, '2025-01-15', 'Vômitos e diarreia', 'Concluído'),
(3, 3, 4, '2025-02-01', 'Vacinação anual', 'Concluído'),
(4, 4, 5, '2025-02-05', 'Alergia cutânea', 'Em tratamento'),
(5, 5, 3, '2025-02-10', 'Conjuntivite', 'Concluído'),
(6, 6, 1, '2025-02-18', 'Avaliação geral', 'Concluído'),
(7, 7, 2, '2025-02-20', 'Infecção urinária', 'Em tratamento'),
(8, 8, 5, '2025-02-25', 'Vacinação anual', 'Concluído'),
(9, 9, 4, '2025-03-01', 'Obesidade — orientação nutricional', 'Acompanhamento'),
(10, 10, 3, '2025-03-05', 'Ferimento na pata', 'Em tratamento')
;

INSERT INTO agendamento (id_agendamento, id_animal, id_veterinario, servico)
VALUES
(1, 1, 2, 'Consulta clínica'),
(2, 2, 1, 'Vacinação'),
(3, 3, 4, 'Retorno'),
(4, 4, 5, 'Exame de sangue'),
(5, 5, 3, 'Consulta dermatológica'),
(6, 6, 1, 'Avaliação geral'),
(7, 7, 2, 'Ultrassom'),
(8, 8, 5, 'Vacinação'),
(9, 9, 4, 'Controle de peso'),
(10, 10, 3, 'Curativo e revisão')
;

INSERT INTO servico (id_servico, descricao,tipo)
VALUES
(1, 'Consulta clínica', 'Atendimento'),
(2, 'Vacinação', 'Preventivo'),
(3, 'Retorno', 'Atendimento'),
(4, 'Exame de sangue', 'Diagnóstico'),
(5, 'Consulta dermatológica', 'Especializado'),
(6, 'Avaliação geral', 'Check-up'),
(7, 'Ultrassom', 'Diagnóstico'),
(8, 'Vacinação', 'Preventivo'),
(9, 'Controle de peso', 'Acompanhamento'),
(10, 'Curativo e revisão', 'Tratamento')
;

INSERT INTO produto (id_produto, descricao,preco_venda)
VALUES
(1, 'Ração Premium Cães 1kg', 39.90),
(2, 'Ração Premium Gatos 1kg', 42.50),
(3, 'Antipulgas Spot-On', 89.00),
(4, 'Coleira Antiparasitária', 59.90),
(5, 'Shampoo Hipoalergênico', 34.90),
(6, 'Areia Sanitária 4kg', 22.00),
(7, 'Petisco Dental Para Cães', 18.50),
(8, 'Suplemento Vitamínico', 75.00),
(9, 'Antibiótico Veterinário', 120.00),
(10, 'Brinquedo Interativo Para Gatos', 29.90)
;

