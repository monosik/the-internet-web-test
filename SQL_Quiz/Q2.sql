-- -- Users Data
-- CREATE TABLE `Users` (
--   `ID` int NOT NULL PRIMARY KEY,
--   `NameThai` varchar(100) NOT NULL,
--   `Position` varchar(100) NOT NULL,
--   `Departments` int NOT NULL
-- );
-- INSERT INTO `Users` VALUES (1, 'นาย พะโล้ แซ่ห่าน','บุคลากรสายปฏิบัติงาน', 1);
-- INSERT INTO `Users` VALUES (2, 'นางสาว กัญญา เขียวล้วน', 'บุคลากรสายวิชาการ', 3);
-- INSERT INTO `Users` VALUES (3, 'นาย อเนก บุญนันทพงศ์', 'บุคลากรสายปฏิบัติงาน', 2);
-- INSERT INTO `Users` VALUES (4, 'นาย พิพัฒน์ เศรษฐี', 'บุคลากรสายวิชาการ', 1);
-- INSERT INTO `Users` VALUES (5, 'นาง สมศรี สิริกุล', 'บุคลากรสายวิชาการ', 3);

-- -- Departments Data
-- CREATE TABLE `Departments` (
--   `ID` int NOT NULL PRIMARY KEY,
--   `Code` int NOT NULL,
--   `Name` varchar(100) NOT NULL,
--   FOREIGN KEY (ID) REFERENCES Users(Departments)
-- );
-- INSERT INTO `Departments` VALUES (1, 1001, 'หลักสูตรการจัดการทางวิศวกรรม');
-- INSERT INTO `Departments` VALUES (2, 1002, 'หลักสูตรการจัดการทางวิศวกรรม');
-- INSERT INTO `Departments` VALUES (3, 10013, 'บริการวิศวกรรม "(CES)"');

UPDATE Departments
SET Name = 'ภารกิจบริหารงานวิจัยและบริการวิชาการ'
WHERE ID = 2;

UPDATE Departments
SET Code = "1003", Name = "บริการวิศวกรรม (CES)"
WHERE ID = 3;

-- --Test Display data
-- SELECT * FROM Users;
-- SELECT * FROM Departments;

-- --Quiz1
-- SELECT Users.ID, Users.NameThai, Users.Position
-- FROM Users
-- WHERE Position='บุคลากรสายปฏิบัติงาน';

--Quiz2
SELECT Users.ID, Users.NameThai, Users.Position, Departments.Code, Departments.Name
FROM Users, Departments
WHERE Departments.ID = Users.Departments;

--Quiz2
SELECT Users.ID, Users.NameThai, Users.Position, Departments.Code, Departments.Name
FROM Departments INNER JOIN Users
ON Departments.ID = Users.Departments;

--Quiz3
SELECT Departments.Code, Departments.Name, Users.NameThai, Users.Position 
FROM Departments, Users
WHERE Users.Departments = Departments.ID
AND Name IN ("บริการวิศวกรรม (CES)", "ภารกิจบริหารงานวิจัยและบริการวิชาการ")
ORDER BY Departments.Code DESC;

--Quiz3
SELECT D.Code, D.Name, U.NameThai, U.Position
FROM Departments D INNER JOIN Users U
ON D.ID = U.Departments
WHERE D.Name IN ("บริการวิศวกรรม (CES)", "ภารกิจบริหารงานวิจัยและบริการวิชาการ")
ORDER BY D.Code DESC;
