<?php 

//  var_dump($_POST);
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

    if(empty($_GET['name'])
        ||empty($_GET['email'])
        ||empty($_GET['comments'])) {
            echo 'You are missing some required fields';
            exit;
        }

    $to = 'jaclyn@jaclynflomen.com';
    $subject = 'This is an email from '.$_GET['name'];
    $message = $_GET['comments'];
    $phone = $_GET['phone'];
    $headers = 'From: noreply@YOURDOMAIN.com';
    $headers .= 'Reply-To: '.$_GET['email'];

    mail($to, $subject, $message, $phone, $headers);
    //In your server, use the following line instead
    //mail($to, $subject, $message);
    echo 'Thanks for contacting me! I will get back to you soon.';
}

send_email();

?>