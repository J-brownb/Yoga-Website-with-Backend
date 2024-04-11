<?php
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
}

//Add new routine 
if ($_POST) {
    $data = array(
        'routine_name' => $_POST['routine_name'],
        'routine_pose_id_1' => $_POST['routine_pose_id_1'],
        'routine_pose_1_time' => $_POST['pose1_time'],
        'routine_pose_2_time' => $_POST['pose2_time'],
        'routine_pose_3_time' => $_POST['pose3_time'],
        'routine_pose_4_time' => $_POST['pose4_time'],
        'routine_pose_5_time' => $_POST['pose5_time'],
        'routine_pose_6_time' => $_POST['pose6_time'],
        'routine_pose_id_2' => $_POST['routine_pose_id_2'],
        'routine_pose_id_3' => $_POST['routine_pose_id_3'],
        'routine_pose_id_4' => $_POST['routine_pose_id_4'],
        'routine_pose_id_5' => $_POST['routine_pose_id_5'],
        'routine_pose_id_6' => $_POST['routine_pose_id_6'],
        'routine_description' => $_POST['routine_description']
    );

    $Routine = new Routines($Conn);
    $result = $Routine->addRoutine($data);

    // Check if the routine was successfully added
    if ($result) {
        $success = "Your routine has been added. Thanks for contributing to the community - a yoga point has been added to your account!";
        $Smarty->assign("success", $success);
    } else {
        $error = "Sorry, there was an error adding your routine. Please try again.";
        $Smarty->assign("error", $error);
    }
}


//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);
