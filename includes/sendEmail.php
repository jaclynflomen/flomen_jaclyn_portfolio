<?php 

// // var_dump($_POST);
// function fake_mail($to, $subject, $message, $headers) {
//     echo '=== Fake Emails ==='.PHP_EOL;
//     echo 'Subject: '.$subject.PHP_EOL;
//     echo 'Email to:'.$to.PHP_EOL;
//     echo 'Message: '.$message.PHP_EOL;
//     echo '==== Emails End ===='.PHP_EOL;

//     return true;
// }

function send_email (){
    //Email validations: checking required fields

    if(empty($_POST['name'])
        || empty($_POST['email'])
        || empty($_POST['comments'])) {
            echo 'You are missing some required fields';
            exit;
        }

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