<?php
if ($_POST) {
    if ($_POST["register"]) {
        if (!$_POST["email"]) {
            $error = "Please enter your email address.";
        } elseif (!$_POST["password"]) {
            $error = "Please enter your password.";
        } elseif (!$_POST["password_confirm"]) {
            $error = "Please confirm your password.";
        } elseif ($_POST["password"] != $_POST["password_confirm"]) {
            $error = "Passwords do not match.";
        } elseif (strlen($_POST["password"]) < 8) {
            $error = "Your password must be at least 8 characters in length!";
        } elseif (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
            $error = "Email is not valid!";
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


            } else {
                $Smarty->assign(
                    "error",
                    "An error occurred, please try again later."
                );
            }
        }
    } elseif ($_POST["login"]) {
        if (!$_POST["email"]) {
            $error = "Please enter your email address.";
        } elseif (!$_POST["password"]) {
            $error = "Please enter your password.";
        } elseif (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
            $error = "This email address is not valid.";
        }
        if ($error) {
            $Smarty->assign("error", $error);
        } else {
            $User = new User($Conn);
            $user_data = $User->loginUser($_POST["email"], $_POST["password"]);

            if ($user_data) {
                $_SESSION["is_loggedin"] = true;
                $_SESSION["user_data"] = $user_data;
                header("Location: index.php?p=account");
                exit();
            } else {
                $Smarty->assign("error", "Incorrect Email/Password");
            }
        }
    }
}