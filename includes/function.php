<?php
    include 'connect.php';
    // get one art first
    function get_single_art($pdo, $art) {
        $query = "SELECT * FROM tbl_portfoliowork WHERE art_category = '$art'"; 
        //attach the id in the thumnail to ensure you are getting the right image

        $get_art = $pdo->query($query);
        $results = array();

        while($row = $get_art->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        return $results;
    }

    //get all art
    function get_all_art($pdo) {
        $query = "SELECT * FROM tbl_portfoliowork";
        
        $get_art = $pdo->query($query);
        $results = array();
        
        while($row = $get_art->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        
        return $results; 
        }



?>