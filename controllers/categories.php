<?php
//get all poses for chosen category
$cat_id = $_GET['id'];
$Pose = new Pose($Conn);
$poses = $Pose->getAllPosesForCategory($cat_id);
$Smarty->assign('poses', $poses);

//category slug 
$cat_id = $_GET['id'];
$Category = new Category($Conn);
$cat_data = $Category->getCatBySlug($cat_id);
$cat_id = $cat_data['cat_id'];
$Smarty->assign('cat', $cat_data);

//Get category info
$Category = new Category($Conn);
$category = $Category->getCategory($cat_id);
$Smarty->assign('category', $category);


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
