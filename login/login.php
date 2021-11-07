<?php
session_start();

require_once 'func.php';

if (isset($_POST["submit"])) {
    $email = $_POST["email"];
    $pwd = $_POST["pwd"];

    $login = new login();
    $login->loginUser($email, $pwd);

    header("location: ../add-books/");
    exit();
}
