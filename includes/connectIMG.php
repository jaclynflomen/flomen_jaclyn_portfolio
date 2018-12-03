<?php
$host = "localhost";
$user = "root";
$password = "root";
$db = "db_portfolio";

$conn = mysqli_connect($host, $user, $password, $db);

if (!$conn) {
    echo "something broke... connection isn't working";
    exit;
}

//get one item from database
if (isset($_GET["art_id"])) {
    $aboutme = $_GET["art_id"];

    $myQuery = "SELECT * FROM tbl_portfoliowork WHERE art_id = $art";

    $result = mysqli_query($conn, $myQuery);
    $rows = array();

    //fill the array with the result set and send it to the browser
    while($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }

    echo json_encode($rows);
}