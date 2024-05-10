-- Active: 1714627898071@@127.0.0.1@3306@testing_system_db
USE Testing_System_Db;
/* Question 1 */
INSERT INTO
    Department (DepartmentName)
VALUES (N'Marketing'),
    (N'Sale'),
    (N'Bảo vệ'),
    (N'Nhân sự'),
    (N'Kỹ thuật'),
    (N'Tài chính'),
    (N'Phó giám đốc'),
    (N'Giám đốc'),
    (N'Thư kí'),
    (N'Bán hàng');
-- Add data position
INSERT INTO
    Position(PositionName)
VALUES ('Dev'),
    ('Test'),
    ('Scrum Master'),
    ('PM');
-- Add data Account
INSERT INTO
    `Account` (
        Email,
        Username,
        FullName,
        DepartmentID,
        PositionID,
        CreateDate
    )
VALUES (
        'haidang29productions@gmail.com',
        'dangblack',
        'Nguyễn hải Đăng',
        '5',
        '1',
        '2020-03-05'
    ),
    (
        'account1@gmail.com',
        'quanganh',
        'Nguyen Chien Thang2',
        '1',
        '2',
        '2020-03-05'
    ),
    (
        'account2@gmail.com',
        'vanchien',
        'Nguyen Van Chien',
        '2',
        '3',
        '2020-03-07'
    ),
    (
        'account3@gmail.com',
        'cocoduongqua',
        'Duong Do',
        '3',
        '4',
        '2020-03-08'
    ),
    (
        'account4@gmail.com',
        'doccocaubai',
        'Nguyen Chien Thang1',
        '4',
        '4',
        '2020-03-10'
    ),
    (
        'dapphatchetngay@gmail.com',
        'khabanh',
        'Ngo Ba Kha',
        '6',
        '3',
        '2020-04-05'
    ),
    (
        'songcodaoly@gmail.com',
        'huanhoahong',
        'Bui Xuan Huan',
        '7',
        '2',
        NULL
    ),
    (
        'sontungmtp@gmail.com',
        'tungnui',
        'Nguyen Thanh Tung',
        '8',
        '1',
        '2020-04-07'
    ),
    (
        'duongghuu@gmail.com',
        'duongghuu',
        'Duong Van Huu',
        '9',
        '2',
        '2020-04-07'
    ),
    (
        'vtiaccademy@gmail.com',
        'vtiaccademy',
        'Vi Ti Ai',
        '10',
        '1',
        '2020-04-09'
    );

-- Add data Group
INSERT INTO
    `Group` (
        GroupName,
        CreatorID,
        CreateDate
    )
VALUES (
        N'Testing System',
        5,
        '2019-03-05'
    ),
    (
        N'Development',
        1,
        '2020-03-07'
    ),
    (
        N'VTI Sale 01',
        2,
        '2020-03-09'
    ),
    (
        N'VTI Sale 02',
        3,
        '2020-03-10'
    ),
    (
        N'VTI Sale 03',
        4,
        '2020-03-28'
    ),
    (
        N'VTI Creator',
        6,
        '2020-04-06'
    ),
    (
        N'VTI Marketing 01',
        7,
        '2020-04-07'
    ),
    (
        N'Management',
        8,
        '2020-04-08'
    ),
    (
        N'Chat with love',
        9,
        '2020-04-09'
    ),
    (N'Vi Ti Ai', 10, '2020-04-10');

-- Add data GroupAccount
INSERT INTO
    `GroupAccount` (GroupID, AccountID, JoinDate)
VALUES (1, 1, '2019-03-05'),
    (1, 2, '2020-03-07'),
    (3, 3, '2020-03-09'),
    (3, 4, '2020-03-10'),
    (5, 5, '2020-03-28'),
    (1, 3, '2020-04-06'),
    (1, 7, '2020-04-07'),
    (8, 3, '2020-04-08'),
    (1, 9, '2020-04-09'),
    (10, 10, '2020-04-10');

-- Add data TypeQuestion
INSERT INTO
    TypeQuestion (TypeName)
VALUES ('Essay'),
    ('Multiple-Choice');
-- Add data CategoryQuestion
INSERT INTO
    CategoryQuestion (CategoryName)
VALUES ('Java'),
    ('ASP.NET'),
    ('ADO.NET'),
    ('SQL'),
    ('Postman'),
    ('Ruby'),
    ('Python'),
    ('C++'),
    ('C Sharp'),
    ('PHP');
-- Add data Question
INSERT INTO
    Question (
        Content,
        CategoryID,
        TypeID,
        CreatorID,
        CreateDate
    )
