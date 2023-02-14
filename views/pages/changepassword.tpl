{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="banner">
        <div class="bannercontent pb-5">
            <h1>Change Password</h1>
            <p>Update your password here.</p>
        </div>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/awad-assignment/index.php">Home</a></li>
            <li class="breadcrumb-item"><a href="/awad-assignment/index.php?p=account">My Account</a></li>
            <li class="breadcrumb-item active" aria-current="page">Change Password</li>
        </ol>
    </nav>
    <div class="pb-5 container">
        <div class="row">
            <h2> Change Password </h2>
            {if $error}
                <div class="alert alert-danger mb-3" role="alert">
                    {$error}
                </div>
            {else if $success}
                <div class="alert alert-success mb-3" role="alert">
                    {$success}
                </div>
            {/if}
            <form action="" method="post">
                <div class="mb-3">
                    <label for="currentPassword">Current Password</label>
                    <input type="password" class="form-control" id="currentPassword" name="currentPassword">
                </div>
                <div class="mb-3">

                    <label for="newPassword">New Password</label>
                    <input type="password" class="form-control" id="newPassword" name="newPassword">
                </div>
                <button type="submit" class="btn btn-primary">Change password</button>
            </form>
        </div>
    </div>
    </div>
{/block}