--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC

--3
SELECT Nome, Ano, Duracao FROM Filmes Where Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes Where Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes Where Ano > 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes Where Duracao BETWEEN 100 AND 150 ORDER BY Duracao ASC

--7
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

--9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10
SELECT f.Nome, g.Genero FROM Filmes f
JOIN FilmesGenero FG ON f.Id = FG.IdFilme
JOIN Generos g ON FG.IdGenero = g.Id

--11
SELECT f.Nome, g.Genero FROM Filmes f
JOIN FilmesGenero FG ON f.Id = FG.IdFilme
JOIN Generos g ON FG.IdGenero = g.Id
WHERE Genero = 'Mistério'

--12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel From Filmes f
JOIN ElencoFilme e ON f.Id = e.IdFilme
JOIN Atores a ON e.IdAtor = a.Id
