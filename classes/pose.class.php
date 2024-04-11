<?php
class Pose
{
    protected $Conn;

    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    //Adds pose to DB
    public function addPose($data)
    {
        // Create pose slug
        $slug = $this->createSlug($data['pose_name']);

        //existing slug checker, if exists increment by 1 and append to url
        $existingPose = $this->getPoseBySlug($slug);
        $i = 1;
        while ($existingPose) {
            // add $i to url 
            $slug = $this->createSlug($data['pose_name']) . '-' . $i;
            $existingPose = $this->getPoseBySlug($slug);
            $i++;
        }
        $data['pose_slug'] = $slug;

        // Insert the pose into the database including new slug
        $query = "INSERT INTO poses (cat_id, user_id, pose_name, pose_sanskrit_name, pose_image,
        pose_difficulty, pose_instructions, pose_slug) VALUES (:cat_id,
        :user_id, :pose_name, :pose_sanskrit_name, :pose_image, :pose_difficulty, :pose_instructions, :pose_slug)";
        $stmt = $this->Conn->prepare($query);
        $data['user_id'] = $_SESSION['user_data']['user_id'];
        $result = $stmt->execute($data);


        //add point to user account 
        if ($result) {
            $query = "UPDATE users SET user_points = user_points + 1 WHERE user_id = :user_id";
            $stmt = $this->Conn->prepare($query);
            $stmt->execute(array('user_id' => $_SESSION['user_data']['user_id']));
        }

