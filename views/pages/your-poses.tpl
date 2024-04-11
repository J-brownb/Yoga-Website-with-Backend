{extends file="layouts/main.tpl"}
{block name ="body"}
    <div class="banner">
        <div class="bannercontent pb-5">
            <h1>Your Poses</h1>
            <p>View, edit and delete poses you've added</p>
    </div>
</div>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/awad-assignment/">Home</a></li>
        <li class="breadcrumb-item"><a href="/awad-assignment/account">Account</a></li>
        <li class="breadcrumb-item active" aria-current="page">Your Poses</li>
    </ol>
</nav>
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
    <div class="row centre">
        {if $Poses}
        {foreach from=$Poses item=pose}
        <div class="col-lg-3 results">
            <div class="poseimage" style="background-image: url(./user-images/{$pose.pose_image});">
            </div>
            <br>
            <h3>{$pose.pose_name}</h3>
            <p><i>{$pose.pose_sanskrit_name}</i></p>
            <div class="btn-group mb-3" role="group">
                <a href='/awad-assignment/pose/{$pose.pose_slug}' class="mx-1" title="View Pose Information">
                        <button type="button"><i class="fas fa-eye"></i></button>
                    </a>
                    <form method="post">
                        <input type="hidden" name="pose_id" value="{$pose.pose_id}">
                        <button type="submit" class="mx-1" name="editPose" title="Edit Pose"><i
                                class="fas fa-edit"></i></button>
                    </form>
                    <form method="post">
                        <input type="hidden" name="pose_id" value="{$pose.pose_id}">
                        <button type="submit" class="mx-1 danger" name="deletePose" title="Delete Pose"><i
                                class="fas fa-trash"></i></button>
                    </form>
                </div>
            </div>
        {/foreach}
        {else}
        <strong>
            <p>No poses added yet, why not <a href="/awad-assignment/add">add one</a>.
            </p>
        </strong>
        {/if}
    </div>
</div>

{/block}