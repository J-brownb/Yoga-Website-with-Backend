<?php
//search query 
$search_query = $_POST['query'];
$Smarty->assign('query', $search_query);
//search poses 
$Pose = new Pose($Conn);
$poses = $Pose->searchPoses($search_query);
$Smarty->assign('poses', $poses);

//get category list for menu
$Category = new Category($Conn);
$categories = $Category->getAllCategories();
$Smarty->assign('categories', $categories);

//get user points if logged in 
if ($_SESSION['is_loggedin']) {
    $user_points = $User->getUserPoints();
    $Smarty->assign('user_points', $user_points);
};

//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);