        return $result;
    }

    //create slug
    public function createSlug($str, $delimiter = '-')
    {
        $slug = strtolower(trim(preg_replace('/[\s-]+/', $delimiter, preg_replace('/[^A-Za-z0-9-]+/', $delimiter, preg_replace('/[&]/', 'and', preg_replace('/[\']/', '', iconv('UTF-8', 'ASCII//TRANSLIT', $str))))), $delimiter));
        return $slug;

    }


    //gets pose by slug
    public function getPoseBySlug($slug)
    {
        $query = "SELECT poses.*, pose_categories.cat_id, pose_categories.cat_name, pose_categories.cat_slug
                  FROM poses 
                  JOIN pose_categories ON poses.cat_id = pose_categories.cat_id
                  WHERE poses.pose_slug = :pose_slug";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "pose_slug" => $slug
        ]);
        $pose = $stmt->fetch(PDO::FETCH_ASSOC);
        //This prevents issues with poses with no line breaks. Otherwise, get a timeout error 
        if ($pose && $pose['pose_instructions'] !== null) {
            // creates line breaks in pose instructions 
            $pose['pose_instructions'] = nl2br($pose['pose_instructions']);
        }

        return $pose;
    }



    //Gets all poses from specific category
    public function getAllPosesForCategory($cat_slug)
    {
        $query = "SELECT poses.*
                  FROM poses
                  INNER JOIN pose_categories ON poses.cat_id = pose_categories.cat_id
                  WHERE pose_categories.cat_slug = :cat_slug";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "cat_slug" => $cat_slug
        ]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }


    //Gets 6 poses for homepage, top rated first
    public function getFeaturedPoses()
    {
        $query = "SELECT poses.*, pose_categories.cat_slug, pose_categories.cat_name, 
                  ROUND(AVG(pose_reviews.review_rating), 0) AS pose_rating,
                  COUNT(user_pose_favs.pose_id) AS fav_count
                  FROM poses 
                  INNER JOIN pose_categories 
                  ON poses.cat_id = pose_categories.cat_id 
                  LEFT JOIN pose_reviews 
                  ON poses.pose_id = pose_reviews.pose_id
                  LEFT JOIN user_pose_favs 
                  ON poses.pose_id = user_pose_favs.pose_id
                  GROUP BY poses.pose_id 
                  ORDER BY pose_rating DESC 
                  LIMIT 6";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }



    //Allows user to create custom routine of up to 6 poses
    public function createRoutine($user_id, $routine_name, $pose_ids)
    {
        $query = "INSERT INTO routines (user_id, routine_name, pose_id_1, pose_id_2, pose_id_3, pose_id_4, pose_id_5, pose_id_6) VALUES (:user_id, :routine_name, :pose_id_1, :pose_id_2, :pose_id_3, :pose_id_4, :pose_id_5, :pose_id_6)";

        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(":user_id", $user_id);
        $stmt->bindParam(":routine_name", $routine_name);
        $stmt->bindParam(":pose_id_1", $pose_ids[0]);
        $stmt->bindParam(":pose_id_2", $pose_ids[1]);
        $stmt->bindParam(":pose_id_3", $pose_ids[2]);
        $stmt->bindParam(":pose_id_4", $pose_ids[3]);
        $stmt->bindParam(":pose_id_5", $pose_ids[4]);
        $stmt->bindParam(":pose_id_6", $pose_ids[5]);

        $stmt->execute();

    }

    //Get all poses for all poses page
    public function getAllPoses()
    {
        $query = "SELECT poses.*, pose_categories.cat_name, pose_categories.cat_slug,
              ROUND(AVG(pose_reviews.review_rating), 0) AS pose_rating,
              COUNT(user_pose_favs.pose_id) AS fav_count
              FROM poses 
              INNER JOIN pose_categories 
              ON poses.cat_id = pose_categories.cat_id 
              LEFT JOIN pose_reviews 
              ON poses.pose_id = pose_reviews.pose_id
              LEFT JOIN user_pose_favs 
              ON poses.pose_id = user_pose_favs.pose_id
              GROUP BY poses.pose_id
              ORDER BY pose_name ASC";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }


    //Searches poses in the DB
    public function searchPoses($query_string)
    {
        $query = "SELECT * FROM poses WHERE pose_name LIKE :query_string";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "query_string" => "%" . $query_string . "%"
        ]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }


    //get poses the user has added
    public function getUserPoses($userId)
    {
        $query = "SELECT poses.*, users.user_id
                      FROM poses
                      JOIN users ON poses.user_id = users.user_id
                      WHERE users.user_id = :userId
                      ORDER BY pose_id DESC";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':userId', $userId);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    //delete pose 
    public function deletePose($pose_id)
    {
        $query = "DELETE FROM poses WHERE pose_id = :pose_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindValue(":pose_id", $pose_id);
        $stmt->execute();

    }


    //edit pose 
    public function editPose($data)
    {
        $query = "UPDATE poses 
              SET pose_name = :new_pose_name, 
                  pose_sanskrit_name = :new_pose_sanskrit_name, 
                  cat_id = :new_cat_id, 
                  pose_image = :new_pose_image, 
                  pose_difficulty = :new_pose_difficulty, 
                  user_id = :user_id, 
                  pose_instructions = :new_pose_instructions 
              WHERE pose_id = :pose_id";

        $data['user_id'] = $_SESSION['user_data']['user_id'];
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(
            array(
                'user_id' => $_SESSION['user_data']['user_id'],
                'pose_id' => $data['pose_id'],
                'new_pose_name' => $data['new_pose_name'],
                'new_pose_sanskrit_name' => $data['new_pose_sanskrit_name'],
                'new_cat_id' => $data['new_cat_id'],
                'new_pose_image' => $data['new_pose_image'],
                'new_pose_difficulty' => $data['new_pose_difficulty'],
                'new_pose_instructions' => $data['new_pose_instructions']
            )
        );
        return true;
    }


    //Gets individual poses, still need these for editing and deleting poses
    public function getPose($pose_id)
    {
        $query = "SELECT poses.*, pose_categories.cat_name 
                  FROM poses 
                  JOIN pose_categories ON poses.cat_id = pose_categories.cat_id
                  WHERE poses.pose_id = :pose_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "pose_id" => $pose_id
        ]);
        $pose = $stmt->fetch(PDO::FETCH_ASSOC);
        //creates line breaks in pose instructions 
        $pose['pose_instructions'] = nl2br($pose['pose_instructions']);

        return $pose;
    }


}