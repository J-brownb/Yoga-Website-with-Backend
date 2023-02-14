{extends file="layouts/main.tpl"}
{block name ="body"}
  <div class="banner">
    <div class="bannercontent pb-5">
      <h1>Your Search Results..</h1>
    </div>
  </div>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="/awad-assignment/index.php">Home</a></li>
      <li class="breadcrumb-item active" aria-current="page">Individual Yoga Pose</li>
    </ol>
  </nav>
  <div class="container">
    <p class="pt-5">
      <strong>We found 3 results for your query..</strong>
    </p>
  </div>
  <div class="container pb-5">
    <div class="row">
      <div class="col-lg results">
        <img src="/images/Boat Pose.png" alt="yoga boat pose" width="200" height="200">
        <br>
        <p><strong>English Name:</strong> Boat</p>
        <p><strong>Sanskrit Name:</strong> <i>Navasana</i></p>
      </div>
      <div class="col-lg results">
        <img src="/images/Half Boat (1).png" alt="yoga half boat pose" width="200" height="200">
        <br>
        <p><strong>English Name:</strong> Half-Boat</p>
        <p><strong>Sanskrit Name:</strong> <i>Ardha Navasana</i></p>
      </div>
      <div class="col-lg results">
        <img src="/images/Forward Bend (1).png" alt="yoga forward bend pose" width="200" height="200">
        <br>
        <p><strong>English Name:</strong> Forward Bend</p>
        <p><strong>Sanskrit Name:</strong> <i>Uttanasana</i></p>
      </div>
    </div>
  </div>
  <div class="container pb-5 text-center">
    <h2 class="pb-4">Not quite what you were looking for? Try searching again</h2>
    <form action="/results.html">
      <input class="form-control me-2" id="searching" type="search" placeholder="Search yoga poses.." aria- label="Search"
        onfocus="this.value=''" />
      <button id="exerciseSearchBtn" type="submit">
        Search <i class="fa-solid fa-magnifying-glass"></i>
      </button>
    </form>
    </p>
  </div>

{/block}