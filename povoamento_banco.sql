INSERT INTO ESTUDANTE (matricula, cpf, nome_completo, email) VALUES
('555001', '111.111.111-11', 'Vinícius Garcia de Lima Ferreira', 'vinicius@ufc.br'),
('555002', '222.222.222-22', 'Carlos Eduardo Silva Andrade', 'cadu@ufc.br'),
('555003', '333.333.333-33', 'Lucas Gomes', 'lucas@ufc.br'),
('555004', '444.444.444-44', 'Mariana Silva', 'mariana@ufc.br'),
('555005', '555.555.555-55', 'João Marcos', 'joao@ufc.br'),
('555006', '666.666.666-66', 'Beatriz Costa', 'bia@ufc.br'),
('555007', '777.777.777-77', 'Felipe Santos', 'felipe@ufc.br'),
('555008', '888.888.888-88', 'Camila Rocha', 'camila@ufc.br'),
('555009', '999.999.999-99', 'Thiago Lima', 'thiago@ufc.br'),
('555010', '101.101.101-10', 'Amanda Oliveira', 'amanda@ufc.br'),
('M001', '001.001.001-01', 'Pedro Alves', 'pedro@ufc.br'),
('M002', '002.002.002-02', 'Laura Mendes', 'laura@ufc.br'),
('M003', '003.003.003-03', 'Gabriel Costa', 'gabriel@ufc.br'),
('M004', '004.004.004-04', 'Julia Rocha', 'julia@ufc.br'),
('M005', '005.005.005-05', 'Matheus Ribeiro', 'matheus@ufc.br'),
('M006', '006.006.006-06', 'Sofia Martins', 'sofia@ufc.br'),
('M007', '007.007.007-07', 'Rafael Carvalho', 'rafael@ufc.br'),
('M008', '008.008.008-08', 'Leticia Barbosa', 'leticia@ufc.br'),
('M009', '009.009.009-09', 'Diego Castro', 'diego@ufc.br'),
('M010', '010.010.010-10', 'Bruno Correia', 'bruno@ufc.br');

INSERT INTO MENTOR (matricula, ira, semestre_atual, especialidade) VALUES
('555001', 9.5, 4, 'Redes de Computadores'),
('555002', 9.2, 4, 'Banco de Dados'),
('555003', 8.8, 3, 'Sistemas Operacionais'),
('555004', 9.0, 5, 'Algoritmos'),
('555005', 8.5, 6, 'Segurança da Informação'),
('555006', 9.1, 4, 'Cálculo'),
('555007', 8.9, 3, 'Física'),
('555008', 9.4, 5, 'Interação Humano-Computador'),
('555009', 8.7, 4, 'Engenharia de Software'),
('555010', 9.6, 6, 'Inteligência Artificial');

INSERT INTO MENTORADO (matricula) VALUES
('M001'), ('M002'), ('M003'), ('M004'), ('M005'),
('M006'), ('M007'), ('M008'), ('M009'), ('M010');

INSERT INTO DISCIPLINA (codigo, nome, carga_horaria) VALUES
('RC001', 'Fundamentos de Redes', 64), 
('FBD001', 'Fundamentos de Banco de Dados', 64),
('SO001', 'Sistemas Operacionais', 64), 
('ALG001', 'Algoritmos e Programação', 64),
('SEG001', 'Segurança da Informação', 64),
('MAT001', 'Cálculo I', 96),
('FIS001', 'Física Geral I', 64),
('IHC001', 'Interação Humano-Computador', 64),
('ENG001', 'Engenharia de Software I', 64),
('IA001', 'Inteligência Artificial', 64);

INSERT INTO LOCAL (nome, tipo_acesso) VALUES
('Laboratório 1', 'Físico'), 
('Laboratório 2', 'Físico'),
('Sala 3', 'Físico'), 
('Sala de Estudos', 'Físico'),
('Google Meet Redes', 'Virtual'),
('Zoom Banco de Dados', 'Virtual'),
('Laboratório de Hardware', 'Físico'),
('Teams Algoritmos', 'Virtual'),
('Auditório Principal', 'Físico'),
('Discord Mentoria', 'Virtual');

