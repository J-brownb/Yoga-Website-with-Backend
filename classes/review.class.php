<?php
class Review
{
    protected $Conn;
    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    //Create reviews, limit 1 per user per pose
    public function createReview($review_data)
    {
        $query = "SELECT review_id FROM pose_reviews WHERE user_id = :user_id AND pose_id = :pose_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(
            array(
                'user_id' => $_SESSION['user_data']['user_id'],
                'pose_id' => $review_data['pose_id'],
            )
        );
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
        if ($result) {
            // already reviewed 
            return false;
        } else {
    
            $query = "INSERT INTO pose_reviews (user_id, pose_id, review_rating, review_text) VALUES (:user_id, :pose_id, :review_rating, :review_text)";
            $stmt = $this->Conn->prepare($query);
    
            $result = $stmt->execute(
                array(
                    'user_id' => $_SESSION['user_data']['user_id'],
                    'pose_id' => $review_data['pose_id'],
                    'review_rating' => $review_data['review_rating'],
                    'review_text' => $review_data['review_text'],
                )
            );
    //adds a user point
            if ($result) {
                $query = "UPDATE users SET user_points = user_points + 1 WHERE user_id = :user_id";
                $stmt = $this->Conn->prepare($query);
                $stmt->execute(array('user_id' => $_SESSION['user_data']['user_id']));
            }
    
            return $result;
        }
    }
    


    //Calculate average rating of pose
    public function calculateRating($pose_id)
    {
        $query = "SELECT AVG(review_rating) AS avg_rating FROM pose_reviews WHERE pose_id = :pose_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(
            array(
                'pose_id' => $pose_id,
            )
        );
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    //Gets reviews for specific pose for pose listing page 
    public function getReviewsByPoseId($pose_id)
    {
        $query = "SELECT r.review_rating, r.review_text, u.user_name 
                  FROM pose_reviews r 
                  JOIN users u ON r.user_id = u.user_id 
                  WHERE r.pose_id = :pose_id 
                  ORDER BY r.review_id DESC 
                  LIMIT 5";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(
            array(
                'pose_id' => $pose_id,
            )
        );
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }


    //Gets reviews for user for my-reviews page
    public function getReviewsByUserID($user_id)
    {
        $query = "SELECT pr.*, p.pose_name
        FROM pose_reviews pr
        JOIN poses p ON p.pose_id = pr.pose_id
        WHERE pr.user_id = :user_id
        ";
        $data['user_id'] = $_SESSION['user_data']['user_id'];

        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':user_id', $data['user_id']);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }


}