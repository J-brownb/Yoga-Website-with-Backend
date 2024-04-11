<?php
class Budget {
    protected $Conn;
    public function __construct($Conn) {
        $this->Conn = $Conn;
    }

    // Adds budget data to DB
    public function updateBudget($data) {

        // Insert the budget data into the database
        $query = "INSERT INTO budget (
            user_id, income, utilities, car_and_transport, food_and_drink, mortgage_rent, insurance, council_tax,
            internet, mobile_phone, tv_subscriptions, shopping, eating_out,
            health_and_beauty, clothes, loan_repayments, credit_card_repayments,
            regular_savings, regular_investments, other, additional_income, input_date
        ) VALUES (
            :user_id, :income, :utilities, :car_and_transport, :food_and_drink, :mortgage_rent, :insurance, :council_tax,
            :internet, :mobile_phone, :tv_subscriptions, :shopping, :eating_out,
            :health_and_beauty, :clothes, :loan_repayments, :credit_card_repayments,
            :regular_savings, :regular_investments, :other, :additional_income, NOW()
        )";

        $stmt = $this->Conn->prepare($query);
        $data['user_id'] = $_SESSION['user_data']['user_id'];
        return $stmt->execute($data);
    }

    //get all budget data for user
    public function getAllBudget($user_id) {
        $query = "SELECT * FROM budget WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    //get most recent input
    public function getBudget($user_id) {
        $query = "SELECT * FROM budget WHERE user_id = :user_id ORDER BY submission_id DESC LIMIT 1";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    //get top 5 categories
    public function getTopCats($user_id, $limit) {
        $query = "SELECT 
                category,
                max_5_values
            FROM (
                SELECT 'Utilities' AS category, utilities AS max_5_values FROM budget WHERE utilities > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Car & Transport' AS category, car_and_transport AS max_5_values FROM budget WHERE car_and_transport > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Food & Drink' AS category, food_and_drink AS max_5_values FROM budget WHERE food_and_drink > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Mortgage/Rent' AS category, mortgage_rent AS max_5_values FROM budget WHERE mortgage_rent > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Insurance' AS category, insurance AS max_5_values FROM budget WHERE insurance > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Council Tax' AS category, council_tax AS max_5_values FROM budget WHERE council_tax > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Internet' AS category, internet AS max_5_values FROM budget WHERE internet > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Mobile Phone' AS category, mobile_phone AS max_5_values FROM budget WHERE mobile_phone > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'TV Subscriptions' AS category, tv_subscriptions AS max_5_values FROM budget WHERE tv_subscriptions > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Shopping' AS category, shopping AS max_5_values FROM budget WHERE shopping > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Eating Out' AS category, eating_out AS max_5_values FROM budget WHERE eating_out > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Health & Beauty' AS category, health_and_beauty AS max_5_values FROM budget WHERE health_and_beauty > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Clothes' AS category, clothes AS max_5_values FROM budget WHERE clothes > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Loan Repayments' AS category, loan_repayments AS max_5_values FROM budget WHERE loan_repayments > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Credit Card Repayments' AS category, credit_card_repayments AS max_5_values FROM budget WHERE credit_card_repayments > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Regular Savings' AS category, regular_savings AS max_5_values FROM budget WHERE regular_savings > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Regular Investments' AS category, regular_investments AS max_5_values FROM budget WHERE regular_investments > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Other' AS category, other AS max_5_values FROM budget WHERE other > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
            ) AS category_values
            ORDER BY max_5_values DESC
            LIMIT $limit;
        ";

        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }


    //gets the max from all cats and sorts, ingores 0 
    public function getAllCats($user_id) {
        $query = "SELECT 
                category,
                max_value
            FROM (
                SELECT 'Utilities' AS category, utilities AS max_value FROM budget WHERE utilities > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Car & Transport' AS category, car_and_transport AS max_value FROM budget WHERE car_and_transport > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Food & Drink' AS category, food_and_drink AS max_value FROM budget WHERE food_and_drink > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Mortgage/Rent' AS category, mortgage_rent AS max_value FROM budget WHERE mortgage_rent > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Insurance' AS category, insurance AS max_value FROM budget WHERE insurance > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Council Tax' AS category, council_tax AS max_value FROM budget WHERE council_tax > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Internet' AS category, internet AS max_value FROM budget WHERE internet > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Mobile Phone' AS category, mobile_phone AS max_value FROM budget WHERE mobile_phone > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'TV Subscriptions' AS category, tv_subscriptions AS max_value FROM budget WHERE tv_subscriptions > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Shopping' AS category, shopping AS max_value FROM budget WHERE shopping > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Eating Out' AS category, eating_out AS max_value FROM budget WHERE eating_out > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Health & Beauty' AS category, health_and_beauty AS max_value FROM budget WHERE health_and_beauty > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Clothes' AS category, clothes AS max_value FROM budget WHERE clothes > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Loan Repayments' AS category, loan_repayments AS max_value FROM budget WHERE loan_repayments > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Credit Card Repayments' AS category, credit_card_repayments AS max_value FROM budget WHERE credit_card_repayments > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Regular Savings' AS category, regular_savings AS max_value FROM budget WHERE regular_savings > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Regular Investments' AS category, regular_investments AS max_value FROM budget WHERE regular_investments > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
                UNION
                SELECT 'Other' AS category, other AS max_value FROM budget WHERE other > 0 AND submission_id = (SELECT MAX(submission_id) FROM budget)
            ) AS category_values
            ORDER BY max_value DESC;
        ";

        $stmt = $this->Conn->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }


}

