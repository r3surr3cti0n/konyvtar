<?php
session_start();
?>
<!DOCTYPE html>
<html lang="hu">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/style/main.css">
    <link rel="stylesheet" href="style.css">
    <title>Könyvtár</title>
</head>

<body>

    <form id="form" action="login.php" method="post">
        <h1 class="title">Adminisztráció</h1>

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
        <div class="input-cont">
            <img class="icon" src="/img/icons/email.svg" alt="email">
            <input name="email" type="email" placeholder="E-mail" autofocus required>
        </div>
        <div class="input-cont">
            <img class="icon" src="/img/icons/pwd.svg" alt="password">
            <input name="pwd" type="password" placeholder="Jelszó" required>
        </div>
        <button name="submit" id="submit" type="submit">Belépés</button>
    </form>

    <script src="js/main.js"></script>

</body>

</html>