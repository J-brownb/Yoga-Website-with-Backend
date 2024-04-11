<?php
$ch = curl_init();
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_URL, 'https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/ipswich?unitGroup=metric&key=SNJXA2TKPSX2QQLTQTH6SS6LY&contentType=json');
$output = curl_exec($ch);
curl_close($ch);
$output = json_decode($output, true);
//Arrays for dates and moon phases 
$moon_phases = array();
$dates = array();

$Moon = new Moon($Conn);
setlocale(LC_TIME, 'en_US.UTF-8');

//Getting moon phase for each day 
foreach ($output['days'] as $day) {
    $moon_phase_number = $day['moonphase'];
    $moon_phase = $Moon->getMoonPhase($moon_phase_number);
    $moon_phases[] = $moon_phase;

    // Format date
    $date = new DateTime($day['datetime']);
    $formatted_date = $date->format('l jS F');
    $dates[] = $formatted_date;

}


$Smarty->assign('moon_phases', $moon_phases);
$Smarty->assign('dates', $dates);

//Getting todays moon phase for header 
$today = $output['days'][0]['moonphase'];
$today_moon_phase = $Moon->getMoonPhase($today);
$Smarty->assign('today_moon_phase', $today_moon_phase);



//get category list for menu
$Category = new Category($Conn);
$categories = $Category->getAllCategories();
$Smarty->assign('categories', $categories);

//get user points if logged in 
if ($_SESSION['is_loggedin']) {
    $user_points = $User->getUserPoints();
    $Smarty->assign('user_points', $user_points);
}