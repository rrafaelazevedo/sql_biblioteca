START TRANSACTION;

INSERT INTO Membros (id_membro, nome, data_adesao) VALUES (4, 'Membro D', '2024-01-01');
INSERT INTO Emprestimos (id_emprestimo, id_membro, id_livro, data_emprestimo, data_devolucao)
VALUES (4, 4, 1, '2024-07-20', '2024-07-28');

COMMIT;

-- Se houver erro:
ROLLBACK;

START TRANSACTION;

DELETE FROM Emprestimos WHERE id_livro = 1;
DELETE FROM Livros WHERE id_livro = 1;

COMMIT;

-- Se houver erro:
ROLLBACK;
