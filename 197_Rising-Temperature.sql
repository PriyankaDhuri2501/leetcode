CREATE DATABASE TemperatureDB;

-- Use the database
USE TemperatureDB;

-- Create the Weather table
CREATE TABLE IF NOT EXISTS Weather (
    id INT PRIMARY KEY,
    recordDate DATE,
    temperature INT
);

-- Insert the sample data into the Weather table
INSERT INTO Weather (id, recordDate, temperature) VALUES
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);

-- Query to find rising temperatures
SELECT w1.id
FROM Weather w1
WHERE w1.temperature > (
    SELECT w2.temperature
    FROM Weather w2
    WHERE w2.recordDate = DATE_SUB(w1.recordDate, INTERVAL 1 DAY)
);

