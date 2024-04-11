{extends file="layouts/main.tpl"}
{block name ="body"}
  <div class="banner">
    <div class="bannercontent pb-5">
      <h1>All Poses</h1>
      <p>Take a look at our full library of poses</p>
    </div>
  </div>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="/awad-assignment/">Home</a></li>
      <li class="breadcrumb-item active" aria-current="page">All Poses</li>
    </ol>
  </nav>
  <div class="container pt-5 pb-5">
    <div class="row centre">
      {foreach from=$poses item=pose}
        <div class="col-lg-3 results">
          <div class="poseimage" style="background-image: url(./user-images/{$pose.pose_image});">
          </div>
          <br>
          <h3>{$pose.pose_name}</h3>
          <p><i>{$pose.pose_sanskrit_name}</i></p>
          <p><strong>Difficulty:</strong> {$pose.pose_difficulty}</p>
          <p><strong>Category:</strong> <a href="/awad-assignment/categories/{$pose.cat_slug}">{$pose.cat_name}</a></p>
          <i class="fa-solid fa-heart mx-2 red-heart"> <small class="black">{$pose.fav_count}</small></i> |
          {if $pose.pose_rating}
            <i class="fas fa-star mx-2 yellow-star"> <small class="black">{$pose.pose_rating} / 5</small></i>
          {else}
            <i class="fas fa-star mx-2 yellow-star"> <small class="black">-</small></i>
          {/if}
          <br><a href='/awad-assignment/pose/{$pose.pose_slug}'> <button>View Pose</button></a>
        </div>
      {/foreach}
    </div>
  </div>

{/block}