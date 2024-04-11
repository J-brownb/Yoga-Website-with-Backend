{extends file="layouts/main.tpl"}
{block name ="body"}
  <div class="banner">
    <div class="bannercontent pb-5">
      <h1>{$routine.routine_name}</h1>
      <p>This routine will take {$routine.total_time} minutes</p>
    </div>
  </div>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="/awad-assignment/">Home</a></li>
      <li class="breadcrumb-item"><a href="/awad-assignment/routines">Routines</a></li>
      <li class="breadcrumb-item active" aria-current="page">{$routine.routine_name}</li>
    </ol>
  </nav>
    <div class="container pt-5 pb-5">
      {foreach range(1, 6) as $i}
        {if !empty($routine["routine_pose_id_{$i}"])}
          <div class="row mb-5">
            <div class="col">
              <img src="/awad-assignment/user-images/{$routine["pose_image_{$i}"]}" width="600" height="500">
            </div>
            <div class="col">
            <h2>Pose {$i}</h2>
              <h3>{$routine["pose_name_{$i}"]} | <i>{$routine["pose_sanskrit_name_{$i}"]}</i></h3>
              <strong><p>Do this pose for {$routine["routine_pose_{$i}_time"]} minutes</p></strong>
              {* nl2br ensures instructions are on a new line  *}
              <p>{$routine["pose_instructions_{$i}"]|nl2br}
              </p>
              <hr>
            </div>
          </div>
        {/if}
      {/foreach}

        </div>
      </div>
    </div>
  </div>
  <div class="cream">
  <div class="text-center container pt-5 pb-5 mb-5">
      {if $user_data}
          <p>Like this routine? Why not create your own</p>
          <a href='/awad-assignment/create-routine'> <button>Create Your Own Routine</button></a>
      {else}
          <p>Like this routine? Create a free account to create your own and share them with the community</p>
          <a href='/awad-assignment/login'> <button>Login / Register</button></a>
      {/if}
  </div>
</div>
{/block}