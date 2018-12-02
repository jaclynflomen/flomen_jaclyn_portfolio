<?php
    include 'function.php';
    
    //single movie route
    if (isset($_GET["art"])){
        $data = get_all_art($conn, $_GET["art"]);
        echo json_encode($data);
    } else {
        $data = get_all_art($conn);
        echo json_encode($data);
        //can use this for portfolio pieces too - does not only apply to media
    }

?>