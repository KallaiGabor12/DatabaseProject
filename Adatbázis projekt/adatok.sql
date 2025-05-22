-- Csoporttagok beszúrása
INSERT INTO members (name, height_cm, hair_color, eye_color, age, is_traitor) VALUES
('Anna', 165, 'szőke', 'kék', 28, FALSE),
('Béla', 180, 'barna', 'barna', 32, FALSE),
('Csaba', 175, 'fekete', 'zöld', 40, TRUE),
('Dóra', 160, 'vörös', 'barna', 25, FALSE);

-- Detektívek beszúrása
INSERT INTO detectives (name, experience_years, birth_year) VALUES
('Holmes', 20, 1975),
('Watson', 10, 1985),
('Lestrade', 15, 1980);

-- Kérdések beszúrása
INSERT INTO questions (text) VALUES
('Mit csináltál az incidens idején?'),
('Kivel voltál az incidens előtt?'),
('Szerinted ki az áruló?');

-- Holmes válaszai az első kérdésre
INSERT INTO answers (detective_id, member_id, question_id, answer) VALUES
(1, 1, 1, 'A szobámban voltam.'),
(1, 2, 1, 'A kertben sétáltam.'),
(1, 3, 1, 'A konyhában voltam.'),
(1, 4, 1, 'Aludtam a szobámban.');

-- Marple detektív: mindenkitől egy válasz a "Milyen szokatlan dolgot észleltél?" kérdésre (id=4)
INSERT INTO answers (detective_id, member_id, question_id, answer) VALUES
(4, 1, 4, 'Valaki halkan telefonált a folyosón.'),
(4, 2, 4, 'Eltűnt egy pohár a konyhából.'),
(4, 3, 4, 'Zárva volt az egyik ajtó.'),
(4, 4, 4, 'Valami csörömpölt az éjjel.'),
(4, 5, 4, 'Az egyik laptop be volt kapcsolva.'),
(4, 6, 4, 'Nyitva volt az ablak, pedig senki nem nyitotta ki.'),
(4, 7, 4, 'A lámpák villogtak.');

-- Lestrade detektív: válaszok a "Volt olyan, aki idegesnek tűnt?" kérdésre (id=5)
INSERT INTO answers (detective_id, member_id, question_id, answer) VALUES
(3, 1, 5, 'Csaba idegesnek tűnt.'),
(3, 2, 5, 'Senki nem tűnt idegesnek.'),
(3, 3, 5, 'Nem tudom, nem figyeltem.'),
(3, 4, 5, 'Béla zaklatottnak tűnt.'),
(3, 5, 5, 'Erik nem volt önmaga.'),
(3, 6, 5, 'Nem vettem észre semmi különöset.'),
(3, 7, 5, 'Gábor furcsán viselkedett.');