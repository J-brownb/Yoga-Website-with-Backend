<?php

//get all poses for pose list to delete from
$Pose = new Pose($Conn);
$poses = $Pose->getAllPoses();
$Smarty->assign('poses', $poses);

//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);
