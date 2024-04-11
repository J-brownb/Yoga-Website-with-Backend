{extends file="layouts/main.tpl"}
{block name="body"}
  <div class="banner">
    <div class="bannercontent pb-5">
      <h1>Yoga Categories</h1>
      <p>Browse yoga poses from different categories depending on your goals</p>
    </div>
  </div>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="/awad-assignment/">Home</a></li>
      <li class="breadcrumb-item active" aria-current="page">Yoga Categories</li>
    </ol>
  </nav>
  <div class="container">
    <p class="pt-5 text-center">
      Within our database, we have several different categories of yoga to ensure you get the full benefit. From core yoga
      poses to chest opening yoga poses, having a well rounded routine will maximise the effectiveness of yoga on your
      overall mental and physical health.
    </p>
  </div>
  <div class="container">
    <div class="row centre">
      {foreach from=$categories item=category}
        <div class="col-lg-3 results">
          <div class="poseimage" style="background-image: url(./user-images/categories/{$category.cat_image});">
          </div>
          <br>
          <h3>{$category.cat_name}</h3>
          <p class="m-3">{$category.cat_desc}</p>
          <a href='/awad-assignment/categories/{$category.cat_slug}'> <button>View all Poses</button></a>
        </div>
      {/foreach}
    </div>
  </div>
  <div class="container text-center">
    <h2 class="pb-2 pt-5">Why Try Yoga?</h2>
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
  <div class="studios text-center container pt-5 pb-5">
    <h2>Find a Studio</h2>
    <p>
      Are you looking to get into yoga? Our dedicated page features an interactive map and shows yoga studios in your
      local area, with useful information such as the name, address and rating of the studio.
    </p>
    <a href='/find-a-studio.html'> <button>Find Local Studios</button></a>
  </div>
{/block}