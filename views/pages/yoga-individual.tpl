{extends file="layouts/main.tpl"}
{block name ="body"}

  <div class="banner">
    <div class="bannercontent pb-5">
      <h1>Downward-Facing Dog | <i>Adho Mukha Svanasana</i></h1>
      <p id="intro">
        Learn how to do downward facing dog and add it to your own custom routine.</p>
    </div>
  </div>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="/awad-assignment/index.php">Home</a></li>
      <li class="breadcrumb-item active" aria-current="page">Individual Yoga Pose</li>
    </ol>
  </nav>
  <div class="container pt-5 pb-5">
    <div class="row">
      <div class="col-sm">
        <p>Downward dog (Adho Mukha Svanasana), sometimes referred to as a downward-facing dog or down dog, is a standing
          yoga pose where the yogi stretches their whole body on all fours, similar to the way a dog stretches. </p>
        <p>
          This yoga pose is often performed during Vinyasa and Ashtanga styles of yoga, either as a transitional or a
          resting pose. This pose falls under the following categories of yoga: </p>
        <ul>
          <li><strong>Core Yoga Poses</strong> - Engage your abdominal muscles with core yoga poses that build a strong
            and stable center like Boat Pose, Dolphin Pose and Side Plank Pose.</li>
          <li><strong>Strengthening</strong> - Work and tone your entire body with strengthening yoga poses like Chair
            Pose, Warrior I Pose and Extended Side Angle Pose.</li>
        </ul>

        </p>
      </div>
      <div class="col-md">
        <img src="/images/Downward Facing Dog Crop.png" alt="downward facing dog yoga pose" width="500px" height="300px">
      </div>

    </div>
  </div>
  <div class="cream">
    <div class="text-center container pt-5 pb-5">
      <p>Like this pose? Add it to your routine</p>
      <button id="add">Add to routine
      </button>
    </div>
  </div>
  <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast">
      <div class="toast-header">
        <strong class="me-auto">Success!</strong>
        <small>Just now..</small>
      </div>
      <div class="toast-body">
        This pose was added to your routine.
      </div>
    </div>
  </div>

  <div class="studios text-center container pt-5 pb-5">
    <h2>Find a Studio</h2>
    <p>
      Are you looking to get into yoga? Our dedicated page features an interactive map and shows yoga studios in your
      local area, with useful information such as the name, address and rating of the studio.
    </p>
    <a href='/find-a-studio.html'> <button>Find Local Studios</button></a>
  </div>
{/block}