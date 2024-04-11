<?php
//get category list for menu
$Category = new Category($Conn);
$categories = $Category->getAllCategories();
$Smarty->assign('categories', $categories);

//get user points if logged in 
if ($_SESSION['is_loggedin']) {
    $user_points = $User->getUserPoints();
    $Smarty->assign('user_points', $user_points);
};


//Change password
if ($_POST) {
    $error = '';
    if (isset($_POST["changePass"])) {
        if (strlen($_POST["newPassword"]) < 8) {
            $error = "Your new password must be at least 8 characters in length.";
        } else {
            $change_pass = $User->changeUserPassword($_POST['currentPassword'], $_POST['newPassword']);
            if ($change_pass) {
                $Smarty->assign('success', "Password has been updated.");
            } else {
                $error = "Something went wrong.";
            }
        }
    }

    if ($error) {
        $Smarty->assign('error', $error);
    }
}



//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);