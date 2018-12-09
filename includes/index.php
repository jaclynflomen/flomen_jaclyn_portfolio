<?php
    include 'function.php';
    
    //single art route
    if (isset($_GET["category"])){
        $data = get_single_art($pdo, $_GET["category"]);
        echo json_encode($data);
    } elseif (isset($_GET["ID"])){
        $data = get_svg($pdo, $_GET["ID"]);
        echo json_encode($data);
    } else {
        $data = get_all_art($pdo);
        echo json_encode($data);
        //can use this for portfolio pieces too - does not only apply to media
    }


?>