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

//Get all poses
$Pose = new Pose($Conn);
$poses = $Pose->getAllPoses();
$Smarty->assign('poses', $poses);

//Get user faves
$Favourite = new Favourite($Conn);
$Faves = $Favourite->getUserFaves($_SESSION['user_data']['user_id']);
$Smarty->assign('Faves', $Faves);

//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);
