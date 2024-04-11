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

//:Log in
if ($_POST["login"]) {
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
            header("Location: /awad-assignment/account");
            exit();
        } else {
            $Smarty->assign("error", "Incorrect Email/Password");
        }
    }
}

//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);
