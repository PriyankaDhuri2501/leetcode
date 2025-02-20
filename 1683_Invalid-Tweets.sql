-- Create the database (if it doesn't exist)
CREATE DATABASE IF NOT EXISTS TweetDB;

-- Use the database
USE TweetDB;

-- Create the Tweets table
CREATE TABLE IF NOT EXISTS Tweets (
    tweet_id INT PRIMARY KEY,
    content VARCHAR(255)  -- Adjust the length as needed
);

-- Insert the sample data into the Tweets table
INSERT INTO Tweets (tweet_id, content) VALUES
(1, 'Let us Code'),
(2, 'More than fifteen chars are here!');

-- Query to find invalid tweets
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;