<?php
function smarty_modifier_my_number_format($number, $currency = 'GBP') {
    // Create a NumberFormatter instance for GBP currency
    $formatter = new NumberFormatter('en_GB', NumberFormatter::CURRENCY);

    // Format the currency value
    $formattedCurrency = $formatter->formatCurrency($number, $currency);
    
    // Remove the currency symbol (£)
    $formattedCurrency = trim($formattedCurrency, '£');
    
    return $formattedCurrency;
}


function smarty_modifier_my_json_encode($string) {
    return json_encode($string);
}


