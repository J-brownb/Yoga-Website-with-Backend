<?php

//get featured poses 
$Pose = new Pose($Conn);
$poses = $Pose->getFeaturedPoses();
$Smarty->assign('poses', $poses);

//get user points if logged in 
if ($_SESSION['is_loggedin']) {
    $user_points = $User->getUserPoints();
    $Smarty->assign('user_points', $user_points);
}

//get category list for menu
$Category = new Category($Conn);
$categories = $Category->getAllCategories();
$Smarty->assign('categories', $categories);

//get user points if logged in 
if ($_SESSION['is_loggedin']) {
    $user_points = $User->getUserPoints();
    $Smarty->assign('user_points', $user_points);
};


//gets featured cat
$featured_category = new Category($Conn);
$featured_category = $Category->getFeaturedCategory();
$Smarty->assign('featured_category', $featured_category);

// Quote API
$ch = curl_init();
$apikey = "gmIBEECCZrQsin5xQH6KEA==JaIyg13mvczmyLxX";
$headers = array(
    'X-Api-Key: ' . $apikey
);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_URL, "https://api.api-ninjas.com/v1/quotes?category=happiness");
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
$output = curl_exec($ch);
curl_close($ch);
$output = json_decode($output, true);
$Smarty->assign('quote', $output);

//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);
