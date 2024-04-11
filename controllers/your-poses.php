<?php
//Get all poses 
$Pose = new Pose($Conn);
$poses = $Pose->getAllPoses();
$Smarty->assign('poses', $poses);

//Get all categories for menu
$Category = new Category($Conn);
$categories = $Category->getAllCategories();
$Smarty->assign('categories', $categories);

//Get user uploaded poses 
$Poses = new Pose($Conn);
$poses = $Poses->getUserPoses($_SESSION['user_data']['user_id']);
$Smarty->assign('Poses', $poses);

//Removing a pose they have uploaded 
$Pose = new Pose($Conn);
//deleting pose
if (isset($_POST['deletePose'])) {
    $pose_id = $_POST['pose_id'];


    if (isset($_POST['confirm-delete'])) {
        $Pose->deletePose($pose_id);
        $Smarty->assign('success', "The pose has been deleted. Please refresh the page.");

    } else {
// confirm delete 
        $pose = $Pose->getPose($pose_id);
        $Smarty->assign('pose', $pose);
        $Smarty->display('pages/confirm-delete-pose.tpl');
        exit();

    }
}
//editing pose 

if (isset($_POST['editPose'])) {
    $pose_id = $_POST['pose_id'];
    $pose = new Pose($Conn);
    $selected_pose = $pose->getPose($pose_id);
    $Smarty->assign('selected_pose', $selected_pose);
    $Smarty->display('pages/edit.tpl');
    exit();


}

//editing pose 
if ($_POST) {
    if ($error) {
        $Smarty->assign('error', $error);
    } else {
        $random = substr(str_shuffle(MD5(microtime())), 0, 10);
        $new_filename = $_FILES['new_pose_image']['name'];
    }
    if (move_uploaded_file($_FILES['new_pose_image']['tmp_name'], __DIR__ . '/../user-images/' . $new_filename)) {
        $User = new User($Conn);
        $_POST['new_pose_image'] = $new_filename;
        $pose_id = $_POST['pose_id'];
        $new_pose_name = $_POST['new_pose_name'];
        $new_pose_sanskrit_name = $_POST['new_pose_sanskrit_name'];
        $new_cat_id = $_POST['new_cat_id'];
        $new_pose_image = $_POST['new_pose_image'];
        $new_pose_difficulty = $_POST['new_pose_difficulty'];
        $new_pose_instructions = $_POST['new_pose_instructions'];

        // Create array with pose data
        $data = array(
            'pose_id' => $pose_id,
            'new_pose_name' => $new_pose_name,
            'new_pose_sanskrit_name' => $new_pose_sanskrit_name,
            'new_cat_id' => $new_cat_id,
            'new_pose_image' => $new_pose_image,
            'new_pose_difficulty' => $new_pose_difficulty,
            'new_pose_instructions' => $new_pose_instructions
        );

        // Update pose data
        $result = $Pose->editPose($data);

        // Success
        if ($result) {
            $Smarty->assign('success', "Your pose has been edited.");
        } else {
            // Error
            $Smarty->assign('error', "An error occurred.");
        }
    }
}


//get user points if logged in 
if ($_SESSION['is_loggedin']) {
    $user_points = $User->getUserPoints();
    $Smarty->assign('user_points', $user_points);
}

//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);
