{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="banner">
    <div class="bannercontent pb-5">
        <h1>Edit a Pose</h1>
        <p>Update the details of a pose you have uploaded</p>
    </div>
</div>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/awad-assignment/">Home</a></li>
                <li class="breadcrumb-item"><a href="/awad-assignment/account">Account</a></li>
                <li class="breadcrumb-item"><a href="/awad-assignment/your-poses">Your Poses</a></li>
                <li class="breadcrumb-item active" aria-current="page">Edit Pose</li>
            </ol>
        </nav>
        <div class = "container">
        <h1>Edit Pose</h1>
        <div class="row">
            {if $error}
                <div class="alert alert-danger mb-3" role="alert">
                    {$error}
                </div>
            {else if $success}
                <div class="alert alert-success mb-3" role="alert">
                    {$success}
                </div>
            {/if}
            <form method="post" enctype="multipart/form-data">
                <div class="mb-3">
                <label class="form-label" for="pose_id"></label>
                <select class="form-control" id="pose_id" name="pose_id" required hidden>
                {foreach from=$poses item=pose}
                    {if $pose.pose_id == $selected_pose.pose_id}
                        <option value="{$pose.pose_id}" selected>{$pose.pose_name}</option>
                    {else}
                        <option value="{$pose.pose_id}">{$pose.pose_name}</option>
                    {/if}
                {/foreach}
            </select>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="new_pose_name">Update Pose Name</label>
                    <input type="text" class="form-control" id="new_pose_name" name="new_pose_name" required>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="new_pose_sanskrit_name">Update Pose Sanskrit Name</label>
                    <input type="text" class="form-control" id="new_pose_sanskrit_name" name="new_pose_sanskrit_name" required>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="new_cat_id">Update Pose Category</label><br>
                    <select class="form-control" id="new_cat_id" name="new_cat_id" required>
                        {foreach from=$categories item=category}
                            <option value="{$category.cat_id}">{$category.cat_name}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="mb-3">
                    <label for ="formFile" class="form-label" for="new_pose_image">Update Pose Image</label><br>
                    <input class="form-control" type="file" name="new_pose_image" id="new_pose_image">
                </div>
                <div class="mb-3">
                    <label class="form-label" for="new_pose_difficulty">Update Pose Difficulty</label>
                    <select class="form-control" id="new_pose_difficulty" name="new_pose_difficulty" required>
                        <option value="beginner">Beginner</option>
                        <option value="intermediate">Intermediate</option>
                        <option value="advanced">Advanced</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="new_pose_instructions">Update Pose Instructions</label>
                    <textarea class="form-control" id="new_pose_instructions" name="new_pose_instructions" rows="5" required></textarea>
                </div>
                <button type="submit" name="edit-pose" class="mb-5 btn btn-primary">Update Pose</button>
            </form>
        </div>
    </div>
    {/block}