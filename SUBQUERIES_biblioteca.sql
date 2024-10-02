SELECT nome FROM Autores WHERE id_autor IN (
    SELECT id_autor FROM Livros
    WHERE ano_publicacao > (SELECT AVG(ano_publicacao) FROM Livros)
);


SELECT nome FROM Membros WHERE id_membro IN (
    SELECT id_membro FROM Emprestimos GROUP BY id_membro HAVING COUNT(id_emprestimo) > 1
);


SELECT titulo FROM Livros WHERE id_livro IN (
    SELECT id_livro FROM Emprestimos
);

SELECT titulo FROM Livros WHERE id_livro NOT IN (
    SELECT id_livro FROM Emprestimos
);

