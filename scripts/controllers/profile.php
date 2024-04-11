<?php

$user_id = $_SESSION['user_data']['user_id'];

$Lesson = new Lesson($Conn);
$completedLessonData = $Lesson->getCompletedLessons($user_id);
$Smarty->assign('completedLessonData', $completedLessonData);

$Lesson = new Lesson($Conn);
$lessonData = $Lesson->getAllLessons($user_id);
$Smarty->assign('lessonData', $lessonData);

$Finances = new Finances($Conn);
$financesData = $Finances->getFinances($user_id);
$Smarty->assign('financesData', $financesData);

$Budget = new Budget($Conn);
$budgetData = $Budget->getBudget($user_id);
$Smarty->assign('budgetData', $budgetData);

$User = new User($Conn);
$userData = $User->getUser($user_id);
$Smarty->assign('userData', $userData);

//update user details 
if ($_POST && isset($_POST['updateDetails'])) {
    $user_id = $_SESSION['user_data']['user_id'];
    $user_data = array(
        'user_first_name' => $_POST['user_first_name'],
        'user_surname' => $_POST['user_surname'],
        'user_email' => $_POST['user_email']
    );

    $update_details = $User->updateDetails($user_id, $user_data);

    if ($update_details) {
        $Smarty->assign('accountSuccess', "Your account details have been updated. The page will refresh shortly and your new details will be available.");
        header("Refresh: 3");
    } else {
        $Smarty->assign('accountError', "Account details update failed. Please try again.");
    }
}

//change password
if ($_POST && isset($_POST['currentPassword']) && isset($_POST['newPassword'])) {
    $change_pass = $User->updatePassword(
        $_POST['currentPassword'],
        $_POST['newPassword']
    );
    if ($change_pass) {
        $Smarty->assign('passwordSuccess', "Password has been updated.");
    } else {
        $Smarty->assign('passwordError', "Password update failed. Please try again.");
    }
}
