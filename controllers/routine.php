<?php
//Show routine
$routine_id = $_GET['id'];
$Routines = new Routines($Conn);
$routine_data = $Routines->getRoutine($routine_id);
$Smarty->assign('routine', $routine_data);


//get category list for menu
$Category = new Category($Conn);
$categories = $Category->getAllCategories();
$Smarty->assign('categories', $categories);

//get user points if logged in 
if ($_SESSION['is_loggedin']) {
    $user_points = $User->getUserPoints();
    $Smarty->assign('user_points', $user_points);
};

//registers nl2br so it can be used in smarty tpl files
$Smarty->registerPlugin('modifier', 'nl2br', 'nl2br');

//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);
