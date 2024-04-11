<?php
$user_id = $_SESSION['user_data']['user_id'];
$Finances = new Finances($Conn);
$allFinancesData = $Finances->getAllFinances($user_id);
$Smarty->assign('allFinancesData', $allFinancesData);

$Budgets = new Budget($Conn);
$allBudgetData = $Budgets->getAllBudget($user_id);
$Smarty->assign('allBudgetData', $allBudgetData);

//update pay details 
if ($_POST && isset($_POST['user_pay_frequency']) && isset($_POST['user_pay'])) {
    $User = new User($Conn);
    $user_id = $_SESSION['user_data']['user_id'];
    $user_data = array(
        'user_pay_frequency' => $_POST['user_pay_frequency'],
        'user_pay' => $_POST['user_pay'],
        'user_next_payday' => $_POST['user_next_payday'],

    );
    $User->updatePay($user_id, $user_data);

    $result = $User->updatePay($user_id, $user_data);

    if ($result) {
        $Smarty->assign('paySuccess', "Pay updated successfully.");
    } else {
        $Smarty->assign('payError', "Failed to update pay. Please try again.");
    }
}


// delete finance entries
if ($_POST && isset($_POST['submission_id'])) {
    $submission_id = $_POST['submission_id'];

    // Call the deleteEntry method and check for success
    $deleted_finance = $Finances->deleteEntry($submission_id, $user_id);

    if ($deleted_finance) {
        $Smarty->assign('financeSuccess', "This entry has been deleted. The page will refresh shortly and your entries list will be updated.");
        header("Refresh: 3");
    } else {
        $Smarty->assign('financeError', "Failed to delete entry. Please try again.");
    }
}

//delete budget entry
if ($_POST && isset($_POST['budget_submission_id'])) {
    $submission_id = $_POST['budget_submission_id'];

    $deleted_budget = $Finances->deleteBudgetEntry($submission_id, $user_id);

    if ($deleted_budget) {
        $Smarty->assign('budgetSuccess', "This budget entry has been deleted. The page will refresh shortly and your entries list will be updated.");
        header("Refresh: 3");
    } else {
        $Smarty->assign('budgetError', "Failed to delete entry. Please try again.");
    }
}







