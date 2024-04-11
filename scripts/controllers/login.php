<?php
if ($_POST) {
    $User = new User($Conn);
    $user_data = $User->loginUser($_POST['user_email'], $_POST['user_pass']);


    if ($user_data) {
        $_SESSION['is_loggedin'] = true;
        $_SESSION['user_data'] = $user_data;
        header("Location: dashboard");
        exit();
    } else {
        $Smarty->assign('error', "Incorrect Email/Password");
    }
}