<?php 

// // var_dump($_GET);
// function mail($to, $subject, $message, $headers) {
//     echo '=== Fake Emails ==='.PHP_EOL;
//     echo 'Subject: '.$subject.PHP_EOL;
//     echo 'Email to:'.$to.PHP_EOL;
//     echo 'Message: '.$message.PHP_EOL;
//     echo '==== Emails End ===='.PHP_EOL;

//     return true;
// }

//var_dump($_GET);
function send_email (){
    $to = 'jaclynflomen@gmail.com';
    $subject = 'This is an email from '.$_GET['name'];
    $message = $_GET['comments'];
    $headers = 'From: noreply@YOURDOMAIN.com';
    $headers .= 'Reply-To: '.$_GET['email'];

    mail($to, $subject, $message, $headers);
    //In your server, use the following line instead
    //mail($to, $subject, $message);
}

send_email();

?>