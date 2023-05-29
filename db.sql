CREATE DATABASE media_app;


-- Table for user/device information
CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  device_id VARCHAR(50) NOT NULL,
  -- Add any other user-related columns here
  username VARCHAR(50),
  email VARCHAR(100)
);

-- Table for image uploads
CREATE TABLE images (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL,
  file_path VARCHAR(255),
  upload_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  -- Add any additional metadata columns for images here
  file_name VARCHAR(100),
  file_size INT,
  file_format VARCHAR(10),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Table for video uploads
CREATE TABLE videos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL,
  file_path VARCHAR(255),
  upload_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  -- Add any additional metadata columns for videos here
  file_name VARCHAR(100),
  file_size INT,
  file_format VARCHAR(10),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Table for audio uploads
CREATE TABLE audio (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL,
  file_path VARCHAR(255),
  upload_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  -- Add any additional metadata columns for audio here
  file_name VARCHAR(100),
  file_size INT,
  file_format VARCHAR(10),
  FOREIGN KEY (user_id) REFERENCES users(id)
);
