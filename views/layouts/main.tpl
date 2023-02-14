<!DOCTYPE html>
<html lang="en">

<head>
  <script src="https://kit.fontawesome.com/fd9a509bf6.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/styles.css" />
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Work+Sans&display=swap"
    rel="stylesheet" />
  <title>Yoga Site</title>
</head>

<body id="page-{$view_name}">
  <nav class="upper-nav">
    {if $user_data}
      <li class="nav-item dropdown" id="dropdownmenu2">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
          aria-expanded="false"> Account</a>
        <div class="dropdown-menu" id="menuitems2" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/awad-assignment/index.php?p=account">Profile</a>
          <a class="dropdown-item" href="/awad-assignment/index.php?p=favourites">Favourites</a>
          <a class="dropdown-item" href="/awad-assignment/index.php?p=favourites">Routines</a>
          <a class="dropdown-item" href="/awad-assignment/index.php?p=favourites">Add Pose</a>

        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/awad-assignment/index.php?p=logout"> Logout</a>
      </li>
    {else}
      <li class="nav-item">
        <a class="nav-link" href="index.php?p=login"> Login / Register</a>
      </li>
    {/if}
  </nav>
  <header>
    <div class="page-header-top container">
      <nav class="navbar navbar-expand-lg">
        <a href="/awad-assignment/index.php">
          <img src="/images/cream logo.png" alt="Yoga Site Logo" /></a>
        <div class="container">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar"
            aria-controls="navbar" aria-expanded="false" aria-label="Toggle
    navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-center" id="navbar">
            <ul class="navbar-nav mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link" href="/awad-assignment/index.php">Home</a>
              </li>
              <div id="dropdownmenu">
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">
                    Yoga Categories
                  </a>
                  <div class="dropdown-menu" id="menuitems" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/awad-assignment/index.php?p=yoga-categories">All Categories</a>
                    <a class="dropdown-item" href="/awad-assignment/index.php?p=core-yoga-poses">Core Yoga Poses</a>
                  </div>
              </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/awad-assignment/index.php?p=yoga-individual">Individual Yoga Exercise</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </header>
  {block name="body"}{/block}
  <footer>
    <div class="container pt-5 pb-5">
      <div class="row">
        <div class="col-sm">
          <p class="footerhead">Quick Links <i class="fa-solid fa-bolt"></i></p>
          <ul>
            <li>
              <a href="/awad-assignment/index.php">Home</a>
            </li>
            <li>
              <a href="/awad-assignment/index.php?p=yoga-categories">Yoga Category</a>
            </li>
            <li>
              <a href="/awad-assignment/index.php?p=core-yoga-poses">Core Yoga Poses</a>
            </li>
            <li>
              <a href="/awad-assignment/index.php?p=yoga-individual">Individual Yoga Exercise</a>
            </li>
          </ul>
        </div>
        <div class="col-sm">
          <p class="footerhead">Find Us <i class="fa-solid fa-location-dot"></i></p>
          <p>University of Suffolk <br> Waterfront Building <br> 19 Neptune Quay <br> Ipswich, IP4 1QJ</p>
        </div>
        <div class="col-sm">
          <p class="footerhead">Follow Us <i class="fa-solid fa-thumbs-up"></i></p>
          <div class="social-icons">
            <ul>
              <li>
                <a href="#"><i class="fa-brands fa-facebook"></i></a>
              </li>
              <li>
                <a href="#"><i class="fa-brands fa-twitter"></i></a>
              </li>
              <li>
                <a href="#"><i class="fa-brands fa-reddit"></i></a>
              </li>
              <li>
                <a href="#"><i class="fa-brands fa-instagram"></i></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <script src="./js/scripts-vendor.min.js"></script>
  <script src="./js/home.min.js"></script>
</body>


</html>