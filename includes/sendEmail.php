<?php 

var_dump($_GET);
function send_email (){
    $to = 'j_floman@fanshaweonline.ca';
    $subject = 'This is the subject if the email';
    $message = 'Email message body';

    fake_mail($to, $subject, $message);
    //In your server, use the following line instead
    //mail($to, $subject, $message);
}

send_email();

?>