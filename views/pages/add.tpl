{extends file="layouts/main.tpl"}
{block name="body"}
  <div class="banner">
    <div class="bannercontent pb-5">
      <h1>Add Pose</h1>
      <p>Add a new pose to our database</p>
    </div>
  </div>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="/awad-assignment/">Home</a></li>
      <li class="breadcrumb-item"><a href="/awad-assignment/account">Account</a></li>
      <li class="breadcrumb-item active" aria-current="page">Add Pose</li>
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
    <h2>Enter Pose Details Here</h2>
    <form class="form-light" method="post" enctype="multipart/form-data">
      <div class="mb-3">
        <label class="form-label" for="pose_name">Pose Name</label>
        <input type="text" class="form-control" id="pose_name" name="pose_name" required>
      </div>
      <div class="mb-3">
        <label class="form-label" for="pose_name">Sanskrit Name</label>
        <input type="text" class="form-control" id="pose_sanskrit_name" name="pose_sanskrit_name" required>
      </div>
      <div class="mb-3">
        <label class="form-label" for="cat_id">Pose Category</label>
        <select class="form-control" id="cat_id" name="cat_id">
          {foreach from=$categories item=category}
            <option value="{$category.cat_id}">{$category.cat_name}</option>
          {/foreach}
        </select>
      </div>
      <div class="mb-3">
        <label for="formFile" class="form-label">Pose Image</label>
        <input class="form-control" type="file" id="formFile" name="pose_image" required>
      </div>
      <div class="mb-3">
        <label class="form-label" for="pose_difficulty">Pose Difficulty</label>
        <select class="form-control" id="pose_difficulty" name="pose_difficulty" required>
          <option value="beginner">Beginner</option>
          <option value="intermediate">Intermediate</option>
          <option value="experienced">Experienced</option>
        </select>
      </div>
      <div class="mb-3">
        <label class="form-label" for="pose_instructions">Pose Instructions</label>
        <textarea class="form-control" id="pose_instructions" name="pose_instructions" required></textarea>
      </div>
      <button type="submit" class="btn btn-primary">Add pose</button>
    </form>
  </div>
{/block}