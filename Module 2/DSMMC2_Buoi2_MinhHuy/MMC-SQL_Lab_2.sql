DROP DATABASE IF EXISTS Testing_System_Db;
CREATE DATABASE IF NOT EXISTS Testing_System_Db;

USE Testing_System_Db;

CREATE TABLE IF NOT EXISTS Department (
    DepartmentID TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS `Position` (
    PositionID INT PRIMARY KEY AUTO_INCREMENT,
    PositionName ENUM("Dev", "Test", "Scrum Master", "PM", "CEO")
);

CREATE TABLE IF NOT EXISTS `Account` (
    AccountID TINYINT UNSIGNED NOT NULL PRIMARY KEY,
    Email VARCHAR(50),
    Username VARCHAR(50),
    FullName NVARCHAR(50),
    DepartmentID INT,
    PositionID INT,
    CreateDate DATETIME
    
);

CREATE TABLE IF NOT EXISTS `Group` (
    GroupID TINYINT UNSIGNED NOT NULL PRIMARY KEY,
    GroupName VARCHAR(50),
    CreatorID INT,
    CreateDate DATETIME
);

CREATE TABLE IF NOT EXISTS GroupAccount (
    GroupID TINYINT UNSIGNED NOT NULL,
    AccountID TINYINT UNSIGNED NOT NULL,
    JoinDate DATETIME DEFAULT NOW(),
    PRIMARY KEY(GroupID, AccountID),
    FOREIGN KEY(GroupID) REFERENCES `Group` (GroupID),
    FOREIGN KEY(AccountID) REFERENCES `Account` (AccountID)
);

CREATE TABLE IF NOT EXISTS TypeQuestion (
    TypeID INT PRIMARY KEY AUTO_INCREMENT,
    TypeName VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS CategoryQuestion (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Question (
    QuestionID INT PRIMARY KEY AUTO_INCREMENT,
    Content VARCHAR(255),
    CategoryID INT,
    TypeID INT,
    CreatorID INT,
    CreateDate DATETIME
);

CREATE TABLE IF NOT EXISTS Exam (
    ExamID INT PRIMARY KEY AUTO_INCREMENT,
    Code VARCHAR(50),
    Title VARCHAR(50),
    CategoryID INT,
    Duration INT,
    CreatorID INT,
    CreateDate DATETIME
);

CREATE TABLE IF NOT EXISTS ExamQuestion (ExamID INT, QuestionID INT);

INSERT INTO
    Department (DepartmentID, DepartmentName)
VALUES (1, 'Sale'),
    (2, 'Marketing'),
    (3, 'Accounting'),
    (4, 'IT'),
    (5, "HR");

INSERT INTO
    `Position` (PositionID, PositionName)
VALUES (1, 'Dev'),
    (2, 'Test'),
    (3, 'Scrum Master'),
    (4, 'PM'),
    (5, 'CEO');

INSERT INTO
    `Account` (
        AccountID,
        Email,
        Username,
        FullName,
        DepartmentID,
        PositionID,
        CreateDate
    )
VALUES (
        1,
        'example1@email.com',
        "example1",
        'Example 1',
        1,
        1,
        '2021-01-01 00:00:00'
    ),
    (
        2,
        'example2@email.com',
        "example2",
        'Example 2',
        2,
        2,
        '2021-01-01 00:00:00'
    ),
    (
        3,
        'example3@email.com',
        "example3",
        'Example 3',
        3,
        3,
        '2021-01-01 00:00:00'
    ),
    (
        4,
        'example4@email.com',
        "example4",
        'Example 4',
        4,
        4,
        '2021-01-01 00:00:00'
    ),
    (
        5,
        'example5@email.com',
        "example5",
        'Example 5',
        5,
        5,
        '2021-01-01 00:00:00'
    );

INSERT INTO
    `Group` (
        GroupID,
        GroupName,
        CreatorID,
        CreateDate
    )
VALUES (
        1,
        'Group 1',
        1,
        '2021-01-01 00:00:00'
    ),
    (
        2,
        'Group 2',
        2,
        '2021-01-01 00:00:00'
    ),
    (
        3,
        'Group 3',
        3,
        '2021-01-01 00:00:00'
    ),
    (
        4,
        'Group 4',
        4,
        '2021-01-01 00:00:00'
    ),
    (
        5,
        'Group 5',
        5,
        '2021-01-01 00:00:00'
    );

INSERT INTO
    GroupAccount (GroupID, AccountID, JoinDate)
VALUES (1, 1, '2021-01-01 00:00:00'),
    (2, 2, '2021-01-01 00:00:00'),
    (3, 3, '2021-01-01 00:00:00'),
    (4, 4, '2021-01-01 00:00:00'),
    (5, 5, '2021-01-01 00:00:00');

INSERT INTO
    TypeQuestion (TypeID, TypeName)
VALUES	(1, 'Essay'),
    (2, 'Multiple-Choice'),
    (3, 'Yes/No'),
    (4, 'Fill-in'),
    (5, 'Other');

INSERT INTO
    CategoryQuestion (CategoryID, CategoryName)
VALUES (1, 'Java'),
    (2, 'C#'),
    (3, 'SQL'),
    (4, 'Python'),
    (5, 'Ruby');

INSERT INTO
    Question (
        QuestionID,
        Content,
        CategoryID,
        TypeID,
        CreatorID,
        CreateDate
    )
VALUES (
        1,
        'Question 1',
        1,
        1,
        1,
        '2021-01-01 00:00:00'
    ),
    (
        2,
        'Question 2',
        2,
        2,
        2,
        '2021-01-01 00:00:00'
    ),
    (
        3,
        'Question 3',
        3,
        3,
        3,
        '2021-01-01 00:00:00'
    ),
    (
        4,
        'Question 4',
        4,
        4,
        4,
        '2021-01-01 00:00:00'
    ),
    (
        5,
        'Question 5',
        5,
        5,
        5,
        '2021-01-01 00:00:00'
    );