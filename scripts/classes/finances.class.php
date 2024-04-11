<?php
class Finances
{
    protected $Conn;
    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    public function updateFinances($data)
    {
        // Calculate the total funds, check they exist first otherwise non numeric error shows - maybe a more succint solution available?
        $totalFunds = 0;
        if (isset($data['savings_current_account']) && is_numeric($data['savings_current_account'])) {
            $totalFunds += $data['savings_current_account'];
        }
        if (isset($data['savings_account1']) && is_numeric($data['savings_account1'])) {
            $totalFunds += $data['savings_account1'];
        }
        if (isset($data['savings_account2']) && is_numeric($data['savings_account2'])) {
            $totalFunds += $data['savings_account2'];
        }
        if (isset($data['savings_account3']) && is_numeric($data['savings_account3'])) {
            $totalFunds += $data['savings_account3'];
        }
        if (isset($data['savings_investments']) && is_numeric($data['savings_investments'])) {
            $totalFunds += $data['savings_investments'];
        }
        if (isset($data['savings_other']) && is_numeric($data['savings_other'])) {
            $totalFunds += $data['savings_other'];
        }
        
        $totalSavings = 0;
        if (isset($data['savings_account1']) && is_numeric($data['savings_account1'])) {
            $totalSavings += $data['savings_account1'];
        }
        if (isset($data['savings_account2']) && is_numeric($data['savings_account2'])) {
            $totalSavings += $data['savings_account2'];
        }
        if (isset($data['savings_account3']) && is_numeric($data['savings_account3'])) {
            $totalSavings += $data['savings_account3'];
        }
        if (isset($data['savings_other']) && is_numeric($data['savings_other'])) {
            $totalSavings += $data['savings_other'];
        }
        
        // Insert the finances data into the database 
        $query = "INSERT INTO finances (savings_current_account, savings_account1, savings_account1_interest,
                  savings_account2, savings_account2_interest, savings_account3, savings_account3_interest,
                  savings_investments, savings_other, total_funds, total_savings, input_date, user_id)
                  VALUES (:savings_current_account, :savings_account1, :savings_account1_interest,
                  :savings_account2, :savings_account2_interest, :savings_account3, :savings_account3_interest,
                  :savings_investments, :savings_other, :total_funds, :total_savings, NOW(), :user_id)";

        $stmt = $this->Conn->prepare($query);

        $data['total_funds'] = $totalFunds;
        $data['total_savings'] = $totalSavings;
        $data['user_id'] = $_SESSION['user_data']['user_id'];

        return $stmt->execute($data);
    }

    //set savings goal
    public function setSavingsGoal($data)
    {
        $query = "UPDATE users SET savings_goal = :savings_goal WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $data['user_id'] = $_SESSION['user_data']['user_id'];
        $stmt->bindParam(':user_id', $data['user_id']);
        $stmt->bindParam(':savings_goal', $data['savings_goal']);
        return $stmt->execute();
    }

     //set investment goal
    public function setInvestmentGoal($data)
    {
        $query = "UPDATE users SET investment_goal = :investment_goal WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $data['user_id'] = $_SESSION['user_data']['user_id'];
        $stmt->bindParam(':user_id', $data['user_id']);
        $stmt->bindParam(':investment_goal', $data['investment_goal']);
        return $stmt->execute();
    }

     //set net worth goal
    public function setNetWorthGoal($data)
    {
        $query = "UPDATE users SET net_worth_goal = :net_worth_goal WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $data['user_id'] = $_SESSION['user_data']['user_id'];
        $stmt->bindParam(':user_id', $data['user_id']);
        $stmt->bindParam(':net_worth_goal', $data['net_worth_goal']);
        return $stmt->execute();
    }

    //get most recent finance entry
    public function getFinances($user_id)
    {
        $query = "SELECT * FROM finances WHERE user_id = :user_id ORDER BY submission_id DESC LIMIT 1";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    //gets the previous finance entry, for comparison
    public function getPrevFinances($user_id)
{
    $query = "SELECT * FROM finances WHERE user_id = :user_id ORDER BY submission_id DESC LIMIT 1 OFFSET 1";
    $stmt = $this->Conn->prepare($query);
    $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}


    //get all finances for user
    public function getAllFinances($user_id)
    {
        $query = "SELECT * FROM finances WHERE user_id = :user_id ORDER BY submission_id ASC";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);

    }

// Remove finance entry
public function deleteEntry($submission_id, $user_id)
{
    /* as a hidden field is being used for the sub id, checking the user id prevents users from being able to amend the field and delete other user's entries. 
    They could delete their own other entries by amending this field if they really wanted to.*/
    $query = "DELETE FROM finances WHERE submission_id = :submission_id AND user_id = :user_id";
    $stmt = $this->Conn->prepare($query);
    $stmt->bindParam(':submission_id', $submission_id, PDO::PARAM_INT);
    $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
    $success = $stmt->execute();
    return $success;
}

    //remove budget entry
    public function deleteBudgetEntry($submission_id, $user_id)
    {
        $query = "DELETE FROM budget WHERE submission_id = :submission_id AND user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':submission_id', $submission_id, PDO::PARAM_INT);
        $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $success = $stmt->execute();
        return $success;
    }


}