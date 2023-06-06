<?php

$host = 'localhost';
$dbname = 'media_app';
$username = 'root';
$password = '';

     try {
        $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        echo 'connection successful';
        // Additional configuration or settings can be done here
    } catch (PDOException $e) {
        // Handle any errors that occur during the connection
        die("Connection failed: " . $e->getMessage());
    }
    


