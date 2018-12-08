<?php
$host = "localhost";
$user = "jaclynfl_jflo";
$password = "jaclynflomen";
$db = "jaclynfl_portfolio";

$conn = mysqli_connect($host, $user, $password, $db);

if (!$conn) {
    echo "something broke... connection isn't working";
    exit;
}

//get one item from database
if (isset($_GET["ID"])) {
    $aboutme = $_GET["ID"];

    $myQuery = "SELECT * FROM tbl_about WHERE ID = '$aboutme'";

    $result = mysqli_query($conn, $myQuery);
    $rows = array();

    //fill the array with the result set and send it to the browser
    while ($row = mysql_fetch_assoc($result)) {
        $rows[] = $row;
    }

    echo json_encode($rows);
}
?>
<?php

$user = "jaclynfl_jflo";
$pwd = "jaclynflomen";

try {
    $conn = new PDO('mysql:host=localhost;dbname=jaclynfl_portfolio',$user, $pwd);
    //this is the same thing as going $host = "localhost" etc but just in one line
    //var_dump($conn); //check connection - instead of doing a var element, use var_dump to 
                    //show because it is an object
    

} catch (PDOException $exception) {
    echo 'connect error!' . $exception->getMessage();
}


?>
