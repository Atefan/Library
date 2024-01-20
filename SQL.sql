-- Drop the database if it exists
DROP DATABASE IF EXISTS Library;

-- Create the Library database
CREATE DATABASE Library;

-- Use the Library database
USE Library;

-- Create the Book table
CREATE TABLE Book (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL UNIQUE,
    author VARCHAR(100),
    published_date DATE,
    text TEXT
);

-- Insert some sample data into the Book table
INSERT INTO Book(name, author, published_date, text)
VALUES
    ('Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', '1997-06-26', 'The magical journey of a young wizard.'),
    ('To Kill a Mockingbird', 'Harper Lee', '1960-07-11', 'A classic novel exploring racial injustice.'),
    ('The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10', 'The roaring twenties and the American Dream.'),
    ('The Catcher in the Rye', 'J.D. Salinger', '1951-07-16', 'A coming-of-age novel with a rebellious protagonist.'),
    ('The Hobbit', 'J.R.R. Tolkien', '1937-09-21', 'Bilbo Baggins\' epic adventure in Middle-earth.'),
    ('1984', 'George Orwell', '1949-06-08', 'A dystopian vision of a totalitarian future.'),
    ('The Da Vinci Code', 'Dan Brown', '2003-03-18', 'A thrilling mystery involving art and religion.'),
    ('The Lord of the Rings', 'J.R.R. Tolkien', '1954-07-29', 'The epic fantasy trilogy of Middle-earth.'),
    ('Pride and Prejudice', 'Jane Austen', '1813-01-28', 'A classic romance novel with wit and humor.'),
    ('The Hunger Games', 'Suzanne Collins', '2008-09-14', 'A dystopian series where teenagers fight for survival.');

-- Queries that don't require input data

-- Get all books
SELECT * FROM Book;

-- Get all authors
SELECT DISTINCT author FROM Book;

-- Get books published after the year 2000
SELECT * FROM Book WHERE YEAR(published_date) > 2000;

-- Get the total number of books
SELECT COUNT(*) AS total_books FROM Book;

-- Get books sorted by publication date in descending order
SELECT * FROM Book ORDER BY published_date DESC;
