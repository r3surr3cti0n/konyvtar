<?php
session_start();

// Check if the user is logged inx
if (!isset($_SESSION["email"])) {
    header("location: ../login/");
    exit();
}

?>

<!DOCTYPE html>
<html lang="hu">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/style/main.css">
    <link rel="stylesheet" href="style.css">
    <title>Főoldal</title>
</head>

<body>
    <div id="main">
        <?php
        require_once '../parts/nav.php';
        ?>
    </div>
</body>

</html>