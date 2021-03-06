<?php
session_start();

// Check if the user is logged in
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

        <div class="wrapper">
            <div>
                <h2 class="title">Töltsön fel egy táblázatot:</h2>
                <p>Támogatott formátumok: <b>.xls</b>, <b>.xlsx</b></p>
            </div>
            <?php
            if (isset($_SESSION["error"])) {
                echo "<div id='error'>{$_SESSION['error']}</div>";
                unset($_SESSION["error"]);
            }
            if (isset($_SESSION["info"])) {
                echo "<div id='info'>{$_SESSION['info']}</div>";
                unset($_SESSION["info"]);
            }
            ?>
            <form id="form" action="upload.php" method="POST" enctype="multipart/form-data">
                <div id="file-box">
                    <label id="file-label" for="file">választ...</label>
                    <input id="file" type="file" name="file" required>
                </div>
                <input id="submit" type="submit" name="submit" value="Feltölt">
            </form>
        </div>
    </div>

    <script src="js/main.js"></script>
</body>

</html>