-- Objetivo 1
SELECT Nome, Ano FROM Filmes;

-- Objetivo 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

-- Objetivo 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Objetivo 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- Objetivo 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

-- Objetivo 6
SELECT Nome, Ano, Duracao  FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Objetivo 7
SELECT Ano, COUNT(*) AS QtdeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC;

-- Objetivo 8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

-- Objetivo 9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Objetivo 10
SELECT F.Nome AS NomeFilme, G.Genero AS Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id;

-- Objetivo 11
SELECT F.Nome AS NomeFilme, G.Genero AS Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

-- Objetivo 12
SELECT F.Nome AS NomeFilme, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id