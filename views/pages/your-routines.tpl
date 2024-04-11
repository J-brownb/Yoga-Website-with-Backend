{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="banner">
        <div class="bannercontent pb-5">
            <h1>Your Routines</h1>
            <p>See your custom routines</p>
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
            {if $userRoutines}
                <h2>Your Routines</h2>
                {foreach $userRoutines as $index => $routine}
                    {* if first, or if the name is different to prev routine  *}
                    {if $index === 0 or $routine.routine_name != $userRoutines[$index-1].routine_name}
                        <h3 class="pt-5 pb-2">{$routine.routine_name}</h3>
                            <p><i class="fa-solid fa-calendar-days"></i>
                            {$routine.published_date}</p>
                        <p><i class="fa-solid fa-stopwatch"></i> {$routine.total_time} minutes
                        </p>
                        <br><a href='/awad-assignment/routine/{$routine.routine_id}'> <button>View Routine</button></a>
    
                    {/if}
    
                {/foreach}
                <p class=mt-5>Thanks for contributing to the community. <a href="/awad-assignment/create-routine">Add another routine here</a>.
            {else}
                <strong>
                    <p class=mt-5>No routines yet, why not <a href="/awad-assignment/create-routine">create your first</a>?
                    </p>
                </strong>
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