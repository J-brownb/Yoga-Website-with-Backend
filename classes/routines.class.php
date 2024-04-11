<?php
class Routines
{

    protected $Conn;
    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }
    //Adds custom routine to DB
    public function addRoutine($data)
    {
        $data['published_date'] = date('Y-m-d'); // add published_date with today's date
        $total_time = $data['routine_pose_1_time'] + $data['routine_pose_2_time'] + $data['routine_pose_3_time'] + $data['routine_pose_4_time'] + $data['routine_pose_5_time'] + $data['routine_pose_6_time'];
        $query = "INSERT INTO routines (user_id, routine_name, routine_pose_id_1, routine_pose_id_2, routine_pose_id_3, routine_pose_id_4, routine_pose_id_5, routine_pose_id_6, routine_pose_1_time, routine_pose_2_time,routine_pose_3_time, routine_pose_4_time,routine_pose_5_time, routine_pose_6_time, routine_description, published_date, total_time) 
              VALUES (:user_id, :routine_name, :routine_pose_id_1, :routine_pose_id_2, :routine_pose_id_3, :routine_pose_id_4, :routine_pose_id_5, :routine_pose_id_6, 
              :routine_pose_1_time, :routine_pose_2_time,:routine_pose_3_time, :routine_pose_4_time,:routine_pose_5_time, :routine_pose_6_time, :routine_description, :published_date, :total_time)";
        $stmt = $this->Conn->prepare($query);
        $data['user_id'] = $_SESSION['user_data']['user_id'];
        $data['total_time'] = $total_time;

        $result = $stmt->execute($data);

        if ($result) {
            // add user point
            $query = "UPDATE users SET user_points = user_points + 1 WHERE user_id = :user_id";
            $stmt = $this->Conn->prepare($query);
            $stmt->execute(array('user_id' => $_SESSION['user_data']['user_id']));
        }

        return $result;
    }


    //Gets user created routines
    public function getUserRoutines($userId)
    {
        $query = "SELECT routines.*, poses.pose_name, poses.pose_sanskrit_name, poses.pose_image, poses.pose_difficulty, poses.pose_instructions
              FROM routines
              JOIN poses ON routines.routine_pose_id_1 = poses.pose_id
                      OR routines.routine_pose_id_2 = poses.pose_id
                      OR routines.routine_pose_id_3 = poses.pose_id
                      OR routines.routine_pose_id_4 = poses.pose_id
                      OR routines.routine_pose_id_5 = poses.pose_id
                      OR routines.routine_pose_id_6 = poses.pose_id
              WHERE routines.user_id = :userId
            ORDER BY routines.routine_id DESC";

        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':userId', $userId);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    //Gets all routines in DB
    public function getAllRoutines()
    {
        $query = "SELECT routines.*, users.user_name, poses.pose_name, poses.pose_sanskrit_name, poses.pose_image, poses.pose_difficulty, poses.pose_instructions
        FROM routines
        JOIN users ON routines.user_id = users.user_id
        JOIN poses ON routines.routine_pose_id_1 = poses.pose_id
                OR routines.routine_pose_id_2 = poses.pose_id
                OR routines.routine_pose_id_3 = poses.pose_id
                OR routines.routine_pose_id_4 = poses.pose_id
                OR routines.routine_pose_id_5 = poses.pose_id
                OR routines.routine_pose_id_6 = poses.pose_id
                ORDER BY routines.routine_id DESC;
        ";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

//Function to get one routine, joins with routines for pose info
public function getRoutine($routine_id)
{
    $query = "SELECT r.*, 
    -- get all details for pose 
              p1.pose_name AS pose_name_1, p1.pose_sanskrit_name AS pose_sanskrit_name_1, p1.pose_image AS pose_image_1, p1.pose_instructions AS pose_instructions_1,
              p2.pose_name AS pose_name_2, p2.pose_sanskrit_name AS pose_sanskrit_name_2, p2.pose_image AS pose_image_2, p2.pose_instructions AS pose_instructions_2,
              p3.pose_name AS pose_name_3, p3.pose_sanskrit_name AS pose_sanskrit_name_3, p3.pose_image AS pose_image_3, p3.pose_instructions AS pose_instructions_3,
              p4.pose_name AS pose_name_4, p4.pose_sanskrit_name AS pose_sanskrit_name_4, p4.pose_image AS pose_image_4, p4.pose_instructions AS pose_instructions_4,
              p5.pose_name AS pose_name_5, p5.pose_sanskrit_name AS pose_sanskrit_name_5, p5.pose_image AS pose_image_5, p5.pose_instructions AS pose_instructions_5,
              p6.pose_name AS pose_name_6, p6.pose_sanskrit_name AS pose_sanskrit_name_6, p6.pose_image AS pose_image_6, p6.pose_instructions AS pose_instructions_6
              FROM routines r
            --   joined on pose ID
              LEFT JOIN poses p1 ON r.routine_pose_id_1 = p1.pose_id
              LEFT JOIN poses p2 ON r.routine_pose_id_2 = p2.pose_id
              LEFT JOIN poses p3 ON r.routine_pose_id_3 = p3.pose_id
              LEFT JOIN poses p4 ON r.routine_pose_id_4 = p4.pose_id
              LEFT JOIN poses p5 ON r.routine_pose_id_5 = p5.pose_id
              LEFT JOIN poses p6 ON r.routine_pose_id_6 = p6.pose_id
              WHERE r.routine_id = :routine_id";
              
    $stmt = $this->Conn->prepare($query);
    $stmt->execute([
        "routine_id" => $routine_id
    ]);
    return $stmt->fetch(PDO::FETCH_ASSOC);
}


}