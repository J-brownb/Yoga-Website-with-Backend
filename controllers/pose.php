<?php
//Get categories for poses
$cat_id = $_GET['id'];
$Pose = new Pose($Conn);
$poses = $Pose->getAllPosesForCategory($cat_id);
$Smarty->assign('poses', $poses);

//Get pose slug 
$pose_id = $_GET['id'];
$Pose = new Pose($Conn);
$pose_data = $Pose->getPoseBySlug($pose_id);
$pose_id = $pose_data['pose_id'];
$Smarty->assign('pose', $pose_data);

//get category list for menu
$Category = new Category($Conn);
$categories = $Category->getAllCategories();
$Smarty->assign('categories', $categories);

//get user points if logged in 
if ($_SESSION['is_loggedin']) {
    $user_points = $User->getUserPoints();
    $Smarty->assign('user_points', $user_points);
}

//Calculate pose rating
$Review = new Review($Conn);
$pose_rating = $Review->calculateRating($pose_id);
$Smarty->assign('pose_rating', round($pose_rating['avg_rating'], 1));

//add new  rating
if ($_POST['rating']) {
    $Review = new Review($Conn);
    $result = $Review->createReview([
        "pose_id" => (int) $pose_id,
        "review_rating" => (int) $_POST['rating'],
        "review_text" => $_POST['review_text']
    ]);
    if ($result) {
        $Smarty->assign(
            "success",
            "Your review has been added. Thanks for contributing to the community - a yoga point has been added to your account!"
        );
    } else {
        $Smarty->assign(
            "error",
            "Sorry, you can only leave 1 review per pose."
        );
    }
}

//Get reviews for pose 
$review = new Review($Conn);
$reviews = $review->getReviewsByPoseId($pose_id);
$Smarty->assign('reviews', $reviews);

//Show user fave or not fave 
if ($_SESSION['user_data']) {
    $Favourite = new Favourite($Conn);
    $is_fav = $Favourite->isFavourite($pose_id);
    if ($is_fav) {
        $Smarty->assign('is_fav', true);
    } else {
        $Smarty->assign('is_fav', false);
    }
}

//Adding and removing from faves 
if ($_POST && isset($_POST['fav']) && isset($_POST['pose_id'])) {
    $pose_id = $_POST['pose_id'];
    $favourite = new Favourite($Conn);
    $favourite->toggleFavourite($pose_id);
    //redirects to current page, updates button status without need for manual refresh
    header("Location: " . $_SERVER['REQUEST_URI']);

    exit();

}

//getting moon phase for header
require_once 'moon-phase.php';
$Smarty->assign('today_moon_phase', $today_moon_phase);
