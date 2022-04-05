<?php
session_start();
require_once '../parts/func.php';

$func = new func();
$email = $_SESSION['email'];
$email1 = $_POST["email1"];
$email2 = $_POST["email2"];

if (isset($email1) && isset($email2)) {
    $func->changeEmail($email, $email1, $email2);
}
