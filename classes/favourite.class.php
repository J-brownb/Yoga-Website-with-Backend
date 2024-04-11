<?php
class Favourite
{
    protected $Conn;
    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    //checks if pose is a favourite already
    public function isFavourite($pose_id)
    {
        $query = "SELECT * FROM user_pose_favs WHERE user_id = :user_id AND pose_id = :pose_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "user_id" => $_SESSION['user_data']['user_id'],
            "pose_id" => $pose_id
        ]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    //toggles favourite status
    public function toggleFavourite($pose_id)
    {
        // Check if pose is already favourite
        $is_favourite = $this->isFavourite($pose_id);
        if ($is_favourite) {
            // Is already favourite - so remove.
            $query = "DELETE FROM user_pose_favs WHERE fav_id = :fav_id";
            $stmt = $this->Conn->prepare($query);
            $stmt->execute([
                "fav_id" => $is_favourite['fav_id']
            ]);
            return false; // Return false for "removed"
        } else if (!$is_favourite) {
            // Is not favourite - so add
            $query = "INSERT INTO user_pose_favs (user_id, pose_id) VALUES (:user_id, :pose_id)";
            $stmt = $this->Conn->prepare($query);
            return $stmt->execute(
                array(
                    "user_id" => $_SESSION['user_data']['user_id'],
                    "pose_id" => $pose_id
                )
            );
        }
        return true; // Return false for "added"

    }

    //Gets user faves
    public function getUserFaves($userId)
    {
        $query = "SELECT user_pose_favs.*, poses.pose_name, poses.pose_sanskrit_name, poses.pose_image, poses.pose_difficulty, poses.pose_instructions
                 FROM user_pose_favs
                 JOIN poses ON user_pose_favs.pose_id = poses.pose_id
                 WHERE user_pose_favs.user_id = :userId
                 ORDER BY pose_id DESC";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':userId', $userId);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }



}