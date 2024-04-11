<?php
$stock_id = $_GET['id'];

$user_id = $_SESSION['user_data']['user_id'];
$Portfolio = new Portfolio($Conn);
$portfolioData = $Portfolio->getPortfolio($user_id);
$Smarty->assign('portfolioData', $portfolioData);


$ch = curl_init();
$apiKey = 'NUitDoAN3h2tzYVpESbyac';
$stock_id = $_GET['id'];

// API call for profile
curl_setopt_array($ch, [
    CURLOPT_URL => "https://fcsapi.com/api-v3/stock/profile?id=" . $stock_id . "&access_key=" . $apiKey,
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
        $Smarty->assign('stockDetails', $results);
    } else {
        $Smarty->assign('stockDetails', []);
        $Smarty->assign('error', "No results found! Please try a different term.");
    }
}

// API call for prices
$ch_prices = curl_init();
curl_setopt_array($ch_prices, [
    CURLOPT_URL => "https://fcsapi.com/api-v3/stock/latest?id=" . $stock_id . "&access_key=" . $apiKey,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "GET",
]);

$priceOutput = curl_exec($ch_prices);
$err_prices = curl_error($ch_prices);
curl_close($ch_prices);
// var_dump($priceOutput);


if ($err_prices) {
    echo "cURL Error #:" . $err_prices;
} else {
    $results_prices = json_decode($priceOutput, true);

    if (!empty($results_prices['response'])) {
        $Smarty->assign('priceDetails', $results_prices);

    } else {
        $Smarty->assign('priceDetails', []);
        $Smarty->assign('error', "No price details found. Please try a different stock.");
    }
}
$bizLogo = $results['response'][0]['info']['website'];
$Smarty->assign('bizLogo', $bizLogo);


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
        $Smarty->assign('success', "Portfolio updated successfully. The page will refresh shortly and your updated portfolio will be available.");
        header("Refresh: 3");

    } else {
        $Smarty->assign('error', "Failed to update portfolio. Please try again.");
    }
}

//delete portfolio
if ($_POST && isset($_POST['submission_id'])) {
    $submission_id = $_POST['submission_id'];

    $Portfolio = new Portfolio($Conn);
    $deleted_portfolio = $Portfolio->deletePortfolioEntry($submission_id, $user_id);

    if ($deleted_portfolio) {
        $Smarty->assign('deleteSuccess', "This entry has been deleted. The page will refresh shortly and your entries list will be updated.");
        header("Refresh: 3");
    } else {
        $Smarty->assign('deleteError', "Failed to delete entry. Please try again.");
    }
}

//add comments
if ($_POST && isset($_POST['stockComment'])) {
    $data = array(
        'stock_id' => $_GET['id'],
        'user_id' => $_SESSION['user_data']['user_id'],
        'comment' => $_POST['comment']

    );
    $Portfolio = new Portfolio($Conn);
    $result = $Portfolio->addComments($data);

    if ($result) {
        $Smarty->assign('commentSuccess', "Comment added successfully.");
        // header("Refresh: 3");

    } else {
        $Smarty->assign('commentError', "Failed to add comment. Please try again.");
    }
}

//get comments

$Comments = $Portfolio->getComments($stock_id);
$Smarty->assign('Comments', $Comments);

//get comments for stock


// $chNews = curl_init();

// curl_setopt_array($chNews, [
//     CURLOPT_URL => "https://duckduckgo10.p.rapidapi.com/search/news?term=tesla&region=wt-wt&safeSearch=off",
//     CURLOPT_RETURNTRANSFER => true,
//     CURLOPT_ENCODING => "",
//     CURLOPT_MAXREDIRS => 10,
//     CURLOPT_TIMEOUT => 30,
//     CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
//     CURLOPT_CUSTOMREQUEST => "GET",
//     CURLOPT_HTTPHEADER => [
//         "X-RapidAPI-Host: duckduckgo10.p.rapidapi.com",
//         "X-RapidAPI-Key: 93a1747e2cmsh37117e509704babp13eb9fjsn4861d9822a66"
//     ],
// ]);

// $response = curl_exec($chNews);
// $err = curl_error($chNews);

// curl_close($chNews);

// if ($err) {
//     echo "cURL Error #:" . $err;
// } else {
//     // Convert JSON string to associative array
//     $data = json_decode($response, true);
// var_dump($data);
//     // Pass the news items array to your template
//     $Smarty->assign('newsItems', $data);
//     var_dump($newsItems);


// }
