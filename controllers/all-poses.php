<?php
//get all poses 
$Pose = new Pose($Conn);
$poses = $Pose->getAllPoses();
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


// Include the moon-phases.php file, rather than call API on each page
require_once 'moon-phase.php';
$Smarty->assign('moon_phases', $moon_phases);
$Smarty->assign('dates', $dates);
