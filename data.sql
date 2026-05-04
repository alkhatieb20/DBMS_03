-- Authors
INSERT INTO author VALUES (1, 'Date',    'C. J.');
INSERT INTO author VALUES (2, 'Ramakrishnan', 'Raghu');
INSERT INTO author VALUES (3, 'Gehrke',  'Johannes');

-- Books
INSERT INTO book VALUES ('978-0-201-96426-4', 'An Introduction to Database Systems', 2004);
INSERT INTO book VALUES ('978-0-072-46563-1', 'Database Management Systems',         2002);
INSERT INTO book VALUES ('978-0-13-110362-7', 'The C Programming Language',          1988);

-- Authorship
INSERT INTO writes VALUES (1, '978-0-201-96426-4');
INSERT INTO writes VALUES (2, '978-0-072-46563-1');
INSERT INTO writes VALUES (3, '978-0-072-46563-1');

-- Copies
INSERT INTO copy VALUES (1, '978-0-201-96426-4', 'A-01');
INSERT INTO copy VALUES (2, '978-0-201-96426-4', 'A-02');
INSERT INTO copy VALUES (3, '978-0-072-46563-1', 'B-07');
INSERT INTO copy VALUES (4, '978-0-13-110362-7', 'C-12');

-- Members
INSERT INTO member VALUES (101, 'Müller, Anna',     'a.mueller@stud.thga.de',     '2025-10-01');
INSERT INTO member VALUES (102, 'Schneider, Björn', 'b.schneider@stud.thga.de',   '2025-10-01');
INSERT INTO member VALUES (103, 'Koch, Clara',      'c.koch@stud.thga.de',        '2026-04-01');

-- Loans  (Koch has never borrowed anything)
INSERT INTO loan VALUES (1, 101, 1, '2026-04-09', '2026-04-23');
INSERT INTO loan VALUES (2, 102, 3, '2026-04-09', NULL);
INSERT INTO loan VALUES (3, 101, 2, '2026-04-16', NULL);
