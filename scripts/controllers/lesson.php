<?php
$lesson_id = $_GET['id'];
$Lesson = new Lesson($Conn);
$lessonData = $Lesson->getLesson($lesson_id);
$Smarty->assign('lessonData', $lessonData);
if ($_POST && isset($_POST['submit-answers'])) {

    $lesson_id = $_GET['id'];
    $user_id = $_SESSION['user_data']['user_id'];

    //this has to check which radio button is selected, and then send the value (last character) to the DB
    $question_answers = array(
        'user_id' => $user_id,
        'lesson_id' => $_GET['id'],
        'question_1_answer' => isset($_POST['q1_option1']) ? substr($_POST['q1_option1'], -1) :
            (isset($_POST['q1_option2']) ? substr($_POST['q1_option2'], -1) :
                (isset($_POST['q1_option3']) ? substr($_POST['q1_option3'], -1) : null)),

        'question_2_answer' => isset($_POST['q2_option1']) ? substr($_POST['q2_option1'], -1) :
            (isset($_POST['q2_option2']) ? substr($_POST['q2_option2'], -1) :
                (isset($_POST['q2_option3']) ? substr($_POST['q2_option3'], -1) : null)),

        'question_3_answer' => isset($_POST['q3_option1']) ? substr($_POST['q3_option1'], -1) :
            (isset($_POST['q3_option2']) ? substr($_POST['q3_option2'], -1) :
                (isset($_POST['q3_option3']) ? substr($_POST['q3_option3'], -1) : null)),

        'question_4_answer' => isset($_POST['q4_option1']) ? substr($_POST['q4_option1'], -1) :
            (isset($_POST['q4_option2']) ? substr($_POST['q4_option2'], -1) :
                (isset($_POST['q4_option3']) ? substr($_POST['q4_option3'], -1) : null)),

        'question_5_answer' => isset($_POST['q5_option1']) ? substr($_POST['q5_option1'], -1) :
            (isset($_POST['q5_option2']) ? substr($_POST['q5_option2'], -1) :
                (isset($_POST['q5_option3']) ? substr($_POST['q5_option3'], -1) : null)),
    );

// Check if any question is not answered
if (
    is_null($question_answers['question_1_answer']) OR
    is_null($question_answers['question_2_answer']) OR
    is_null($question_answers['question_3_answer']) OR
    is_null($question_answers['question_4_answer']) OR
    is_null($question_answers['question_5_answer'])
) {
    $Smarty->assign('error', "Please answer all questions");
} else {



        $lessonConn = new Lesson($Conn);
        $lessonConn->submitLesson($lesson_id, $user_id, $question_answers);


        $checkResult = $lessonConn->checkAnswers($lesson_id, $question_answers);

        // Counts correct answers in array
        $score = count(array_filter($checkResult));

        // Display score, claim badge button if 5/5
        if ($score === 5) {
            $Smarty->assign('success', "Congratulations, you scored 5/5 click below to claim your badge!");
        } else {
            $Smarty->assign('error', "You scored ${score}/5 Please try again.");
            //if failed, submissions are cleared
            $Lesson->clearLessonSubmissions($user_id, $lesson_id);

        }
    }
}

//Claim badge if 5/5
if ($_POST && isset($_POST['claim-badge'])) {

    $user_id = $_SESSION['user_data']['user_id'];
    $lesson_id = $_GET['id'];

    // Update the lesson completion status for the user,
    $Lesson->updateLessonCompletion($user_id, $lesson_id);
    header("Location: /Dissertation/profile");
}
