<?php
    include 'function.php';
    
    //single art route
    if (isset($_GET["category"])){
        $data = get_single_art($conn, $_GET["category"]);
        echo json_encode($data);
    } else {
        $data = get_all_art($conn);
        echo json_encode($data);
        //can use this for portfolio pieces too - does not only apply to media
    }


?>