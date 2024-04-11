<?php
$user_id = $_SESSION['user_data']['user_id'];

$Finances = new Finances($Conn);
$financesData = $Finances->getFinances($user_id);
$Smarty->assign('financesData', $financesData);

$Budget = new Budget($Conn);
$budgetData = $Budget->getBudget($user_id);
$Smarty->assign('budgetData', $budgetData);

$allFinancesData = $Finances->getAllFinances($user_id);
$Smarty->assign('allFinancesData', $allFinancesData);