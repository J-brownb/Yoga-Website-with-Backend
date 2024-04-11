{extends file="layouts/main.tpl"}
{block name="body"}
  <div class="banner">
    <div class="bannercontent pb-5">
      <h1>{$user_data['user_name']}'s Account</h1>
    <p>Welcome back to your account</p>
  </div>
</div>
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/awad-assignment/">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">My Account</li>
  </ol>
</nav>
<div class="container account_options pb-5">

  <div class="row pt-5">
    <div class="results col">
      <i class="fa-solid fa-heart-circle-plus"></i>
      <p><a href="/awad-assignment/your-favourites">Your <br> Favourites</a></p>
    </div>
    <div class="results col">
      <i class="fa-solid fa-list-check"></i>
      <p><a href="/awad-assignment/your-routines">Your <br> Routines</a></p>
    </div>
    <div class="results col">
      <i class="fa-solid fa-person-walking"></i>
      <p><a href="/awad-assignment/your-poses">Your <br> Poses</a></p>
    </div>
    <div class="results col">
      <i class="fa-solid fa-star"></i>
      <p><a href="/awad-assignment/your-reviews">Your <br> Reviews</a></p>
    </div>
    <div class="results col">
      <i class="fa-solid fa-circle-plus"></i>
      <p><a href="/awad-assignment/add">Add Pose</a></p>
    </div>
  </div>
</div>
<div class="container account_options pb-5">
  <div class="row pt-5">
    <h2>Account Actions</h2>
    <div class="results col">
      <i class="fa-solid fa-key"></i>
      <p><a href="/awad-assignment/changepassword">Change Password</a></p>
    </div>
    <div class="results col">
      <i class="fa-solid fa-user"></i>
      <p><a href="/awad-assignment/account-details">View Account Details</a></p>
    </div>
    <div class="results col">
      <i class="fa-solid fa-trash-can"></i>
      <form method="post">
        <select class="form-control hidden" id="user_id" name="user_id" required>
          <option value="{$user_data['user_id']}">{$user_data['user_id']}</option>
          </select>
          <button type="submit" class="danger" name="delete-account" value="1">Delete Account </button>
        </form>

      </div>
    </div>
  </div>
{/block}