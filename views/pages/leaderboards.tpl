{extends file="layouts/main.tpl"}
{block name ="body"}
  <div class="banner">
    <div class="bannercontent pb-5">
      <h1>Leaderboards</h1>
      <p>See who's contributed the most to the community</p>
    </div>
  </div>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="/awad-assignment/">Home</a></li>
      <li class="breadcrumb-item active" aria-current="page">Leaderboards</li>
    </ol>
  </nav>
  <div class="container pt-5 pb-5">
    <div class="row">
      <div class="col-md-4 mb-4">
        <div class="card text-center">
          <div class="card-body">
            <p class="bigP">🥇</p>
            <h4 class="card-title">1st Place</h4>
            <p class="card-text">{$Leaderboard[0].user_name}</p>
            <p class="card-text">{$Leaderboard[0].user_points} points</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="card text-center">
          <div class="card-body">
            <p class="bigP">🥈</p>
            <h4 class="card-title">2nd Place</h4>
            <p class="card-text">{$Leaderboard[1].user_name}</p>
            <p class="card-text">{$Leaderboard[1].user_points} points</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="card text-center">
          <div class="card-body">
            <p class="bigP">🥉</p>
            <h4 class="card-title">3rd Place</h4>
            <p class="card-text">{$Leaderboard[2].user_name}</p>
            <p class="card-text">{$Leaderboard[2].user_points} points</p>
          </div>
        </div>
      </div>
      <div class="col-md-12 mt-4">
        <table class="table table-striped">
          <thead>
            <tr>
              <th>Rank</th>
              <th>User</th>
              <th>Points</th>
            </tr>
          </thead>
          <tbody>
            {foreach from=$Leaderboard key=key item=user}
              {* //if key > 2 (from 4th place) *}
              {if $key > 2}
                <tr>
                  <td>#{$key+1}</td>
                  <td>{$user.user_name}</td>
                  <td>{$user.user_points}</td>
                </tr>
              {/if}
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>
  </div>
{/block}