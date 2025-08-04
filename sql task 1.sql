-- 1. Library Table
CREATE TABLE Library (
    Library_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(200)
);

-- 2. Publisher Table
CREATE TABLE Publisher (
    Publisher_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(200),
    Contact VARCHAR(20)
);

-- 3. Book Table
CREATE TABLE Book (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    ISBN VARCHAR(20),
    No_of_Copies INT,
    Library_ID INT,
    Publisher_ID INT,
    FOREIGN KEY (Library_ID) REFERENCES Library(Library_ID),
    FOREIGN KEY (Publisher_ID) REFERENCES Publisher(Publisher_ID)
);

-- 4. Member Table
CREATE TABLE Member (
    Member_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(200),
    Membership_Date DATE
);

-- 5. Staff Table
CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

-- 6. Issue Table
CREATE TABLE Issue (
    Issue_ID INT PRIMARY KEY,
    Book_ID INT,
    Member_ID INT,
    Staff_ID INT,
    Issue_Date DATE,
    Due_Date DATE,
    Return_Date DATE,
    Fine DECIMAL(10,2),
    FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID),
    FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID)
);
