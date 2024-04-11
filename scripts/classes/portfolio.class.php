<?php
class Portfolio
{
    protected $Conn;

    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    public function updatePortfolio($data)
    {
        $query = "INSERT INTO user_portfolio (stock_name, stock_price, number_shares, user_id, stock_currency)
                  VALUES (:stock_name, :stock_price, :number_shares, :user_id, :stock_currency)";

        $stmt = $this->Conn->prepare($query);
        $data['user_id'] = $_SESSION['user_data']['user_id'];
        return $stmt->execute($data);
    }

    public function getPortfolio($user_id)
    {
        $query = "SELECT * FROM user_portfolio WHERE user_id = :user_id ORDER BY number_shares DESC";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function deletePortfolioEntry($submission_id, $user_id)
    {
        $query = "DELETE FROM user_portfolio WHERE submission_id = :submission_id AND user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':submission_id', $submission_id, PDO::PARAM_INT);
        $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $success = $stmt->execute();
        return $success;
    }

    //comments
    public function addComments($data)
    {
        $query = "INSERT INTO stock_comments (user_id, stock_id, comment, comment_date) VALUES (:user_id, :stock_id, :comment, NOW())";
        $stmt = $this->Conn->prepare($query);
        $data['user_id'] = $_SESSION['user_data']['user_id'];
        return $stmt->execute($data);

    }

    public function getComments($stock_id)
    {   
        $query = "
            SELECT stock_comments.*, users.user_first_name
            FROM stock_comments 
            JOIN users ON stock_comments.user_id = users.user_id
            WHERE stock_comments.stock_id = :stock_id 
            ORDER BY stock_comments.submission_id DESC
        ";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':stock_id', $stock_id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    

}

