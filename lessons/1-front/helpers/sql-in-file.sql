DROP TABLE IF EXISTS example;
CREATE TABLE example(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100)
);

INSERT INTO example VALUES
(DEFAULT, 'yossi'),
(DEFAULT, 'avi'),
(DEFAULT, 'moshe');

SELECT *
FROM example;

DROP TABLE example;