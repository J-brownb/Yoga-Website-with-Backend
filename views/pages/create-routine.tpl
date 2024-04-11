{extends file="layouts/main.tpl"}
{block name ="body"}
    <div class="banner">
        <div class="bannercontent pb-5">
            <h1>Create a New Routine</h1>
            <p>Build your own custom routine using poses from our library</p>
        </div>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/awad-assignment/index.php">Home</a></li>
            <li class="breadcrumb-item"><a href="/awad-assignment/index.php?p=routines">Routines</a></li>
            <li class="breadcrumb-item active" aria-current="page">Create Routine</li>
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
        <div class="row">
            <form method="post">
                <div class="mb-3">
                    <label for="routine-name">Routine Name:</label>
                    <input type="text" class="form-control" id="routine-name" name="routine_name" required>
                </div>
                <div class="mb-3">
                    <label for="routine-name">Routine Description:</label>
                    <input type="text" class="form-control" id="routine_description" name="routine_description" required>
                </div>
                <div class="mb-3">
                    <label for="pose1">Pose 1:</label>
                    <select class="form-control" id="pose1" name="routine_pose_id_1" required>
                        <option value="">--Select Pose--</option>
                        {foreach from=$poses item=pose}
                            <option value="{$pose.pose_id}">{$pose.pose_name}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="mb-3">
                    <label for="routine-name">How Long? (Minutes)</label>
                    <input type="text" class="form-control" id="pose1_time" name="pose1_time" required>
                </div>
                <div class="mb-3">
                    <label for="pose2">Pose 2:</label>
                    <select class="form-control" id="pose2" name="routine_pose_id_2" required>
                        <option value="">--Select Pose--</option>
                        {foreach from=$poses item=pose}
                            <option value="{$pose.pose_id}">{$pose.pose_name}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="mb-3">
                    <label for="routine-name">How Long? (Minutes)</label>
                    <input type="text" class="form-control" id="pose2_time" name="pose2_time" required>
                </div>
                <div class="mb-3">
                    <label for="pose3">Pose 3:</label>
                    <select class="form-control" id="pose3" name="routine_pose_id_3" required>
                        <option value="">--Select Pose--</option>
                        {foreach from=$poses item=pose}
                            <option value="{$pose.pose_id}">{$pose.pose_name}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="mb-3">
                    <label for="routine-name">How Long? (Minutes)</label>
                    <input type="text" class="form-control" id="pose3_time" name="pose3_time" required>
                </div>
                <div class="mb-3">
                    <label for="pose3">Pose 4:</label>
                    <select class="form-control" id="pose4" name="routine_pose_id_4" required>
                        <option value="">--Select Pose--</option>
                        {foreach from=$poses item=pose}
                            <option value="{$pose.pose_id}">{$pose.pose_name}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="mb-3">
                    <label for="routine-name">How Long? (Minutes)</label>
                    <input type="text" class="form-control" id="pose4_time" name="pose4_time" required>
                </div>
                <div class="mb-3">
                    <label for="pose3">Pose 5:</label>
                    <select class="form-control" id="pose5" name="routine_pose_id_5" required>
                        <option value="">--Select Pose--</option>
                        {foreach from=$poses item=pose}
                            <option value="{$pose.pose_id}">{$pose.pose_name}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="mb-3">
                    <label for="routine-name">How Long? (Minutes)</label>
                    <input type="text" class="form-control" id="pose5_time" name="pose5_time" required>
                </div>
                <div class="mb-3">
                    <label for="pose3">Pose 6:</label>
                    <select class="form-control" id="pose6" name="routine_pose_id_6" required>
                        <option value="">--Select Pose--</option>
                        {foreach from=$poses item=pose}
                            <option value="{$pose.pose_id}">{$pose.pose_name}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="mb-3">
                    <label for="routine-name">How Long? (Minutes)</label>
                    <input type="text" class="form-control" id="pose6_time" name="pose6_time" required>
                </div>
                <input type="hidden" name="user_id" value="{$user_data['user_id']}">
                <button type="submit" class="btn btn-primary">Create Routine</button>
            </form>
        </div>
    </div>
{/block}