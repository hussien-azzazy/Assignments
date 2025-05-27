CREATE DATABASE Library_Management_System;

USE Library_Management_System;

CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    author_id INT,
    publish_date DATE,
    genre VARCHAR(100),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    loan_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

INSERT INTO Authors (first_name, last_name) VALUES 
('William', 'Shakespeare'),
('Jeff', 'Kinney'),
('James', 'Clear'),
('Robert', 'Kiyosaki'),
('J.K.', 'Rowling');

INSERT INTO Books (title, author_id, publish_date, genre) VALUES 
('Romeo and Juliet', 1, '1597-01-01', 'Romance'),
('Diary of a Wimpy Kid', 2, '2007-04-01', 'Fiction'),
('Atomic Habits', 3, '2018-10-16', 'Self-Help'),
('Rich Dad Poor Dad', 4, '1997-04-01', 'Finance'),
('Harry Potter and the Sorcerer\'s Stone', 5, '1997-06-26', 'Fantasy');

INSERT INTO Members (first_name, last_name, email, phone) VALUES 
('Hussien', 'Azzazy', 'hussienazzazy@gmail.com', '01067208511'),
('Mohamed', 'Diaa', 'diaa@gmail.com', '01226578901'),
('Moustafa', 'Mohamed', 'moustafa@gmail,com', '01223478901'),
('Ahmed', 'Khaled', 'ahmed@gmail.com', '01063478901'),
('Ahmed', 'Ramzy', 'ramzy@gmail.com', '01113456892');

INSERT INTO Loans (book_id, member_id, loan_date, return_date) VALUES 
(1, 1, '2025-05-01', '2025-06-15'),
(2, 2, '2025-05-10', '2025-06-20'),
(3, 3, '2025-05-15', '2025-07-12'),
(4, 4, '2025-05-22', '2025-08-10'),
(5, 5, '2025-05-27', '2025-08-15');

show databases;
show tables;
select * from Authors;
select * from Books;
select * from Members;
select * from Loans;

INSERT INTO Books (title, author_id, publish_date, genre) VALUES ('New Book', 1, '2020-01-01', 'Drama');
select * from Books;

SELECT title FROM Books WHERE author_id = 1;

UPDATE Loans SET return_date = '2025-06-10' WHERE loan_id = 1;
select * from Loans;

DELETE FROM Loans WHERE member_id = 5;
DELETE From Members WHERE member_id =5;
select * from Loans;
select * from Members;