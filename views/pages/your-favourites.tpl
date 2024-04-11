{extends file="layouts/main.tpl"}
{block name ="body"}
    <div class="banner">
        <div class="bannercontent pb-5">
            <h1>Your Favourites</h1>
            <p>View poses you've added to your favourites here</p>
            </div>
        </div>
        <div class="container pt-5 pb-5">
            <div class="row centre">
                {if $Faves}
                    {foreach from=$Faves item=pose}
                        <div class="col-lg-3 results">
                            <div class="poseimage" style="background-image: url(./user-images/{$pose.pose_image});">
                            </div>
                            <br>
                            <h3>{$pose.pose_name}</h3>
                            <p><i>{$pose.pose_sanskrit_name}</i></p>
                            <a href='/awad-assignment/pose/{$pose.pose_slug}'> <button>View Pose</button></a>
                        </div>
                    {/foreach}
                {else}
                    <strong>
                        <p>No favourites yet, why not <a href="/awad-assignment/all-poses">view all poses</a>.
                        </p>
                    </strong>
                {/if}
            </div>
        </div>

    {/block}