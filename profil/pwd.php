<?php
session_start();
require_once '../parts/func.php';

if (isset($_POST["pwd1"]) && isset($_POST["pwd2"])) {
    $pwd1 = $_POST["pwd1"];
    $pwd2 = $_POST["pwd2"];

    $func = new func();
    if ($func->comparePwds($pwd1, $pwd2)) {
        if (!$func->isNewPwd($pwd1, $_SESSION["email"])) {
            $_SESSION["error"] = "<p>A megadott jelszó megegyezik a jelenlegi jelszavával!</p><p>Kérem adjon meg egy új jelszót!</p>";
            $func->index();
        } else {
            if (!$func->changePwd($pwd1, $_SESSION["email"])) {
                $_SESSION["error"] = "<p>Váratlan hiba történt! </p><p>Kérem próbálja újra!</p>";
                $func->index();
            } else {
                $_SESSION = [];
                session_destroy();
                session_start();
                $_SESSION["info"] = "Sikeresen megváltoztatta a jelszavát! Kérem jelentkezzen be újra!";
                header("location: ../login/");
                exit();
            }
        }
    } else {
        $_SESSION["error"] = "A megadott jelszavak nem egyeznek!";
        $func->index();
    }
} else {
    $_SESSION["error"] = "<p>Váratlan hiba történt!</p> <p>Kérem próbálja újra!</p>";
    $func->index();
}
