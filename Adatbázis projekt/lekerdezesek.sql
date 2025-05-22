Hány detektív van összesen?
SELECT COUNT(*) AS detective_count FROM detectives;

Hány csoporttag van?
SELECT COUNT(*) AS member_count FROM members;

Hány kérdés szerepel az adatbázisban?
SELECT COUNT(*) AS question_count FROM questions;

Hány válasz született eddig összesen?
SELECT COUNT(*) AS answer_count FROM answers;

Holmes válaszai az első kérdésre
SELECT m.name AS member, q.text AS question, a.answer
FROM answers a
JOIN members m ON a.member_id = m.member_id
JOIN questions q ON a.question_id = q.question_id
JOIN detectives d ON a.detective_id = d.detective_id
WHERE d.name = 'Holmes' AND q.text = 'Mit csináltál az incidens idején?';

Ki válaszolta azt, hogy "A konyhában voltam."?
SELECT m.name AS member_name, d.name AS detective_name, q.text AS question_text
FROM answers a
JOIN members m ON a.member_id = m.member_id
JOIN detectives d ON a.detective_id = d.detective_id
JOIN questions q ON a.question_id = q.question_id
WHERE a.answer = 'A konyhában voltam.';
