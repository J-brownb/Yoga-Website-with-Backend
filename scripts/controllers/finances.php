<?php
$user_id = $_SESSION['user_data']['user_id'];

$Finances = new Finances($Conn);
$financesData = $Finances->getFinances($user_id);
$Smarty->assign('financesData', $financesData);

$Finances = new Finances($Conn);
$prevFinancesData = $Finances->getPrevFinances($user_id);
$Smarty->assign('prevFinancesData', $prevFinancesData);

$allFinancesData = $Finances->getAllFinances($user_id);
$Smarty->assign('allFinancesData', $allFinancesData);

$User = new User($Conn);
$userData = $User->getUser($user_id);
$Smarty->assign('userData', $userData);


if ($_POST && isset($_POST['savings_goal'])) {
    $Finances = new Finances($Conn);
    $goalResult = $Finances->setSavingsGoal(['savings_goal' => $_POST['savings_goal']]);
    if ($goalResult) {
        $Smarty->assign('goalSuccess', "Goal updated successfully. The page will refresh shortly.");
        header("Refresh: 3");

    } else {
        $Smarty->assign('error', "Failed to set goal. Please try again.");
    }
}

if ($_POST && isset($_POST['investment_goal'])) {
    $Finances = new Finances($Conn);
    $goalResult = $Finances->setInvestmentGoal(['investment_goal' => $_POST['investment_goal']]);
    if ($goalResult) {
        $Smarty->assign('goalSuccess', "Goal updated successfully. The page will refresh shortly.");
        header("Refresh: 3");

    } else {
        $Smarty->assign('error', "Failed to set goal. Please try again.");
    }
}

if ($_POST && isset($_POST['networthGoal'])) {
    $Finances = new Finances($Conn);
    $goalResult = $Finances->setNetWorthGoal(['net_worth_goal' => $_POST['net_worth_goal']]);
    if ($goalResult) {
        $Smarty->assign('goalSuccess', "Goal updated successfully. The page will refresh shortly.");
        header("Refresh: 3");

    } else {
        $Smarty->assign('error', "Failed to set goal. Please try again.");
    }
}


//update finance details
if ($_POST && isset($_POST['submitFinances'])) {
    $data = array(
        'user_id' => $_SESSION['user_data']['user_id'],
        'savings_current_account' => $_POST['savings_current_account'],
        'savings_account1' => $_POST['savings_account1'],
        'savings_account1_interest' => $_POST['savings_account1_interest'],
        'savings_account2' => $_POST['savings_account2'],
        'savings_account2_interest' => $_POST['savings_account2_interest'],
        'savings_account3' => $_POST['savings_account3'],
        'savings_account3_interest' => $_POST['savings_account3_interest'],
        'savings_investments' => $_POST['savings_investments'],
        'savings_other' => $_POST['savings_other'],
    );

    $Finances = new Finances($Conn);
    $result = $Finances->updateFinances($data);

    if ($result) {
        $Smarty->assign('success', "Finances updated successfully. The page will refresh shortly and your insights will be available.");
        header("Refresh: 3");



    } else {
        $Smarty->assign('error', "Failed to update finances. Please try again.");
    }
}
