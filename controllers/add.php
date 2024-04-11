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

if ($_POST) {

    if ($error) {
        $Smarty->assign('error', $error);
    } else {
        $random = substr(str_shuffle(MD5(microtime())), 0, 10);
        $new_filename = $random . $_FILES['pose_image']['name'];

    }

    if (move_uploaded_file($_FILES['pose_image']['tmp_name'], __DIR__ . '/../user-images/' . $new_filename)) {
        $Pose = new Pose($Conn);
        $_POST['pose_image'] = $new_filename;
        $attempt = $Pose->addPose($_POST);
        if ($attempt) {
            $Smarty->assign('success', "Your pose has been added. Thanks for contributing to the community - a yoga point has been added to your account!");
        } else {
            $Smarty->assign('error', "An error occurred.");
        }
    }

}


//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);
