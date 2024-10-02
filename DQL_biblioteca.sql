SELECT * FROM Livros ORDER BY ano_publicacao ASC LIMIT 1;

SELECT * FROM Livros ORDER BY ano_publicacao DESC LIMIT 1;

SELECT COUNT(*) FROM Livros;

SELECT * FROM Livros l
JOIN Emprestimos e ON l.id_livro = e.id_livro
WHERE e.data_devolucao = '2024-07-18';

SELECT nome FROM Autores ORDER BY nome ASC;

SELECT titulo FROM Livros ORDER BY titulo DESC;
