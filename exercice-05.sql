-- Exo 5
-- Requêtes avec jointure « many to many »

-- Exo 5.1
-- Listez tous les students avec leurs tags
SELECT *
FROM student
INNER JOIN student_tag
ON student_id = student.id
INNER JOIN tag
ON student.id = tag.id;

-- Exo 5.2
-- Listez tous les tags avec leurs students
SELECT *
FROM tag
INNER JOIN student_tag
ON tag_id = tag.id
INNER JOIN student
ON student_id = student.id;

-- Exo 5.3
-- Listez le student dont l'id est `2` avec ses tags
SELECT *
FROM student
INNER JOIN student_tag ON student_id=student.id
INNER JOIN tag WHERE student.id = 2 AND tag_id = tag.id;

-- Exo 5.4
-- Listez le tag dont l'id est `2` avec ses students
SELECT *
FROM tag
INNER JOIN student ON tag.id = 2;

