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

        <h2>Töltse fel a .tsv állományt:</h2>
        <?php
        if (isset($_SESSION["error"])) {
            echo $_SESSION["error"];
            unset($_SESSION["error"]);
        }
        ?>
        <form id="form" action="upload.php" method="POST" enctype="multipart/form-data">
            <div id="file-box">
                <label id="file-label" for="tsv">választ...</label>
                <input id="file" type="file" name="file" required>
            </div>
            <input id="submit" type="submit" name="submit" value="Feltölt">
        </form>
    </div>

    <script src="js/main.js"></script>
</body>

</html>