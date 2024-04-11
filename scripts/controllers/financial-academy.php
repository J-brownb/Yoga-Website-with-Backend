<?php
$Lesson = new Lesson($Conn);
$lessonData = $Lesson->getAllLessons($user_id);
$Smarty->assign('lessonData', $lessonData);

$completedLessonData = $Lesson->getCompletedLessons($user_id);
$Smarty->assign('completedLessonData', $completedLessonData);
