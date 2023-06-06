<?php

require_once './config/config.php';

// Handle file upload
if (isset($_FILES['recordedFile']) && $_FILES['recordedFile']['error'] === UPLOAD_ERR_OK) {
    $file = $_FILES['recordedFile'];
    $fileName = $file['name'];
    $tempFilePath = $file['tmp_name'];

    // Move the temporary file to a desired location
    $uploadDirectory = 'path_to_upload_directory/';
    $targetFilePath = $uploadDirectory . $fileName;
    move_uploaded_file($tempFilePath, $targetFilePath);

    // Insert file details into the video table
    $query = "INSERT INTO video (file_name, file_path) VALUES (:file_name, :file_path)";
    $stmt = $conn->prepare($query);
    $stmt->bindParam(':file_name', $fileName);
    $stmt->bindParam(':file_path', $targetFilePath);
    $stmt->execute();

    echo "File saved successfully.";
} else {
    echo "Error uploading the file.";
}
?>
