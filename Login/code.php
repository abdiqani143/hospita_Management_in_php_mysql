<?php
include("Codes.php");

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require 'vendor/autoload.php';

function sendemail_verify($name,$email,$verify_token)
{
   $mail = new PHPMailer(true);
     //Server settings
    //$mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
    $mail->isSMTP();   

     $mail->SMTPAuth   = true;      
                                               //Send using SMTP
    $mail->Host       = 'smtp.example.com';                     //Set the SMTP server to send through
    // $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
    $mail->Username   = 'suldaancarab143@example.com';                     //SMTP username
    $mail->Password   = 'secret'; 
                                  //SMTP password
    $mail->SMTPSecure = "tls";            //Enable implicit TLS encryption
    $mail->Port       = 587;  
                                      //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

    //Recipients
    $mail->setFrom('suldaancarab143@example.com', $name);
    $mail->addAddress($email);  

    //    //Add a recipient
    // $mail->addAddress('ellen@example.com');               //Name is optional
    // $mail->addReplyTo('info@example.com', 'Information');
    // $mail->addCC('cc@example.com');
    // $mail->addBCC('bcc@example.com');

    // //Attachments
    // $mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
    // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name

    //Content
    $mail->isHTML(true);   
                                   //Set email format to HTML
    $mail->Subject = 'Email Verification From En.Abdi Qani';
    $mail->Body    = 'This is the HTML message body <b>in bold!</b>';
    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

    $mail->send();
    echo 'Message has been sent';
}

if(isset($_POST['register_btn']))
{
	$name=$_POST['name']
	$name=$_POST['phone']
	$name=$_POST['email']
	$name=$_POST['password'];
	$verify_token=md59(rand());

	// Email Exists or not
	$check_email_query="select email from login_form where email='$email' LIMIT 1";
	$check_email_query_run=mysli_query($con,$check_email_query);

	if(myqli_run_rows($check_email_query_run) > 0)
	{
         $_SESSION['status'] = "Email ID Already Exist";
         header("Location: register.php");
	}
	else
	{

        // Insert User register User date

        $query="INSERT INTO login_form(name,phone,email,password,verify_token) VALUES('$name','$phone','$email','$password','$verify_token')";
        $query_run=mysli_query(%con,%query);

        if($query_run)
        {

        	sendemail_verify("$name","$email","$verify_token");
               $_SESSION['status']="Registeration Successfull Please verify your email";
        	header("Location: register.php");
        }
        else{
        	$_SESSION['status']="Registeration Failed";
        	header("Location: register.php");
        }
	}
}
?>