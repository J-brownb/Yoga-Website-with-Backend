<?php
//get category list for menu
$Category = new Category($Conn);
$categories = $Category->getAllCategories();
$Smarty->assign('categories', $categories);

//get user points if logged in 
if ($_SESSION['is_loggedin']) {
    $user_points = $User->getUserPoints();
    $Smarty->assign('user_points', $user_points);
}
//register user 
if ($_POST) {
    if ($_POST["register"])
        if ($_POST["password"] != $_POST["password_confirm"]) {
            $error = "Passwords do not match.";
        } elseif (strlen($_POST["password"]) < 8) {
            $error = "Your password must be at least 8 characters in length.";
        } elseif (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
            $error = "Your email address is not valid.";
        }
    if ($error) {
        $Smarty->assign("error", $error);
    } else {
        $User = new User($Conn);
        $attempt = $User->createUser($_POST);
        if ($attempt) {
            $Smarty->assign(
                "success",
                "Your account has been created. You can now login."
            );
            //send confirmation email 
            $email = new \SendGrid\Mail\Mail();
            $email->setFrom("s223358@uos.ac.uk", "Jonny Hodgson");
            $email->setSubject("Welcome to the Wellness Site");
            $email->addTo($_POST['email'], "User");
            $email->addContent(
                "text/html",
                "<h1>Welcome to the Wellness Site</h1> <p>Your account has been created successfully.</p>"
            );
            $sendgrid = new \SendGrid('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');
            $response = $sendgrid->send($email);
            $response = $sendgrid->send($email);
            if ($response->statusCode() == 202) {
                // Email sent successfully
            } else {
                // There was an error
                echo "SendGrid Error: " . $response->body();
            }

        } else {
            $Smarty->assign(
                "error",
                "An error occurred, please try again later."
            );
        }
    }
}

//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);