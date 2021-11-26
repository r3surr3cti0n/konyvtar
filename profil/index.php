<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION["email"])) {
    header("location: ../login/");
    exit();
}

require_once '../login/func.php';
require_once '../parts/func.php';

$login = new login();
$func = new func();

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
        ?>

        <div class="wrapper">
            <?php
            echo "<h1 class='title'>Üdvözöllek {$_SESSION["email"]}!</h1>";
            if (isset($_POST["submit"])) {
                $pwd1 = $_POST["pwd1"];
                $pwd2 = $_POST["pwd2"];
                if ($func->comparePwds($pwd1, $pwd2)) {
                    if (!$func->isNewPwd($pwd1, $_SESSION["email"])) {
                        echo "<div id='error'>Kérem adjon meg egy ÚJ jelszót!</div>";
                    } else {
                        if (!$func->changePwd($pwd1, $_SESSION["email"])) {
                            echo "<div id='error'>Hiba történt!</div>";
                        } else {
                            echo "<div><p>Sikeresen megváltoztatta a jelszavát!</p>";
                            header("refresh:10;url=../parts/logout.php");
                            echo "<p>A rendszer 10 másodpercen belül kifogja léptetni!</p></div>";
                        }
                    }
                } else {
                    echo "<div id='error'>A jelszavak nem egyeznek!</div>";
                }
            }
            ?>
            <div class="wrapper">
                <h2 class="title">Jelszó megváltoztatása</h2>
                <form id="form" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
                    <div class="input-cont">
                        <img class="icon" src="/img/icons/pwd.svg" alt="password">
                        <input name="pwd1" type="password" placeholder="Jelszó" required>
                    </div>
                    <div class="input-cont">
                        <img class="icon" src="/img/icons/pwd.svg" alt="password">
                        <input name="pwd2" type="password" placeholder="Jelszó újra" required>
                    </div>
                    <button name="submit" id="submit" type="submit">Változtat</button>
                </form>
            </div>
        </div>
    </main>
</body>

</html>