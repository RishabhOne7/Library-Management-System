-- 1. Database Creation
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- 2. Categories Table
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

INSERT INTO Categories (category_name) VALUES
('Fiction'),
('Non-Fiction'),
('Science'),
('History'),
('Technology'),
('Biography'),
('Self-Help'),
('Poetry'),
('Comics'),
('Philosophy');

-- 3. Books Table
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100),
    genre VARCHAR(50),
    price DECIMAL(6,2),
    published_year INT, 
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);


INSERT INTO Books (title, author, genre, price, published_year, category_id) VALUES
('The Alchemist', 'Paulo Coelho', 'Fiction', 299.00, 1988, 1),
('Sapiens', 'Yuval Noah Harari', 'History', 499.00, 2011, 4),
('Clean Code', 'Robert C. Martin', 'Technology', 799.00, 2008, 5),
('Brief History of Time', 'Stephen Hawking', 'Science', 399.00, 1988, 3),
('1984', 'George Orwell', 'Fiction', 299.00, 1949, 1),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 'Self-Help', 350.00, 1997, 7),
('Harry Potter', 'J.K. Rowling', 'Fiction', 499.00, 1997, 1),
('The Monk Who Sold His Ferrari', 'Robin Sharma', 'Self-Help', 299.00, 1999, 7),
('Thinking, Fast and Slow', 'Daniel Kahneman', 'Non-Fiction', 450.00, 2011, 2),
('Atomic Habits', 'James Clear', 'Self-Help', 399.00, 2018, 7),
('The Power of Habit', 'Charles Duhigg', 'Self-Help', 349.00, 2012, 7),
('Steve Jobs', 'Walter Isaacson', 'Biography', 499.00, 2011, 6),
('The Subtle Art of Not Giving a F*ck', 'Mark Manson', 'Self-Help', 399.00, 2016, 7),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 299.00, 1960, 1),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 299.00, 1925, 1),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 299.00, 1951, 1),
('The Intelligent Investor', 'Benjamin Graham', 'Non-Fiction', 499.00, 1949, 2),
('Meditations', 'Marcus Aurelius', 'Philosophy', 349.00, 180, 10),
('The Art of War', 'Sun Tzu', 'Philosophy', 299.00, -500, 10),
('The Road', 'Cormac McCarthy', 'Fiction', 399.00, 2006, 1),
('Thinking in Systems', 'Donella Meadows', 'Science', 399.00, 2008, 3),
('The Diary of a Young Girl', 'Anne Frank', 'Biography', 299.00, 1947, 6),
('Educated', 'Tara Westover', 'Biography', 399.00, 2018, 6),
('The Lean Startup', 'Eric Ries', 'Technology', 499.00, 2011, 5),
('Zero to One', 'Peter Thiel', 'Technology', 449.00, 2014, 5),
('The Comic Book History of Comics', 'Fred Van Lente', 'Comics', 399.00, 2012, 9),
('Becoming', 'Michelle Obama', 'Biography', 499.00, 2018, 6),
('The Outsider', 'Stephen King', 'Fiction', 399.00, 2018, 1),
('Norwegian Wood', 'Haruki Murakami', 'Fiction', 349.00, 1987, 1),
('One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Fiction', 399.00, 1967, 1),
('The Road Less Traveled', 'M. Scott Peck', 'Self-Help', 349.00, 1978, 7);

-- 4. Members Table
CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    membership_date DATE
);

INSERT INTO Members (name, email, phone, membership_date) VALUES
('Rishabh Pradhan', 'rishabh@gmail.com', '9876543210', '2025-09-22'),
('Ankit Sharma', 'ankit@gmail.com', '9876543211', '2025-01-15'),
('Priya Singh', 'priya@gmail.com', '9876543212', '2025-05-10'),
('Neha Verma', 'neha@gmail.com', '9876543213', '2025-02-20'),
('Rahul Jain', 'rahul@gmail.com', '9876543214', '2025-03-05'),
('Amit Kumar', 'amit@gmail.com', '9876543215', '2025-04-12'),
('Sneha Gupta', 'sneha@gmail.com', '9876543216', '2025-05-25'),
('Vikram Singh', 'vikram@gmail.com', '9876543217', '2025-06-18'),
('Kavita Joshi', 'kavita@gmail.com', '9876543218', '2025-07-07'),
('Manish Patel', 'manish@gmail.com', '9876543219', '2025-08-11'),
('Anjali Rao', 'anjali@gmail.com', '9876543220', '2025-08-22'),
('Saurabh Mehta', 'saurabh@gmail.com', '9876543221', '2025-09-01');

-- 5. Loans Table
CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    loan_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

INSERT INTO Loans (book_id, member_id, loan_date, return_date) VALUES
(1, 1, '2025-09-20', '2025-09-27'),
(2, 2, '2025-09-18', '2025-09-25'),
(3, 3, '2025-09-15', '2025-09-22'),
(4, 4, '2025-09-10', '2025-09-17'),
(5, 5, '2025-09-05', '2025-09-12'),
(6, 6, '2025-09-01', '2025-09-08'),
(7, 7, '2025-08-28', '2025-09-04'),
(8, 8, '2025-08-25', '2025-09-01'),
(9, 9, '2025-08-20', '2025-08-27'),
(10, 10, '2025-08-15', '2025-08-22'),
(11, 11, '2025-08-10', '2025-08-17'),
(12, 12, '2025-08-05', '2025-08-12');

-- 6. Staff Table
CREATE TABLE Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15)
);

INSERT INTO Staff (name, role, email, phone) VALUES
('Mohit Verma', 'Librarian', 'mohit@library.com', '9876543200'),
('Santosh Singh', 'Assistant Librarian', 'santosh@library.com', '9876543201'),
('Praveen Kumar', 'Library Clerk', 'praveen@library.com', '9876543202');


