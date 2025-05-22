CREATE DATABASE arulo_felderites
  DEFAULT CHARACTER SET utf8
  COLLATE utf8_hungarian_ci;

CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    height_cm INT,
    hair_color VARCHAR(50),
    eye_color VARCHAR(50),
    age INT,
    is_traitor BOOLEAN DEFAULT FALSE
);

CREATE TABLE detectives (
    detective_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    experience_years INT,
    birth_year INT
);

CREATE TABLE questions (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    text TEXT
);

CREATE TABLE answers (
    answer_id INT AUTO_INCREMENT PRIMARY KEY,
    detective_id INT,
    member_id INT,
    question_id INT,
    answer TEXT,
    FOREIGN KEY (detective_id) REFERENCES detectives(detective_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (question_id) REFERENCES questions(question_id)
);
