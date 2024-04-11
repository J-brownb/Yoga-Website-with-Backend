{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container-fluid">
        <div class="row">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand pt-3" href="#"> <img src="./images/Moneywise logo.png" width="300"
                            height="100"></a>
                    <div class="dropdown user-menu">
                        <a href="#"
                            class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                            <strong>{$user_data['user_first_name']}</strong>
                        </a>
                        <ul class="dropdown-menu text-small shadow">
                            <li><a class="dropdown-item" href="/Dissertation/settings">Settings</a></li>
                            <li><a class="dropdown-item" href="#">Profile</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="/Dissertation/logout">Sign out</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Sidebar Nav -->
            <div class="col-md-3 col-lg-2 d-md-block p-0 bg-body-tertiary">
                <div class="d-flex flex-column flex-shrink-0 p-3">
                    <ul class="nav nav-pills flex-column mb-auto mt-3">
                        <li class="nav-item">
                            <a href="/Dissertation/" class="nav-link link-body-emphasis" aria-current="page">
                                <i class="fas fa-home me-2"></i>
                                Home
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
                            <a href="/Dissertation/financial-academy" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-book"></i>
                                Academy
                            </a>
                        </li>
                    </ul>
                    <hr>
                </div>
            </div>
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div class="container">
                    <div class="row pb-5">
                        <div class="col text-center">
                            <h1>Your Settings</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultrices lorem at fringilla
                                vehicula.</p>
                        </div>
                    </div>
                    <div class="row pb-5">
                        <div class="col">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="home-tab" data-bs-toggle="tab"
                                        data-bs-target="#home" type="button" role="tab" aria-controls="home"
                                        aria-selected="true">Finance Submissions</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile"
                                        type="button" role="tab" aria-controls="profile" aria-selected="false">Budget
                                        Submissions</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact"
                                        type="button" role="tab" aria-controls="contact" aria-selected="false">Update
                                        Password</button>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                    {if $allfinancesData}
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Entry Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {foreach from=$allFinancesData item=finances}
                                                    <tr>
                                                        <td>
                                                            {$finances.input_date} <button type="submit"
                                                                class="btn btn-danger">Delete Entry</button>
                                                        </td>
                                                    </tr>
                                                {/foreach}
                                            </tbody>
                                        </table>
                                    {else}
                                        <div class="row text-center">
                                            <div class="col detail-box pt-5 pb-5">
                                                <h2>There's nothing here yet 😭</h2>
                                        <p><a href=/Dissertation/finances>Update your finances</a> to see more
                                            information.</p>
                                    </div>
                                </div>
                                {/if}
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                {if $allBudgetData}
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">Entry Date</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {foreach from=$allBudgetData item=budget}
                                        <tr>
                                            <td>
                                                {$budget.input_date} <button type="submit" class="btn btn-danger">Delete
                                                    Entry</button>
                                            </td>
                                        </tr>
                                        {/foreach}
                                    </tbody>
                                </table>
                                {else}
                                <div class="row text-center">
                                    <div class="col detail-box pt-5 pb-5">
                                        <h2>There's nothing here yet 😭</h2>
                                                <p><a href=/Dissertation/budgeting-tool>Update your budget</a> to see more
                                                    information.</p>
                                            </div>
                                        </div>
                                    {/if}
                                </div>

                            </div>

                        </div>
                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                        <div class="row mt-4">
                        <form action="" method="post">
                            <div class="form-floating mb-3">
                                <input type="password" required class="form-control" id="floatingInput"
                                    name="currentPassword" placeholder="password">
                                <label class="opacity05" for="floatingInput">Current Password</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="password" required class="form-control" id="floatingPassword"
                                    name="newPassword" placeholder="newPassword">
                                <label class="opacity05" for="floatingPassword">New Password</label>
                            </div>
                            <button type="submit" class="primary-button">Change Password</button>
                        </form>
                    </div>
                </div>
        </div>
    </div>
    </div>
    <div class="col">
        {if $success}
            <div class="alert alert-success" role="alert">
                {$success}
            </div>
        {/if}
    </div>
    </div>
    </div>
    </main>
{/block}