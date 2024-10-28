-- 1 - Buscar o nome e ano dos filmes
SELECT
	Nome,
	Ano
FROM Filmes



-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
Nome,
Ano
FROM Filmes
ORDER BY ANO


-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT
*
FROM Filmes
WHERE Nome = 'De volta para o Futuro'


-- 4 - Buscar os filmes lançados em 1997
SELECT
*
FROM Filmes
WHERE Ano = 1997


-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT
*
FROM Filmes
WHERE ANO BETWEEN 2000 AND 2024


-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT
*
FROM Filmes
WHERE Duracao BETWEEN 101 AND 150


-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
Ano,
COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC


-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
PrimeiroNome,
UltimoNome
FROM Atores
WHERE Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
PrimeiroNome,
UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


-- 10 - Buscar o nome do filme e o gênero
SELECT
F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.ID = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.ID = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'


-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
F.Nome,
A.PrimeiroNome,
A.UltimoNome,
EF.Papel
FROM Atores A
INNER JOIN ElencoFilme EF ON A.Id = EF.IdAtor
INNER JOIN Filmes F ON EF.IdFilme = F.Id