INSERT INTO MATERIAL (link_referencia) VALUES
('link.ufc.br/resumo-rc001'), 
('link.ufc.br/lista-sql'),
('link.ufc.br/slides-threads'), 
('link.ufc.br/intro-python'),
('link.ufc.br/guia-cripto'), 
('link.ufc.br/tabela-derivadas'),
('link.ufc.br/leis-newton'), 
('link.ufc.br/heuristicas-nielsen'),
('link.ufc.br/modelos-ageis'), 
('link.ufc.br/redes-neurais');

INSERT INTO GRUPO (nome, semestre) VALUES
('Grupo Alpha', '2026.1'), 
('Grupo Beta', '2026.1'), 
('Grupo Gamma', '2026.1'),
('Grupo Delta', '2026.1'),
('Grupo Epsilon', '2026.1'),
('Grupo Zeta', '2026.1'),
('Grupo Eta', '2026.1'),
('Grupo Theta', '2026.1'),
('Grupo Iota', '2026.1'),
('Grupo Kappa', '2026.1');

INSERT INTO DISPONIBILIDADE (matricula_mentor, dia_semana, horario_inicio, horario_fim) VALUES
('555001', 'Segunda-feira', '14:00', '16:00'),
('555002', 'Terça-feira', '10:00', '12:00'),
('555003', 'Quarta-feira', '16:00', '18:00'),
('555004', 'Quinta-feira', '08:00', '10:00'),
('555005', 'Sexta-feira', '14:00', '16:00'),
('555006', 'Segunda-feira', '10:00', '12:00'),
('555007', 'Terça-feira', '14:00', '16:00'),
('555008', 'Quarta-feira', '08:00', '10:00'),
('555009', 'Quinta-feira', '16:00', '18:00'),
('555010', 'Sexta-feira', '10:00', '12:00');

INSERT INTO SESSAO (matricula_mentor, codigo_disciplina, id_local, id_grupo, data, horario, presenca_mentor, nota, comentario) VALUES
('555001', 'RC001', 1, 1, '2026-06-01', '14:00', TRUE, 9.5, 'Sessão excelente.'),
('555002', 'FBD001', 2, 2, '2026-06-02', '10:00', TRUE, 10.0, 'Dúvidas resolvidas.'),
('555003', 'SO001', 3, 3, '2026-06-03', '16:00', TRUE, 8.0, 'Boa revisão.'),
('555004', 'ALG001', 4, 4, '2026-06-04', '08:00', FALSE, NULL, 'Mentor remarcou.'),
('555005', 'SEG001', 5, 5, '2026-06-05', '14:00', TRUE, 9.0, 'Ajudou muito.'),
('555006', 'MAT001', 6, 6, '2026-06-06', '10:00', TRUE, 8.5, 'Modelagem ER.'),
('555007', 'FIS001', 7, 7, '2026-06-07', '14:00', TRUE, 7.5, 'Bem explicado.'),
('555008', 'IHC001', 8, 8, '2026-06-08', '08:00', TRUE, 10.0, 'Entendi perfeitamente.'),
('555009', 'ENG001', 9, 9, '2026-06-09', '16:00', TRUE, 9.0, 'Prática legal.'),
('555010', 'IA001', 10, 10, '2026-06-10', '10:00', TRUE, 8.0, 'Sessão produtiva.');

INSERT INTO GRUPO_MENTORADO (id_grupo, matricula_mentorado) VALUES
(1, 'M001'), (2, 'M002'), (3, 'M003'), (4, 'M004'), (5, 'M005'),
(6, 'M006'), (7, 'M007'), (8, 'M008'), (9, 'M009'), (10, 'M010');

INSERT INTO PRESENCA_SESSAO (id_sessao, matricula_mentorado, presenca) VALUES
(1, 'M001', TRUE), (2, 'M002', TRUE), (3, 'M003', FALSE), 
(4, 'M004', TRUE), (5, 'M005', TRUE), (6, 'M006', FALSE), 
(7, 'M007', TRUE), (8, 'M008', TRUE), (9, 'M009', TRUE), 
(10, 'M010', FALSE);

INSERT INTO MENTOR_ENSINA (matricula_mentor, codigo_disciplina) VALUES
('555001', 'RC001'), ('555002', 'FBD001'), ('555003', 'SO001'), 
('555004', 'ALG001'), ('555005', 'SEG001'), ('555006', 'MAT001'), 
('555007', 'FIS001'), ('555008', 'IHC001'), ('555009', 'ENG001'), 
('555010', 'IA001');

INSERT INTO SESSAO_MATERIAL (id_sessao, id_material) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);