<?php
class Lesson
{
    protected $Conn;

    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    // get all lessons
// get all lessons
    public function getAllLessons($user_id)
    {
        $query = "SELECT * FROM lessons
              WHERE lesson_id NOT IN (
                  SELECT lesson_id
                  FROM lesson_submissions
                  WHERE lesson_submissions.user_id = :user_id
                  AND lesson_complete = 1
              )";


        $stmt = $this->Conn->prepare($query);
        $data['user_id'] = $_SESSION['user_data']['user_id'];
        $stmt->execute($data);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $result;
    }


    // get completed lessons for user
    public function getCompletedLessons($user_id)
    {
        $query = "SELECT 
                  user_id,
                  lesson_complete,
                  lessons.*
              FROM lesson_submissions 
              JOIN lessons ON lesson_submissions.lesson_id = lessons.lesson_id
              WHERE lesson_submissions.user_id = :user_id
              AND lesson_submissions.lesson_complete = 1";

        $stmt = $this->Conn->prepare($query);
        $data['user_id'] = $_SESSION['user_data']['user_id'];
        $stmt->execute($data);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $result;
    }

    //gets specific lesson, for individual pages
    public function getLesson($lesson_id)
    {
        $query = "SELECT * FROM lessons WHERE lesson_id = :lesson_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "lesson_id" => $lesson_id
        ]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    //submits lesson answers
    public function submitLesson($lesson_id, $user_id, $question_answers)
    {

        $query = "INSERT INTO lesson_submissions (user_id, lesson_id, question_1_answer, question_2_answer, question_3_answer, question_4_answer, question_5_answer) 
                  VALUES (:user_id, :lesson_id, :question_1_answer, :question_2_answer, :question_3_answer, :question_4_answer, :question_5_answer)";

        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $stmt->bindParam(':lesson_id', $lesson_id, PDO::PARAM_INT);
        $stmt->bindParam(':question_1_answer', $question_answers['question_1_answer']);
        $stmt->bindParam(':question_2_answer', $question_answers['question_2_answer']);
        $stmt->bindParam(':question_3_answer', $question_answers['question_3_answer']);
        $stmt->bindParam(':question_4_answer', $question_answers['question_4_answer']);
        $stmt->bindParam(':question_5_answer', $question_answers['question_5_answer']);

        $stmt->execute();
    }

    //checks lesson answers
    public function checkAnswers($lesson_id, $question_answers)
    {
        // Retrieve correct answers for the specified lesson
        $query = "SELECT question_1_answer, question_2_answer, question_3_answer, question_4_answer, question_5_answer 
                  FROM lessons 
                  WHERE lesson_id = :lesson_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':lesson_id', $lesson_id, PDO::PARAM_INT);
        $stmt->execute();
        $correct_answers = $stmt->fetch(PDO::FETCH_ASSOC);

        // Compare submitted answers with correct answers
        $result = [
            'question_1' => ($correct_answers['question_1_answer'] == $question_answers['question_1_answer']),
            'question_2' => ($correct_answers['question_2_answer'] == $question_answers['question_2_answer']),
            'question_3' => ($correct_answers['question_3_answer'] == $question_answers['question_3_answer']),
            'question_4' => ($correct_answers['question_4_answer'] == $question_answers['question_4_answer']),
            'question_5' => ($correct_answers['question_5_answer'] == $question_answers['question_5_answer']),
        ];



        return $result;

    }


    // public function updateLessonCompletion($user_id, $lesson_id) {

    //     $column_name = "lesson" . $lesson_id . "_complete";
    //     $query = "UPDATE users SET $column_name = 1 WHERE user_id = :user_id";
    //     $stmt = $this->Conn->prepare($query);
    //     $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
    //     $stmt->execute();
    // }

    //update lesson on completion
    public function updateLessonCompletion($user_id, $lesson_id)
    {
        $query1 = "UPDATE lesson_submissions SET lesson_complete = 1 WHERE user_id = :user_id";
        $stmt1 = $this->Conn->prepare($query1);
        $stmt1->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $stmt1->execute();

        // Adds user points
        $query2 = "UPDATE users 
                   SET user_points = user_points + (SELECT lesson_points FROM lessons WHERE lesson_id = :lesson_id) 
                   WHERE user_id = :user_id";
        $stmt2 = $this->Conn->prepare($query2);
        $stmt2->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $stmt2->bindParam(':lesson_id', $lesson_id, PDO::PARAM_INT);
        $stmt2->execute();

            // If lesson_id is 1, update invest_lesson_complete in users table
    if ($lesson_id == 1) {
        $update_query = "UPDATE users SET invest_lesson_complete = 1 WHERE user_id = :user_id";
        $stmt_update = $this->Conn->prepare($update_query);
        $stmt_update->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $stmt_update->execute();
    }
    }


    // clear lesson submissions
    public function clearLessonSubmissions($user_id, $lesson_id)
    {
        $query = "DELETE FROM lesson_submissions WHERE user_id = :user_id AND lesson_id = :lesson_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $stmt->bindParam(':lesson_id', $lesson_id, PDO::PARAM_INT);
        $stmt->execute();
    }
}