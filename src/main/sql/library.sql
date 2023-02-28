CREATE DATABASE danil_db;

CREATE TABLE Person (
            id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
            name VARCHAR(100) UNIQUE,
            year INT NOT NULL CHECK ( year > 1000 AND year <= EXTRACT(year FROM now()))
    );

INSERT INTO Person (name, year)
VALUES ('Тарасов Максим Маркович', 1970),
       ('Мальцев Лев Тихонович', 1960),
       ('Булгаков Дмитрий Никитич', 1989),
       ('Новикова Ульяна Алиевна', 1944),
       ('Барсуков Сергей Леонидович', 1955),
       ('Широкова Анастасия Вячеславовна', 1995),
       ('Чистякова Александра Павловна', 1932),
       ('Малышев Никита Александрович', 1933),
       ('Сидорова Яна Семёновна', 1965)
;

CREATE TABLE Book (
                id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
                person_id INT REFERENCES Person(id) ON DELETE SET NULL,
                title VARCHAR(100) NOT NULL,
                author VARCHAR(100) NOT NULL,
                year INT NOT NULL CHECK ( year > 1000 AND year <= EXTRACT(year FROM now()))
    );

INSERT INTO Book (title, author, year)
VALUES ('451° по Фаренгейту', 'Рэй Брэдбери', 2008),
       ('Михаил Булгаков', 'Мастер и Маргарита', 1940),
       ('Михаил Булгаков', 'Собачье сердце', 1925),
       ('Николай Гоголь', 'Мёртвые души',1842 ),
       ('Евгений Петров', 'Двенадцать стульев',1928 ),
       ('Александр Дюма', 'Граф Монте-Кристо',1844),
       ('Эрих Мария Ремарк', 'Три товарища',1936 );
