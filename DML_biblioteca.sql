USE BibliotecaDB

SELECT * FROM Autores;


INSERT INTO Autores (id_autor, nome, data_nascimento) VALUES
(1, 'Autor A', '1970-01-01'),
(2, 'Autor B', '1980-05-15'),
(3, 'Autor C', '1990-12-10');

INSERT INTO Livros (id_livro, titulo, ano_publicacao, id_autor) VALUES
(1, 'Livro A', 2000, 1),
(2, 'Livro B', 2010, 2),
(3, 'Livro C', 2020, 3);

INSERT INTO Membros (id_membro, nome, data_adesao) VALUES
(1, 'Membro A', '2023-01-01'),
(2, 'Membro B', '2023-02-15'),
(3, 'Membro C', '2023-03-10');


INSERT INTO Emprestimos (id_emprestimo, id_membro, id_livro, data_emprestimo, data_devolucao) VALUES
(1, 1, 1, '2024-07-10', '2024-07-18'),
(2, 2, 2, '2024-07-12', '2024-07-20'),
(3, 3, 3, '2024-07-15', '2024-07-22');


