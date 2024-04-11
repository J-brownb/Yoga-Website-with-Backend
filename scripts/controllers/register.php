<?php
if ($_POST) {
    $User = new User($Conn);
    $existingUser = $User->getUserByEmail($_POST['user_email']);

    if ($existingUser) {
      
        $Smarty->assign('error', "Email address already in use. Please use a different email.");
    } else {
        $attempt = $User->createUser($_POST);
        if ($attempt) {
            //logs user in
            $User = new User($Conn);
            $user_data = $User->loginUser($_POST['user_email'], $_POST['user_pass']);

            $_SESSION['is_loggedin'] = true;
            $_SESSION['user_data'] = $user_data;
            header("Location: dashboard");




            $email = new \SendGrid\Mail\Mail();
            $email->setFrom("s223358@uos.ac.uk", "Moneywise");
            $email->setSubject("Welcome to Moneywise");
            $email->addTo($_POST['user_email'], "User");
            $email->addContent(
                "text/html",
                "<h1>Welcome to Moneywise</h1>"
            );
            $sendgrid = new \SendGrid('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');
            $response = $sendgrid->send($email);
            if ($response->statusCode() == 202) {
                // Email sent successfully
            } else {
                // error
                echo "SendGrid Error: " . $response->body();
            }
        } else {
            $Smarty->assign('error', "An error occurred, please try again later.");
        }

    }

}