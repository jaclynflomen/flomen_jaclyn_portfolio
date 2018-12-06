<?php 

function send_email (){
    //Email validations: checking required fields

    if(isset($_GET['name'])
    ||isset($_GET['email'])
    ||isset($_GET['comments'])) {
        echo 'You are missing some required fields';
        exit;
    }

    $to = 'jaclyn@jaclynflomen.com';
    $subject = 'This is an email from '.$_GET['name'];
    $message = $_GET['comments'];
    $headers = 'From: noreply@jaclynflomen.com';
    $headers .= 'Reply-To: '.$_GET['email'];

//     echo '=== Fake Emails ==='.PHP_EOL;
//     echo 'Subject: '.$subject.PHP_EOL;
//     echo 'Email to:'.$to.PHP_EOL;
//     echo 'Message: '.$message.PHP_EOL;
//     echo '==== Emails End ===='.PHP_EOL;
// }

    mail($to, $subject, $message, $headers);
    //In your server, use the following line instead
    //mail($to, $subject, $message);
}

send_email();

?>