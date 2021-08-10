USE SENAI_HROADS_MANHA;
GO

--6. Selecionar todos os personagens;
SELECT * FROM personagem;
GO

--8. Selecionar somente o nome das classes;
SELECT nomeClasse 'Nome das classes' FROM classe;
GO

--10. Realizar a contagem de quantas habilidades est�o cadastradas;
SELECT COUNT(nomeHab) FROM habilidade;
GO

--12. Selecionar todos os tipos de habilidades;
SELECT * FROM tipoHabilidade;
GO

--14. Selecionar todos os personagens e suas respectivas classes;
SELECT idPersonagem 'Id do personagem', nome 'Nome do personagem', nomeClasse 'Nome da Classe', capVida 'Capacidade de vida', capMana 'Capacidade de mana'
FROM personagem
LEFT JOIN classe
ON classe.idClasse = personagem.idClasse;
GO

--16. Selecionar todas as classes e suas respectivas habilidades;
SELECT nomeClasse AS [Nome da classe], nomeHab AS 'Nome da habilidade'
FROM classHab
LEFT JOIN classe 
ON classHab.idClasse = classe.idClasse
LEFT JOIN habilidade
on classHab.idHabilidade =habilidade.idHabilidade;
GO

--18. Selecionar todas as habilidades e suas classes (mesmo que elas n�o tenham
--correspond�ncia).

SELECT nomeHab 'Nome da habilidade', nomeClasse [Nome da classe]
FROM classHab
FULL OUTER JOIN habilidade
on classHab.idHabilidade =habilidade.idHabilidade
FULL OUTER JOIN classe 
ON classHab.idClasse = classe.idClasse;
GO