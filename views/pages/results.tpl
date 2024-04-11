{extends file="layouts/main.tpl"}
{block name ="body"}
  <div class="banner">
    <div class="bannercontent pb-5">
      <h1>Search results for "{$query}"</h1>
    </div>
  </div>
  <div class="container pt-5 pb-5">
    <div class="row centre">
      {foreach from=$poses item=pose}
        <div class="col-lg-3 results">
          <div class="poseimage" style="background-image: url(./user-images/{$pose.pose_image});">
          </div>
          <br>
          <h3>{$pose.pose_name}</h3>
          <p><i>{$pose.pose_sanskrit_name}</i></p>
          <p><strong>Difficulty:</strong> {$pose.pose_difficulty}</p><a href='/awad-assignment/pose/{$pose.pose_slug}'>
            <button>View Pose</button></a>
        </div>
      {/foreach}
    </div>
  </div>
  <div class="container pb-5 text-center">
    <h2 class="pb-4">Not quite what you were looking for? Try searching again</h2>
    <form class="d-flex" action="/awad-assignment/results" method="post" role="search">
      <input class="form-control me-2" type="search" placeholder="Search Poses" aria-label="Search" name="query"
        onfocus="this.value=''"> <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>

    </form>
    </p>
  </div>

{/block}