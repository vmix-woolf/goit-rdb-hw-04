-- Вставка тестових авторів
INSERT INTO authors (author_name) VALUES
    ('J.K. Rowling'),
    ('George Orwell'),
    ('Ernest Hemingway');

-- Вставка тестових жанрів
INSERT INTO genres (genre_name) VALUES
    ('Fantasy'),
    ('Dystopian'),
    ('Classic');

-- Вставка тестових книг
INSERT INTO books (title, publication_year, author_id, genre_id) VALUES
    ('Harry Potter and the Philosopher''s Stone', 1997, 1, 1),
    ('1984', 1949, 2, 2),
    ('The Old Man and the Sea', 1952, 3, 3);

-- Вставка тестових користувачів
INSERT INTO users (username, email) VALUES
    ('alice', 'alice@example.com'),
    ('bob', 'bob@example.com'),
    ('charlie', 'charlie@example.com');

-- Вставка тестових записів про позичені книги
INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
    (1, 1, '2025-09-01', '2025-09-15'),
    (2, 2, '2025-09-05', NULL),
    (3, 3, '2025-09-10', '2025-09-20');
