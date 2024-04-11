{extends file="layouts/main.tpl"}
{block name ="body"}
  <div class="banner">
    <div class="bannercontent pb-5">
      <h1>{$pose.pose_name} | <i>{$pose.pose_sanskrit_name}</i></h1>
      <p>
        Learn how to do {$pose.pose_name} pose and add it to your own custom routine</p>
    </div>
  </div>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="/awad-assignment/">Home</a></li>
      <li class="breadcrumb-item"><a href="/awad-assignment/all-poses">All Poses</a></li>
      <li class="breadcrumb-item active" aria-current="page">{$pose.pose_name}</li>
    </ol>
  </nav>
  <div class="container pt-5 pb-5">
    {if $error}
      <div class="alert alert-danger mb-3" role="alert">
        {$error}
      </div>
    {else if $success}
      <div class="alert alert-success mb-3" role="alert">
        {$success}
      </div>
    {/if}
    <div class="row">
      <div class="col-sm text-center">
        <img src="/awad-assignment/user-images/{$pose.pose_image}" width="600" height="500">
        {if $user_data}
          {if $is_fav}
            <form method="post">
              <input type="hidden" name="pose_id" value="{$pose.pose_id}">
              <button class="mt-3 mb-3" name="fav" type="submit">Remove from
                Favourites <i class="fa-solid fa-circle-minus"></i></button>
            </form>
          {else}
            <form method="post">
              <input type="hidden" name="pose_id" value="{$pose.pose_id}">
              <button class="mt-3 mb-3" name="fav" type="submit">Add to Favourites <i
                  class="fa-solid fa-heart-circle-plus"></i></button>
            {/if}
          </form>
        {/if}
        {if !$user_data}
          <a href='/awad-assignment/login'> <button class="mt-3 mb-3">Login to favourite this pose <i
                class="fa-solid fa-heart-circle-plus"></i></button></a>
        {/if}
      </div>
      <div class="col">
        <h3>{$pose.pose_name} | <i>{$pose.pose_sanskrit_name}</i></h3><br>
        <p><strong>Difficulty: </strong> {$pose.pose_difficulty}</p>
        <p><strong>Category:</strong> <a href="/awad-assignment/categories/{$pose.cat_slug}">{$pose.cat_name}</a></p>
        {if $reviews}
          <p><strong>User Rating: </strong><i class="fas fa-star"></i> {$pose_rating} / 5</p>
        {else}
          {* display if no current review for pose *}
        {/if}
        <h3><strong>Instructions</strong></h3>
        <p><br> {$pose.pose_instructions}</p>
      </div>
    </div>
  </div>
  <div class="cream">
    <div class="text-center container pt-5 pb-5">
      {if $user_data}
        <p>Like this pose? Add it to your routine</p>
        <a href='/awad-assignment/create-routine'> <button>Add to routine</button></a>
      {else}
        <p>Like this pose? Login to add it to your own custom routines</p>
        <a href='/awad-assignment/login'> <button>Login / Register</button></a>
      {/if}
    </div>
  </div>
  <div class="container pt-5 pb-5">
    {if $reviews}
      <div class="row pt-3">
        <h2>User Reviews of this Pose</h2>
        {foreach $reviews as $review}
          <div class="col pb-3">
            <div class="card mb-3">
              <div class="card-header">
                <i class="fas fa-star mb-2"></i> {$review.review_rating}/5
                <h6 class="card-subtitle text-muted">Review by {$review.user_name}</h6>
              </div>
              <div class="card-body">
                <p class="card-text">{$review.review_text}</p>
              </div>
            </div>
          </div>
        {/foreach}
      </div>
    {else}
      {* display if no current review for pose *}
      <p class="pt-5"><strong>No reviews yet. Be first to leave one!</strong></p>
    {/if}
    <div class="row mb-3"> {if $user_data}
        <h2>Leave a Review</h2>
        <form method="post">
          <div class="form-group">
            <label for="rating">Rating</label>
            <select class="form-control" id="rating" name="rating">
              <option value="1">1 Star (Hated it)</option>
              <option value="2">2 Stars </option>
              <option value="3">3 Stars </option>
              <option value="4">4 Stars </option>
              <option value="5">5 Stars (Loved it)</option>
            </select>
            <label class="form-label" for="review_text">Comments</label>
            <input type="text" class="form-control" id="review_text" name="review_text" required />
          </div>
          <button type="submit" class="btn btn-primary mt-3 mb-3">Submit</button>
        </form>
      {else}
        <div class="alert alert-primary" role="alert">
          Please <a href="/awad-assignment/login">login</a> to leave a review of this pose.
        </div>
      {/if}
    </div>
  </div>
{/block}