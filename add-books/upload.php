<?php
session_start();

require_once '../parts/func.php';

if (isset($_POST["submit"])) {
    $file = $_FILES['file'];

    // Get the extension of the file
    $fileName = $file["name"];
    $fileExt = pathinfo($fileName, PATHINFO_EXTENSION);

    if ($fileExt != "tsv") {
        $_SESSION["error"] = "<div id='error'>Nem megfelelő a fájl formátuma!</div>";
        header("location: index.php");
        exit();
    }
}
