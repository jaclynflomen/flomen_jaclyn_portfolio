<?php

$user = "jaclynfl_jflo";
$pwd = "jaclynflomen";

try {
    $pdo = new PDO('mysql:host=localhost;dbname=jaclynfl_portfolio',$user, $pwd);
    //this is the same thing as going $host = "localhost" etc but just in one line
    //var_dump($conn); //check connection - instead of doing a var element, use var_dump to 
                    //show because it is an object
    

} catch (PDOException $exception) {
    echo 'connect error!' . $exception->getMessage();
}


?>
