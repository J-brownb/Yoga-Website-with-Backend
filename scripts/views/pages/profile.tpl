{extends file="layouts/nav.tpl"}
{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container">
        <div class="row pb-5">
            <div class="col text-center">
                <h1>Your Profile</h1>
                <p>View badges and earned from lessons and manage your account details.</p>
            </div>
        </div>
        {if $success}
            <div class="alert alert-success" role="alert">
                {$success}
            </div>
        {/if}
        {if $error}
            <div class="alert alert-danger" role="alert">
                {$error}
            </div>
        {/if}
        {if $passwordSuccess}
            <div class="alert alert-success" role="alert">
                {$passwordSuccess}
            </div>
        {/if}
        {if $passwordError}
            <div class="alert alert-danger" role="alert">
                {$passwordError}
            </div>
        {/if}
        {if $accountSuccess}
            <div class="alert alert-success" role="alert">
                {$accountSuccess}
            </div>
        {/if}
        {if $accountError}
            <div class="alert alert-danger" role="alert">
                {$accountError}
            </div>
        {/if}
        <div class="row pb-5">
            <div class="col">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link setting-tabs active" id="badges-tab" data-bs-toggle="tab" data-bs-target="#badges"
                            type="button" role="tab" aria-controls="badges" aria-selected="true">Badges</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link setting-tabs" id="account-tab" data-bs-toggle="tab" data-bs-target="#account"
                            type="button" role="tab" aria-controls="account" aria-selected="false">Account
                            Details</button>
                    </li>
                </ul>

                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="badges" role="tabpanel" aria-labelledby="badges-tab">
                        {if $completedLessonData}
                            <h2 class="mt-3">Badges</h2>
                            <p>Take a look at the lessons you've completed</p>
                    <hr>
                    <div class="row">
                        {foreach from=$completedLessonData item=lesson}
                        <div class="col">
                            <img src="./images/{$lesson.lesson_badge_src}.png" width="250" height="250">
                            <h3>{$lesson.lesson_title}</h3>
                        </div>
                        {/foreach}
                    </div>
                    {/if}
                    {if lessonData}
                    <div class="row mt-3">
                        <h2>Badges to Claim</h2>
                        <p>Keep taking lessons to earn more badges</p>
                        <hr>
                        {foreach from=$lessonData item=lesson}
                            <div class="col mb-3">
                            <img src="./images/{$lesson.lesson_badge_src}.png" width="250" height="250"
                                class="opacity05">
                            <h3>{$lesson.lesson_title}</h3>
                            <a href="/Dissertation/lesson/{$lesson.lesson_id}"><button class="primary-button">Take
                                    Lesson</button></a>
                        </div>
                        {/foreach}
                    </div>
                    {/if}
                </div>
                <div class="tab-pane fade" id="account" role="tabpanel" aria-labelledby="account-tab">
                    <div class="row mt-3">
                        <div class="col-md-7 col-12">
                            <h2>Account Details</h2>
                            <form method="post" action="" class="">
                                <div class="row g-2">
                                    <div class="form-floating mb-3 col">
                                        <input type="text" required class="form-control" id="floatingInput"
                                            name="user_first_name" placeholder="First Name"
                                            value="{$userData['user_first_name']}">
                                        <label class="opacity05" for="floatingInput">First Name</label>
                                    </div>
                                    <div class="form-floating mb-3 col">
                                        <input type="text" required class="form-control" id="floatingInput"
                                            name="user_surname" placeholder="Last Name"
                                            value="{$userData['user_surname']}">
                                        <label class="opacity05" for="floatingInput">Last Name</label>
                                    </div>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="email" required class="form-control" id="floatingInput"
                                        name="user_email" placeholder="Email Address" value="{$userData['user_email']}">
                                    <label class="opacity05" for="floatingPassword">Email</label>
                                </div>
                                <button type="submit" name="updateDetails" value="1"
                                    class="primary-button mb-5">Update</button>
                            </form>
                            <h2>Change Password</h2>
                            <form action="" method="post">
                                <div class="form-floating mb-3 password-input-container">
                                    <input type="password" required class="form-control" id="floatingPassword"
                                        name="currentPassword" placeholder="Password">
                                    <i class="fa-solid fa-eye password-eye-icon text-muted"></i>
                                    <label class="opacity05" for="floatingPassword">Current Password</label>
                                </div>
                                <div class="form-floating mb-3 password-input-container">
                                    <input type="password" required class="form-control" id="floatingPassword"
                                        name="newPassword" placeholder="Password">
                                    <i class="fa-solid fa-eye password-eye-icon text-muted"></i>
                                    <label class="opacity05" for="floatingPassword">New Password</label>
                                </div>
                                <button type="submit" class="primary-button">Change Password</button>
                            </form>
                        </div>
                        <div class="col-md-4 col-10 detail-box text-center">
                            <h3 class="mb-3">Account Set Up Progress</h3>
                            {assign var="progress" value=0}
                            {if $user_data['user_pay']}
                                    {assign var="progress" value=$progress+25}
                                    <p class="border rounded"><i class="fa-solid fa-circle-check" style="color: #63E6BE;"></i>
                                        <s>Update your pay details</s></p>
                                {else}
                                    <p class="border rounded"><i class="fa-solid fa-circle-xmark" style="color: #e90c0c;"></i>
                                        <a href="/Dissertation/settings">Update
                                            your pay details</a></p>
                                {/if}

                                {if $budgetData}
                                    {assign var="progress" value=$progress+25}
                                    <p class="border rounded"><i class="fa-solid fa-circle-check" style="color: #63E6BE;"></i>
                                        <s>Update your budget</s></p>
                                {else}
                                    <p class="border rounded"><i class="fa-solid fa-circle-xmark" style="color: #e90c0c;"></i>
                                        <a href="/Dissertation/budgeting-tool">Update budget</a></p>
                                {/if}

                                {if $financesData}
                                    {assign var="progress" value=$progress+25}
                                    <p class="border rounded"><i class="fa-solid fa-circle-check" style="color: #63E6BE;"></i>
                                        <s>Update your finances</s></p>
                                {else}
                                    <p class="border rounded"><i class="fa-solid fa-circle-xmark" style="color: #e90c0c;"></i>
                                        <a href="/Dissertation/finances">Update finances</a></p>
                                {/if}

                                {if $completedLessonData}
                                    {assign var="progress" value=$progress+25}
                                    <p class="border rounded"><i class="fa-solid fa-circle-check" style="color: #63E6BE;"></i>
                                        <s>Complete a lesson</s></p>
                                {else}
                                    <p class="border rounded"><i class="fa-solid fa-circle-xmark" style="color: #e90c0c;"></i>
                                        <a href="/Dissertation/financial-academy">Complete a lesson</a></p>
                                {/if}
                                <div class="progress mt-5">
                                    <div class="progress-bar" role="progressbar" style="width: {$progress}%;"
                                        aria-valuenow="{$progress}" aria-valuemin="0" aria-valuemax="100">
                                        {$progress}%</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    <div class="footer text-center pt-3 ms-sm-auto">
    <div class="container">
        <div class=" row">
            <div class="col">
                <p>The tools provided on this website are for educational purposes only. They do not constitute
                    financial
                    advice, always consult with a qualified financial advisor before making any financial decisions.
                </p>
            </div>
        </div>
    </div>
</div>
    </main>

{/block}