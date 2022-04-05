<?php
require_once '../parts/func.php';

if (isset($_POST["inputVal"])) {
    $inputVal = $_POST['inputVal'];
    $func = new func();
    // Search
    $result = $func->search($inputVal);

    echo json_encode($result);
} else {
    header("location: index.php");
    exit();
}
