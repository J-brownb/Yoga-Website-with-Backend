{extends file="layouts/main.tpl"}
{block name ="body"}
  <div class="hero">
    <div class="container pb-5 ">
      <div class="row searchArea">
        <div class="col-8 pt-5">
          <h1 class="homeh1">
            Start your<span class="highlight">yoga<br />journey</span>today
          </h1> <br />
          <form action="/results.html">
            <input class="form-control me-2" id="searching" type="search" placeholder="Search yoga poses.." aria-
              label="Search" onfocus="this.value=''" />
            <br />
            <button id="exerciseSearchBtn" type="submit">
              Search <i class="fa-solid fa-magnifying-glass"></i>
            </button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="container">
    <h2 class="text-center">Featured Yoga Poses</h2>
    <p class="text-center pb-3">Take a look at a selection of handpicked yoga poses for you to try.</p>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-lg results">
        <img src="/images/Boat Pose.png" alt="yoga boat pose" width="200" height="200">
        <br>
        <p><strong>English Name:</strong> Boat</p>
        <p><strong>Sanskrit Name:</strong> <i>Navasana</i></p>
        <p><strong>Difficulty:</strong>⭐</p>
      </div>
      <div class="col-lg results">
        <img src="/images/Half Boat (1).png" alt="yoga half boat pose" width="200" height="200">
        <br>
        <p><strong>English Name:</strong> Half-Boat</p>
        <p><strong>Sanskrit Name:</strong> <i>Ardha Navasana</i></p>
        <p><strong>Difficulty:</strong>⭐⭐</p>
      </div>
      <div class="col-lg results">
        <img src="/images/Forward Bend (1).png" alt="yoga forward bend pose" width="200" height="200">
        <br>
        <p><strong>English Name:</strong> Forward Bend</p>
        <p><strong>Sanskrit Name:</strong> <i>Uttanasana</i></p>
        <p><strong>Difficulty:</strong>⭐⭐⭐</p>

      </div>
    </div>
    <div class="row pb-5">
      <div class="col-lg results">
        <img src="/images/Downward Facing Dog (1).png" alt="yoga downward facing dog pose" width="200" height="200">
        <br>
        <p><strong>English Name:</strong> Downward-Facing Dog</p>
        <p><strong>Sanskrit Name:</strong> <i>Adho Mukha Svanasana</i></p>
        <p><strong>Difficulty:</strong>⭐⭐</p>
      </div>
      <div class="col-lg results">
        <img src="/images/Childs Pose (1).png" alt="yoga child's pose" width="200" height="200">
        <br>
        <p><strong>English Name:</strong> Child's Pose</p>
      <p><strong>Sanskrit Name:</strong> <i>Balasana</i></p>
      <p><strong>Difficulty:</strong>⭐⭐</p>
    </div>
    <div class="col-lg results">
      <img src="/images/Dolphin (1).png" alt="yoga dolphin pose" width="200" height="200">
      <br>
      <p><strong>English Name:</strong> Dolphin</p>
      <p><strong>Sanskrit Name:</strong> <i>Ardha Pincha</i></p>
      <p><strong>Difficulty:</strong>⭐⭐</p>
    </div>
  </div>
</div>
<div class="container text-center">
  <h2 class="pb-2">Why Try Yoga?</h2>
  <p class="pb-2">Yoga offers many health benefits including increased flexiblity, muscle strength, better balance and
    improved athletic performance.</p>
</div>
<div class="benefits">
  <div class="container pt-5 pb-5">
    <div class="row text-center">
      <div class="col-sm">
        <i class="fa-solid fa-heart-pulse"></i>
        <h3><strong>Better Health</strong></h3>
        <p>Yoga offers many health benefits including increased flexiblity, muscle strength, better balance and improved
          athletic performance.</p>
      </div>
      <div class="col-sm">
        <i class="fa-solid fa-face-smile"></i>
        <h3><strong>Improved Mood</strong></h3>
        <p>As well as physical health, yoga has many benefits to your overall mental wellbeing and can help relieve
          stress and make you happier.</p>
      </div>
      <div class="col-sm">
        <i class="fa-solid fa-person-walking"></i>
        <h3><strong>Get Active</strong></h3>
        <p>Yoga is a great exercise that you can do from the comfort of your home. You do not need any equipment but a
          yoga mat is reccomended.</p>
      </div>
    </div>
  </div>
</div>
<div class="container imgborders pt-5 pb-5">
  <div class="row pt-5 pb-5">
    <div class="col-md">
      <h2>Categories of Yoga</h2>
      <p>
        Whether you are an experienced yogi or just getting started with a few poses, yoga is for everyone. Yoga offers
        so many benefits including better flexibility, protection from injury, losing weight and improving your overall
        athletic performance. Yoga has also been proven to reduce stress and help decrease anxiety.
      </p>
      <p>
        Within our database, we have several different categories of yoga to ensure you get the full benefit. From core
        yoga poses to chest opening yoga poses, having a well rounded routine will maximise the effectiveness of yoga on
        your overall mental and physical health.
      </p>
      <a href='/awad-assignment/index.php?p=yoga-categories'> <button>View all yoga categories</button></a>
    </div>
    <div class="col-md imgborderright">
      <img src="/images/woman-stretching.jpg" class="mx-auto d-block" alt="woman doing yoga pose on a mat inside" />
    </div>
  </div>
</div>
<div class="cream pt-3 pb-3">
  <div class="container">
    <div class="row pt-5 pb-5 reverseflex">
      <div class="col-md imgborderleft">
        <img src="/images/man doing yoga.png" class="mx-auto d-block" alt="woman doing yoga pose on a mat inside" />
      </div>
      <div class="col-md">
        <h2>Core Yoga Poses</h2>
        <p>
          You might think the only way to strengthen your core muscles is at the gym or by doing strenuous exercise, but
          yoga can be a great way to work muscles such as your abs and back in a fluid and meditative way which you can
          do from the comfort of your own home.
        </p>
        <p>
          Core yoga poses are designing to help engage your abdominal poses and build a strong and stable centre. Poses
          which fall under the core category include boat pose, dophin pose and side plank pose.
        </p>
        <a href='/awad-assignment/index.php?p=core-yoga-poses'> <button>View core yoga poses</button></a>
      </div>
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