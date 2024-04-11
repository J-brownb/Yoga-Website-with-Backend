<?php
$user_id = $_SESSION['user_data']['user_id'];
$Budget = new Budget($Conn);
$budgetData = $Budget->getBudget($user_id);
$Smarty->assign('budgetData', $budgetData);

$topSpend = $Budget->getTopCats($user_id, 5);
$Smarty->assign('topSpend', $topSpend);

$topSpend1 = $Budget->getTopCats($user_id, 1);
$Smarty->assign('topSpend1', $topSpend1);

$allCats = $Budget->getAllCats($user_id);
$Smarty->assign('allCats', $allCats);


//updating budget
if ($_POST) {
    $data = array(
        'user_id' => $_SESSION['user_data']['user_id'],
        'income' => $_POST['income'],
        'utilities' => $_POST['utilities'],
        'car_and_transport' => $_POST['car_and_transport'],
        'food_and_drink' => $_POST['food_and_drink'],
        'mortgage_rent' => $_POST['mortgage_rent'],
        'insurance' => $_POST['insurance'],
        'council_tax' => $_POST['council_tax'],
        'internet' => $_POST['internet'],
        'mobile_phone' => $_POST['mobile_phone'],
        'tv_subscriptions' => $_POST['tv_subscriptions'],
        'shopping' => $_POST['shopping'],
        'eating_out' => $_POST['eating_out'],
        'health_and_beauty' => $_POST['health_and_beauty'],
        'clothes' => $_POST['clothes'],
        'loan_repayments' => $_POST['loan_repayments'],
        'credit_card_repayments' => $_POST['credit_card_repayments'],
        'regular_savings' => $_POST['regular_savings'],
        'regular_investments' => $_POST['regular_investments'],
        'other' => $_POST['other'],
        'additional_income' => $_POST['additional_income'],
    );

    $Budget = new Budget($Conn);
    $result = $Budget->updateBudget($data);

    if ($result) {
        $Smarty->assign('success', "Budget updated successfully. The page will refresh shortly and your insights will be available.");
        header("Refresh: 3");
    } else {
        $Smarty->assign('error', "Failed to update budget. Please try again.");
    }
}
