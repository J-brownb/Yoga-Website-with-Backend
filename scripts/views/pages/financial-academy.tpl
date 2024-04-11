{extends file="layouts/mobile-menu.tpl"}
{extends file="layouts/main.tpl"}
{block name="body"}

    {* MAIN MENU *}
    <div class="container-fluid d-none d-sm-block" id="collapsed-main">
        <div class="row">
            <!-- Sidebar Nav -->
            <div class="collapsed-sidebar shadow col-md-2 col-lg-1 d-md-block p-0">
            <div class="d-flex flex-column flex-shrink-0 p-3">
                <ul class="nav nav-pills flex-column mb-auto mt-3">
                    <li class="nav-item">
                        <a href="/Dissertation/dashboard" class="nav-link link-body-emphasis ">
                            <i class="fas fa-home"></i>
                            <p class="tiny">Dashboard</p>
                        </a>
                    </li>
                    <li>
                        <a href="/Dissertation/budgeting-tool" class="nav-link link-body-emphasis" aria-current="page">
                            <i class="fa-solid fa-wallet"></i>
                            <p class="tiny">Budgeting</p>
                        </a>
                    </li>
                    <li>
                        <a href="/Dissertation/stock-viewer" class="nav-link link-body-emphasis">
                            <i class="fa-solid fa-chart-line"></i>
                            <p class="tiny">Stocks</p>
                            </a>
                    </li>
                    <li>
                        <a href="/Dissertation/finances" class="nav-link link-body-emphasis">
                            <i class="fa-solid fa-chart-pie"></i>
                            <p class="tiny">Finances</p>
                        </a>
                    </li>
                    <li>
                        <a href="/Dissertation/financial-academy" class="nav-link active mb-2">
                            <i class="fa-solid fa-book"></i>
                            <p class="tiny white">Academy</p>
                        </a>
                    </li>
                </ul>
                <hr>
                <ul class="nav nav-pills flex-column mb-auto mt-3" id="expand">
                    <li class="nav-link link-body-emphasis">
                        <i class="fa-solid fa-circle-chevron-right" style="color: #023045;"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        </div>
    </div>
    <!-- Large Nav -->
    <div class="container-fluid d-none d-sm-block">
        <div class="row">
            <div class="sidebar shadow col-md-3 col-lg-2 d-md-block p-0">
                <div class="d-flex flex-column flex-shrink-0 p-3">
                <a class="navbar-brand pt-3" href="/Dissertation"> <img src="./images/white-bg-logo.png" width="200"
                height="75" class="img-fluid desktop-logo"></a>
                    <ul class="nav nav-pills flex-column mb-auto mt-3">
                        <li class="nav-item">
                            <a href="/Dissertation/dashboard" class="nav-link link-body-emphasis">
                                <i class="fas fa-home"></i>
                                Dashboard
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/budgeting-tool" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-wallet"></i>
                                Budgeting
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/stock-viewer" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-chart-line"></i>
                                Stocks
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/finances" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-chart-pie"></i>
                                Finances
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/financial-academy" class="nav-link active" aria-current="page">
                                <i class="fa-solid fa-book"></i>
                                Academy
                            </a>
                        </li>
                    </ul>
                    <hr>
                    <ul class="nav nav-pills flex-column mb-auto mt-3 border" id="collapse">
                        <li class="nav-link link-body-emphasis">
                            <i class="fa-solid fa-circle-chevron-left" style="color: #023045;"></i> Collapse Sidebar
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    {* <button id="dark-mode">Dark</button> *}
    <main class="full col-md-9 pt-3 ms-sm-auto col-lg-10">
        <nav class="navbar navbar-expand-lg navbar-light bg-light pb-4  d-none d-sm-block">
        <div class="container-fluid flex-row justify-content-end">
        <a class="navbar-brand pt-3" href="#"> </a>
                <div class="dropdown user-menu">
                    <a href="#" class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="./images/Icon.jpg" alt="" width="32" height="32" class="rounded-circle me-2">
                        <strong>{$user_data['user_first_name']}</strong>
                    </a>
                    <ul class="dropdown-menu text-small shadow">
                        <li><a class="dropdown-item" href="/Dissertation/settings">Settings</a></li>
                        <li><a class="dropdown-item" href="/Dissertation/profile">Profile</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="/Dissertation/logout">Sign out</a></li>
                    </ul>
                </div>
                <i class="fa-solid fa-moon me-5" id="dark"></i>
                <i class="fa-solid fa-sun me-5 d-none" id="light"></i>
            </div>
        </nav>
        <div class="container">
            <div class="row pb-2">
                <div class="col text-center pt-5">
                    <h1>Take a Lesson</h1>
                    <p>Ready to improve your financial literacy? Complete our lessons on investing, saving and budgeting to
                        earn points.
                    </p>
                </div>
            </div>
        </div>
        {if $lessonData}
            <div class="container">
                <div class="row pt-5 pb-5">
                    <h2>Available Lessons</h2>
                    <hr>
                    {foreach from=$lessonData item=lesson}
                        <div class="col-md-3 col-10 detail-box">
                            <div class="row row-cols-auto">
                                <div class="col">
                                    <h3> {$lesson.lesson_title}
                                        {if $lesson.lesson_difficulty == "Beginner"}
                                            <i class="fa-solid fa-medal" style="color: #9a9a97;"></i>
                                        {elseif $lesson.lesson_difficulty == "Advanced"}
                                            <i class="fa-solid fa-medal" style="color: #FFD43B;"></i>
                                        {/if}
                                        {if $lesson.lesson_tags == "Saving"}
                                            <i class="fa-solid fa-piggy-bank" style="color:#023045;"></i>
                                        {elseif $lesson.lesson_tags == "Investing"}
                                            <i class="fa-solid fa-chart-line" style="color:#023045;"></i>
                                        {elseif $lesson.lesson_tags == "Budgeting"}
                                            <i class="fa-solid fa-chart-pie" style="color:#023045;"></i>
                                        {/if}
                                    </h3>
                                </div>
                            </div>
                            <div class="row">
                                <p>{$lesson.lesson_description}
                                </p>
                                <hr>
                                <div class="col mb-3">
                                    <span class="badge bg-warning">{$lesson.lesson_points} Points</span>
                                    <span class="badge bg-secondary">{$lesson.lesson_difficulty}</span>
                                    <span class="badge bg-secondary">{$lesson.lesson_tags}</span>
                                </div>
                            </div>
                            {* <div class="row">
                                    <div class="col">
                                        <p>6 Learners have taken this lesson</p>
                                    </div>
                                </div> *}
                            <a href="/Dissertation/lesson/{$lesson.lesson_id}"><button class="primary-button">Take
                                    Lesson</button></a>
                        </div>
                    {/foreach}
                </div>
            </div>
        {/if}
        {if $completedLessonData}
            <div class="container section">
                <div class="row pt-5 pb-5">
                    <h2>Completed Lessons</h2>
                    <hr>
                    {foreach from=$completedLessonData item=lesson}
                        <div class="col-md-3 col-10 detail-box opacity05">
                            <div class="row row-cols-auto">
                                <div class="col">
                                    <h3> {$lesson.lesson_title}
                                        {if $lesson.lesson_difficulty == "Beginner"}
                                            <i class="fa-solid fa-medal" style="color: #9a9a97;"></i>
                                        {elseif $lesson.lesson_difficulty == "Advanced"}
                                            <i class="fa-solid fa-medal" style="color: #FFD43B;"></i>
                                        {/if}
                                        {if $lesson.lesson_tags == "Saving"}
                                            <i class="fa-solid fa-piggy-bank" style="color:#023045;"></i>
                                        {elseif $lesson.lesson_tags == "Investing"}
                                            <i class="fa-solid fa-chart-line" style="color:#023045;"></i>
                                        {elseif $lesson.lesson_tags == "Budgeting"}
                                            <i class="fa-solid fa-chart-pie" style="color:#023045;"></i>
                                        {/if}
                                    </h3>
                                </div>
                            </div>
                            <div class="row">
                                <p>{$lesson.lesson_description}
                                </p>
                                <hr>
                                <div class="col mb-2">
                                    <span class="badge bg-warning">{$lesson.lesson_points} Points</span>
                                    <span class="badge bg-secondary">{$lesson.lesson_difficulty}</span>
                                    <span class="badge bg-secondary">{$lesson.lesson_tags}</span>
                                </div>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        {/if}
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

    </body>
{/block}