VALUES (
        N'Câu hỏi về Java Câu hỏi về Java Câu hỏi về Java Câu hỏi về Java',
        1,
        '1',
        '2',
        '2020-04-05'
    ),
    (
        N'Câu Hỏi về PHP',
        10,
        '2',
        '2',
        '2020-04-05'
    ),
    (
        N'Hỏi về C#',
        9,
        '2',
        '3',
        '2020-04-06'
    ),
    (
        N'Hỏi về Ruby',
        6,
        '1',
        '4',
        '2020-04-06'
    ),
    (
        N'Hỏi về Postman',
        5,
        '1',
        '5',
        '2020-04-06'
    ),
    (
        N'Hỏi về ADO.NET',
        3,
        '2',
        '6',
        '2020-04-06'
    ),
    (
        N'Hỏi về ASP.NET',
        2,
        '1',
        '7',
        '2020-04-06'
    ),
    (
        N'Hỏi về C++',
        8,
        '1',
        '8',
        '2020-04-07'
    ),
    (
        N'Hỏi về SQL',
        4,
        '2',
        '9',
        '2020-04-07'
    ),
    (
        N'Hỏi về Python',
        7,
        '1',
        '10',
        '2020-04-07'
    );

-- Add data Answers
INSERT INTO
    Answer (
        Content,
        QuestionID,
        isCorrect
    )
VALUES (N'Trả lời 01', 1, 0),
    (N'Trả lời 02', 1, 1),
    (N'Trả lời 03', 1, 0),
    (N'Trả lời 04', 1, 1),
    (N'Trả lời 05', 2, 1),
    (N'Trả lời 06', 3, 1),
    (N'Trả lời 07', 4, 0),
    (N'Trả lời 08', 8, 0),
    (N'Trả lời 09', 9, 1),
    (N'Trả lời 10', 10, 1);
-- Add data Exam
INSERT INTO
    Exam (
        `Code`,
        Title,
        CategoryID,
        Duration,
        CreatorID,
        CreateDate
    )
VALUES (
        'VTIQ001',
        N'Đề thi C#',
        1,
        60,
        '5',
        '2019-04-05'
    ),
    (
        'VTIQ002',
        N'Đề thi PHP',
        10,
        60,
        '2',
        '2019-04-05'
    ),
    (
        'VTIQ003',
        N'Đề thi C++',
        9,
        120,
        '2',
        '2019-04-07'
    ),
    (
        'VTIQ004',
        N'Đề thi Java',
        6,
        60,
        '3',
        '2020-04-08'
    ),
    (
        'VTIQ005',
        N'Đề thi Ruby',
        5,
        120,
        '4',
        '2020-04-10'
    ),
    (
        'VTIQ006',
        N'Đề thi Postman',
        3,
        60,
        '6',
        '2020-04-05'
    ),
    (
        'VTIQ007',
        N'Đề thi SQL',
        2,
        60,
        '7',
        '2020-04-05'
    ),
    (
        'VTIQ008',
        N'Đề thi Python',
        8,
        60,
        '8',
        '2020-04-07'
    ),
    (
        'VTIQ009',
        N'Đề thi ADO.NET',
        4,
        90,
        '9',
        '2020-04-07'
    ),
    (
        'VTIQ010',
        N'Đề thi ASP.NET',
        7,
        90,
        '10',
        '2020-04-08'
    );
-- Add data ExamQuestion
INSERT INTO
    ExamQuestion (ExamID, QuestionID)
VALUES (1, 5),
    (2, 10),
    (3, 4),
    (4, 3),
    (5, 7),
    (6, 10),
    (7, 2),
    (8, 10),
    (9, 9),
    (10, 8);
/* Question 2 */
SELECT * FROM department;
/* Question 3 */
SELECT `DepartmentID` 
FROM department 
WHERE `DepartmentName` = "Sale";
/* Question 4 */
SELECT * FROM `Account`
ORDER BY LENGTH(FullName) DESC
LIMIT 1;
    /* Question 5 */
SELECT * FROM `Account`
WHERE `DepartmentID` = 3
ORDER BY LENGTH(FullName) DESC
LIMIT 1;
    /* Question 6 */
SELECT *
FROM `group`
WHERE `CreateDate` < DATE('2019-12-20');
    /* Question 7 Get ID of questions that have >= 4 answers from answers table*/
SELECT `QuestionID`
FROM `Answer`
GROUP BY `QuestionID`
HAVING COUNT(`QuestionID`) >= 4;
    /* Question 8 */
SELECT `ExamID`
FROM `Exam`
WHERE `Duration` >= 60 AND `CreateDate` >= DATE('2019-12-20');
    /* Question 9 */
SELECT * 
FROM `group`
ORDER BY `CreateDate` DESC
LIMIT 5; 
    /* Question 10 */
SELECT COUNT(*) AS 'Number of Staffs in Department 2'
FROM `Account` 
WHERE `DepartmentID` = 2;
    /* Question 11 */
SELECT *
FROM `account`
WHERE `FullName` LIKE 'D%o';
    /* Question 12 */
DELETE FROM `exam` 
WHERE `CreateDate` < DATE('2019-12-20');
    /* Question 13 */
DELETE FROM `question`
WHERE `Content` LIKE 'Câu hỏi%';
    /* Question 14 */
UPDATE `account`
SET `Email` = 'lo.vande@mmc.edu.vn', `FullName` = "Lô Văn Đề"
WHERE `AccountID` = 5;
    /* Question 15 */
UPDATE `account`
SET `DepartmentID` = 4
WHERE `AccountID` = 5;