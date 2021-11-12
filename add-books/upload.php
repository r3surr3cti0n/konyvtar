<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION["email"])) {
    header("location: ../login/");
    exit();
}

require_once '../parts/func.php';

if (isset($_POST["submit"])) {
    $file = $_FILES['file'];

    // Get the extension of the file
    $fileName = $file["name"];
    $fileExt = pathinfo($fileName, PATHINFO_EXTENSION);

    if ($fileExt != "xlsx" && $fileExt != "xls") {
        $_SESSION["error"] = "A fájl formátuma nem megfelelő!";
        header("location: ./");
        exit();
    }

    $func = new func();
    $func->uploadFile($file);
    $func->parseUploadedFile($file, $fileExt);
    
    header("location: index.php");
    exit();
} else {
    header("location: index.php");
    exit();
}
