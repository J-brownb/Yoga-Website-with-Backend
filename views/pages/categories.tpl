{extends file="layouts/main.tpl"}
{block name ="body"}
  <div class="banner">
    <div class="bannercontent pb-5">
      <h1>{$category.cat_name} Poses</h1>
      <p>{$category.cat_desc}</p>
    </div>
  </div>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="/awad-assignment/">Home</a></li>
      <li class="breadcrumb-item"><a href="/awad-assignment/yoga-categories">All Categories</a></li>
      <li class="breadcrumb-item active" aria-current="page">{$category.cat_name} Poses</li>
    </ol>
  </nav>
  <div class="container pt-5 pb-5">
    <div class="row centre">
      {foreach from=$poses item=pose}
        <div class="col-lg-3 results">
          <div class="poseimage" style="background-image: url(/awad-assignment/user-images/{$pose.pose_image});">
          </div>
          <br>
          <h3>{$pose.pose_name}</h3>
          <p><i>{$pose.pose_sanskrit_name}</i></p>
          <p><strong>Difficulty:</strong> {$pose.pose_difficulty}</p>
          <a href='/awad-assignment/pose/{$pose.pose_slug}'> <button>View Pose</button></a>
        </div>
      {/foreach}
    </div>
  </div>

{/block}