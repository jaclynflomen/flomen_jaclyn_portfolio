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

var_dump($_POST);
function send_email (){
    $to = 'jaclynflomen@gmail.com';
    $subject = 'This is an email from '.$_POST['name'];
    $message = $_POST['comments'];
    $headers = 'From: noreply@YOURDOMAIN.com';
    $headers .= 'Reply-To: '.$_POST['email'];

    mail($to, $subject, $message, $headers);
    //In your server, use the following line instead
    //mail($to, $subject, $message);
}

send_email();

?>