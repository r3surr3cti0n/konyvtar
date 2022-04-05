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
    <title>Profil</title>
</head>

<body>
    <main id="main">
        <?php
        require_once '../parts/nav.php';
        echo "<h1 class='title'>Üdvözöllek {$_SESSION["email"]}!</h1>";
        ?>

        <div class="wrapper">
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
            <div class="wrapper row">
                <div class="wrapper">
                    <h2 class="title">E-mail cím megváltoztatása</h2>
                    <form id="form" action="./email.php" method="POST">
                        <div class="input-cont">
                            <img class="icon" src="/img/icons/at.svg" alt="email">
                            <input name="email1" type="email" placeholder="E-mail" required>
                        </div>
                        <div class="input-cont">
                            <img class="icon" src="/img/icons/at.svg" alt="email">
                            <input name="email2" type="email" placeholder="E-mail újra" required>
                        </div>
                        <button name="submit" id="submit" type="submit">Változtat</button>
                    </form>
                </div>

                <div class="wrapper">
                    <h2 class="title">Jelszó megváltoztatása</h2>
                    <form id="form" action="./pwd.php" method="POST">
                        <div class="input-cont">
                            <img class="icon" src="/img/icons/pwd.svg" alt="password">
                            <input name="pwd1" type="password" minlength="6" maxlength="15" placeholder="Jelszó" required>
                        </div>
                        <div class="input-cont">
                            <img class="icon" src="/img/icons/pwd.svg" alt="password">
                            <input name="pwd2" type="password" minlength="6" maxlength="15" placeholder="Jelszó újra" required>
                        </div>
                        <button name="submit" id="submit" type="submit">Változtat</button>
                    </form>
                </div>
            </div>
        </div>
    </main>
</body>

</html>