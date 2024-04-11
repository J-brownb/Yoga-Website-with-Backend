<?php
//Create leaderboards 
$Leaderboards = new Leaderboards($Conn);
$Leaderboard = $Leaderboards->getUsersByPoints();
$Smarty->assign('Leaderboard', $Leaderboard);

//get category list for menu
$Category = new Category($Conn);
$categories = $Category->getAllCategories();
$Smarty->assign('categories', $categories);

//get user points if logged in 
if ($_SESSION['is_loggedin']) {
    $user_points = $User->getUserPoints();
    $Smarty->assign('user_points', $user_points);
}

//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);
