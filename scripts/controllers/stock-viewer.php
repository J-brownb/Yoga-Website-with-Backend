<?php

$user_id = $_SESSION['user_data']['user_id'];
$Portfolio = new Portfolio($Conn);
$portfolioData = $Portfolio->getPortfolio($user_id);
$Smarty->assign('portfolioData', $portfolioData);

//update portfolio
if ($_POST && isset($_POST['submitPortfolio'])) {
    $data = array(
        'user_id' => $_SESSION['user_data']['user_id'],
        'stock_name' => $_POST['stock_name'],
        'stock_price' => $_POST['stock_price'],
        'number_shares' => $_POST['number_shares'],
        'stock_currency' => $_POST['stock_currency'],
    );

    $Portfolio = new Portfolio($Conn);
    $result = $Portfolio->updatePortfolio($data);

    if ($result) {
        $Smarty->assign('portfolioSuccess', "Portfolio updated successfully. The page will refresh shortly and your updated portfolio will be available.");
        header("Refresh: 3");

    } else {
        $Smarty->assign('portfolioError', "Failed to update portfolio. Please try again.");
    }
}

//search stocks 

// $Smarty->assign('loading', false);


if ($_POST && isset($_POST['searchStocks'])) {
    // $Smarty->assign('loading', true);

    $ch = curl_init();
    $apiKey = 'NUitDoAN3h2tzYVpESbyac';
    $searchTerm = $_POST['searchTerm'] ?? '';

    // API call
    curl_setopt_array($ch, [
        CURLOPT_URL => "https://fcsapi.com/api-v3/stock/search?s=" . urlencode($searchTerm) . "&access_key=" . $apiKey,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
    ]);

    $output = curl_exec($ch);
    $err = curl_error($ch);
    curl_close($ch);
    // var_dump($output);
    if ($err) {
        echo "cURL Error #:" . $err;
    } else {
        $results = json_decode($output, true);
        if (!empty($results['response'])) {
            $Smarty->assign('searchResults', $results);

        } else {
            $Smarty->assign('searchResults', []);
            $Smarty->assign('error', "No results found! Please try a different term.");

        }
    }
    // $Smarty->assign('loading', false);

}

//delete portfolio
if ($_POST && isset($_POST['submission_id'])) {
    $submission_id = $_POST['submission_id'];

    $Portfolio = new Portfolio($Conn);
    $deleted_portfolio = $Portfolio->deletePortfolioEntry($submission_id, $user_id);

    if ($deleted_portfolio) {
        $Smarty->assign('deleteSuccess', "Portfolio updated successfully. The page will refresh shortly and your updated portfolio will be available.");
        header("Refresh: 3");
    } else {
        $Smarty->assign('deleteError', "Failed to delete entry. Please try again.");
    }
}


