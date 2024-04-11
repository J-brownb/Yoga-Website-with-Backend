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

$User = new User($Conn);
$User->getUser($user_id);
$Smarty->assign('user', $user);

$Delete = new User($Conn);
if (isset($_POST['delete-account'])) {
    $user_id = $_POST['user_id'];

    // Check if the confirmation form was submitted
    if (isset($_POST['confirm-delete'])) {
        $Delete->deleteUser($user_id);
        //log them out
        $_SESSION = array();
        session_destroy();
        header("Location: index.php");


    } else {
        // clicked cancel
        $user = $User->getUser($user_id);
        $Smarty->assign('user', $user);
        $Smarty->display('pages/confirm-delete-account.tpl');
        exit();
    }
}

$Smarty->assign('delete', $Delete);


//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);
