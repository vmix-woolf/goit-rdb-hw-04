CREATE DATABASE IF NOT EXISTS LibraryManagement;
USE LibraryManagement;

-- Таблиця авторів
CREATE TABLE authors (
     author_id INT AUTO_INCREMENT PRIMARY KEY,
     author_name VARCHAR(255) NOT NULL
);

-- Таблиця жанрів
CREATE TABLE genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL
);

-- Таблиця книг
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    publication_year YEAR NOT NULL,
    author_id INT,
    genre_id INT,
    CONSTRAINT fk_books_authors FOREIGN KEY (author_id)
       REFERENCES authors(author_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_books_genres FOREIGN KEY (genre_id)
       REFERENCES genres(genre_id) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Таблиця користувачів
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

-- Таблиця позичених книг
CREATE TABLE borrowed_books (
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    user_id INT,
    borrow_date DATE NOT NULL,
    return_date DATE,
    CONSTRAINT fk_borrow_books FOREIGN KEY (book_id)
        REFERENCES books(book_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_borrow_users FOREIGN KEY (user_id)
        REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
);
