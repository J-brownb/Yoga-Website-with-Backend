{extends file="layouts/main.tpl"}
{block name="body"}
  <div class="banner">
    <div class="bannercontent pb-5">
      <h1>Your Account</h1>
      <p>Welcome back to your account.</p>
    </div>
  </div>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="/awad-assignment/index.php">Home</a></li>
      <li class="breadcrumb-item active" aria-current="page">My Account</li>
    </ol>
  </nav>
  <div class="container account_options">
    <div class="row pt-5">
      <div class="col">
        <i class="fa-solid fa-key"></i>
        <p><a href="index.php?p=changepassword">Change Password</a></p>
      </div>
      <div class="col">
        <i class="fa-solid fa-star"></i>
        <p><a href="index.php?p=changepassword">Favourites</a></p>
      </div>
      <div class="col">
        <i class="fa-solid fa-list-check"></i>
        <p><a href="index.php?p=changepassword">Routines</a></p>
      </div>
    </div>
    <div class="row pb-5">
      <div class="col">
        <i class="fa-solid fa-user-plus"></i>
        <p><a href="index.php?p=changepassword">Add Pose</a></p>
      </div>
      <div class="col">
        <i class="fa-solid fa-user"></i>
        <p><a href="index.php?p=changepassword">View Account Details</a></p>
      </div>
      <div class="col">
        <i class="fa-solid fa-trash-can"></i>
        <p><a href="index.php?p=changepassword">Delete Account</a></p>
      </div>
    </div>
  </div>
{/block}