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
    <title>Keresés</title>
</head>

<body>
    <div id="main">
        <?php
        require_once '../parts/nav.php';
        ?>
        <div class="wrapper">
            <h1>Keresés: </h1>
            <form action="search.php" id="form" method="POST">
                <div class="input-cont">
                    <input id="search" name="search" type="text" placeholder="A keresett szó..." autofocus required>
                    <img class="icon" src="/img/icons/search.svg" alt="email">
                </div>
                <button id="submit" type="submit">Keres</button>
            </form>

            <div class="wrapper">
                <h2>Találatok: </h2>
                <hr>
                <ul id="result">
                </ul>
            </div>
        </div>

    </div>


    <script src="./js/main.js"></script>
</body>

</html>