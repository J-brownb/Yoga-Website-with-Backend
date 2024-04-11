<?php
class Lessons
{
    protected $Conn;
    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    //get all lessons
    public function getAllLessons()
    {
        $query = "SELECT * FROM lessons";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }


}