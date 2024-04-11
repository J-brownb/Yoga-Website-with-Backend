<?php

class Leaderboards
{
    protected $Conn;
    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    //gets points of users for leaderboard 
    public function getUsersByPoints()
    {
        $query = "SELECT * FROM users ORDER BY user_points DESC";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $users;
    }
}