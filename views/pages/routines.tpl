{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="banner">
        <div class="bannercontent pb-5">
            <h1>Yoga Routines</h1>
            <p>Check out routines from users and the Wellness Site team</p>
        </div>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/awad-assignment/">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Routines</li>
        </ol>
    </nav>
    <div class="container pb-5 pt-5">
        <div class="row centre">
            <h2>Routines</h2>
            {foreach $routines as $index => $routine}
                {* ensures routine is only showed once, check if first routine or if different from prev routine*}
                {if $index === 0 or $routine.routine_name != $routines[$index-1].routine_name}
                    <h3 class="pt-5 pb-2">{$routine.routine_name}</h3>
                    <p>{$routine.routine_description}</p>

                    <p> <i class="fa-solid fa-user"></i> {$routine.user_name}</p>
                    <p><i class="fa-solid fa-calendar-days"></i>
                        {$routine.published_date}</p>
                    <p><i class="fa-solid fa-stopwatch"></i> {$routine.total_time} minutes
                    </p>
                    <br><a href='/awad-assignment/routine/{$routine.routine_id}'> <button class="mb-3">View Routine</button></a>
                    <hr>
                {/if}
            {/foreach}
        </div>
    </div>
    <div class="cream">
        <div class="text-center container pt-5 pb-5">
            {if $user_data}
                <p>Like these routines? Why not create your own</p>
                <a href='/awad-assignment/create-routine'> <button>Create Your Own Routine</button></a>
            {else}
                <p>Like these routines? Create a free account to create your own and share them with the community</p>
                <a href='/awad-assignment/login'> <button>Login / Register</button></a>
            {/if}
        </div>
    </div>
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
    </div>
{/block}