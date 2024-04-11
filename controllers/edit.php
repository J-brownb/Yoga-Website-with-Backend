<?php
//Get all poses for edit list
$Pose = new Pose($Conn);
$poses = $Pose->getAllPoses();
$Smarty->assign('poses', $poses);

//Edit pose 
if ($_POST) {
    if ($error) {
        $Smarty->assign('error', $error);
    } else {
        $random = substr(str_shuffle(MD5(microtime())), 0, 10);
        $new_filename = $_FILES['new_pose_image']['name'];
    }
    if (move_uploaded_file($_FILES['new_pose_image']['tmp_name'], __DIR__ . '/awad-assignment/user-images/' . $new_filename)) {
        $User = new User($Conn);
        $_POST['new_pose_image'] = $new_filename;
        $pose_id = $_POST['pose_id'];
        $new_pose_name = $_POST['new_pose_name'];
        $new_pose_sanskrit_name = $_POST['new_pose_sanskrit_name'];
        $new_cat_id = $_POST['new_cat_id'];
        $new_pose_image = $_POST['new_pose_image'];
        $new_pose_difficulty = $_POST['new_pose_difficulty'];
        $new_pose_instructions = $_POST['new_pose_instructions'];

        $data = array(
            'pose_id' => $pose_id,
            'new_pose_name' => $new_pose_name,
            'new_pose_sanskrit_name' => $new_pose_sanskrit_name,
            'new_cat_id' => $new_cat_id,
            'new_pose_image' => $new_pose_image,
            'new_pose_difficulty' => $new_pose_difficulty,
            'new_pose_instructions' => $new_pose_instructions
        );

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
