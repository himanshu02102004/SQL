USE finalquery


CREATE TABLE ##People (
    id INT,
    name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO ##People (id, name, email) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Smith', 'jane@example.com'),
(3, 'Mike Johnson', 'mike@example.com'),
(4, 'Alice Brown', 'alice@example.com'),
(5, 'Bob White', 'bob@example.com'),
(6, 'John Doe', 'john@example.com'),    -- duplicate of ID 1
(7, 'Jane Smith', 'jane@example.com'),  -- duplicate of ID 2
(8, 'Chris Green', 'chris@example.com'),
(9, 'Emma Stone', 'emma@example.com'),
(10, 'David Black', 'david@example.com'),
(11, 'Mike Johnson', 'mike@example.com'), -- duplicate of ID 3
(12, 'Alice Brown', 'alice@example.com'), -- duplicate of ID 4
(13, 'Sam Wilson', 'sam@example.com'),
(14, 'Bob White', 'bob@example.com'),     -- duplicate of ID 5
(15, 'Olivia Grey', 'olivia@example.com'),
(16, 'Emma Stone', 'emma@example.com'),   -- duplicate of ID 9
(17, 'Chris Green', 'chris@example.com'), -- duplicate of ID 8
(18, 'Sophia King', 'sophia@example.com'),
(19, 'David Black', 'david@example.com'), -- duplicate of ID 10
(20, 'Sam Wilson', 'sam@example.com');    -- duplicate of ID 13

