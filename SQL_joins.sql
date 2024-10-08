USE BibliotecaDB;
-- > Exercício INNER JOIN - 1.0
SELECT nome, data_emprestimo, data_devolucao, titulo FROM membros as m
INNER JOIN  emprestimos AS e ON m.id_membro = e.id_membro
INNER JOIN livros as l ON e.id_livro = l.id_livro;

SELECT * FROM livros;
SELECT * FROM membros;
SELECT * FROM emprestimos;
SELECT * FROM autores;

-- > Exercício INNER JOIN - 2.0
SELECT nome, titulo, data_emprestimo  FROM autores as a
INNER JOIN livros as l ON a.id_autor = l.id_autor
INNER JOIN emprestimos as e ON l.id_autor = e.id_livro;



SELECT * FROM autores;
SELECT * FROM emprestimos;

-- > RIGHT JOIN
-- > todos os registros da segunda tabela (direita) como return (mesmo que não haja similaridade na primeira tabela (esquerda)),
-- > + as similaridades da primeira (esquerda)
-- > NULL

-- > Exercício RIGH JOIN - 1.0
SELECT nome FROM emprestimos AS e
RIGHT JOIN membros AS m
ON m.id_membro = e.id_membro
WHERE e.id_membro IS NULL;	

-- > Exercício LEFT JOIN - 1.0
-- > LEFT JOIN
SELECT * FROM membros AS m
LEFT JOIN emprestimos AS e
ON m.id_membro = e.id_membro
WHERE e.id_membro IS NULL;

-- > Exercício RIGHT JOIN - 2.0

SELECT titulo, nome, data_emprestimo
FROM livros AS l
LEFT JOIN emprestimos AS e
ON l.id_livro = e.id_livro
INNER JOIN autores AS a
ON l.id_autor = a.id_autor
WHERE e.id_livro IS NULL;


-- > Exercicio UNION JOIN - 1.0
SELECT l.titulo, a.nome FROM livros AS l
LEFT JOIN autores AS a ON l.id_autor = a.id_autor
UNION
SELECT l.titulo, a.nome FROM livros AS l
RIGHT JOIN autores AS a ON l.id_autor = a.id_autor
WHERE titulo IS NULL;

-- > Exercicio UNION JOIN - 2.0
SELECT * FROM membros AS m
LEFT JOIN emprestimos AS e ON m.id_membro = e.id_membro
LEFT JOIN livros AS l ON l.id_livro = e.id_livro;





  



 







