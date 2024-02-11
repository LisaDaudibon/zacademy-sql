-- Sélectionner les légumes.
SELECT *
FROM legumes;

-- Obtenir les trois premiers légumes enregistrés dans la base de données.
SELECT *
FROM legumes
LIMIT 3;

-- Obtenir toutes les couleurs uniques de légumes.
SELECT DISTINCT couleur
FROM legumes;

-- Sélectionner les animaux.
SELECT *
FROM animaux;

-- Lister tous les animaux triés par leur nombre de pattes, du plus petit au plus grand.
SELECT *
FROM animaux
ORDER BY nombre_pattes ASC;


-- Trouver le nom et la couleur des légumes préférés par un animal spécifique
SELECT l.nom, l.couleur
FROM legumes l
         JOIN animaux a ON l.tid = a.legume_prefere
WHERE a.nom = 'coccinelle';

-- Sélectionner les 5 légumes les plus fréquemment préférés par les animaux.
SELECT l.nom, COUNT(a.tid) AS nombre_animaux
FROM legumes l
         JOIN animaux a ON l.tid = a.legume_prefere
GROUP BY l.nom
ORDER BY nombre_animaux DESC
LIMIT 5;

-- Afficher les noms des animaux avec le nom de leur légume préféré.
SELECT a.nom AS animal, l.nom AS legume_prefere
FROM animaux a
         JOIN legumes l ON a.legume_prefere = l.tid
ORDER BY animal;

-- Compter le nombre d'animaux par nombre de pattes.
SELECT nombre_pattes, COUNT(*) AS nombre_animaux
FROM animaux
GROUP BY nombre_pattes
ORDER BY nombre_pattes;

-- Trouver les légumes verts préférés par des animaux ayant plus de 2 pattes.
SELECT l.nom AS legume_vert_prefere
FROM legumes l
         JOIN animaux a ON l.tid = a.legume_prefere
WHERE l.couleur = 'vert'
  AND a.nombre_pattes > 2
GROUP BY l.nom
ORDER BY l.nom;

-- Lister tous les légumes et indiquer combien d'animaux les préfèrent, y compris ceux qui ne sont pas préférés.
SELECT l.nom, COUNT(a.tid) AS nombre_animaux
FROM legumes l
         LEFT JOIN animaux a ON l.tid = a.legume_prefere
GROUP BY l.nom
ORDER BY nombre_animaux DESC;