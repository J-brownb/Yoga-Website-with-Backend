{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="banner">
        <div class="bannercontent pb-5">
            <h1>{$user_data['user_name']}'s Account Details</h1>
        <p>View your account details here</p>
    </div>
</div>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/awad-assignment/">Home</a></li>
        <li class="breadcrumb-item"><a href="/awad-assignment/account">Account</a></li>
        <li class="breadcrumb-item active" aria-current="page">Account Details</li>
    </ol>
</nav>
<div class="container pt-5 pb-5">
    <p> <strong> First Name: </strong>{$user_data['user_name']}</p>
    <p> <strong> Surname: </strong>{$user_data['user_surname']}</p>
    <p> <strong> Registered Email Address: </strong>{$user_data['user_email']}</p>
    <p> <strong> Member Since: </strong>{$user_data['user_reg_date']}</p>
        <p> <strong> Points: </strong>{$user_points} </p>


    </div>
{/block}