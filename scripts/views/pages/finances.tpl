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
                            <a href="/Dissertation/finances" class="nav-link active mb-2">
                                <i class="fa-solid fa-chart-pie"></i>
                                <p class="tiny white">Finances</p>
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/financial-academy" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-book"></i>
                                <p class="tiny">Academy</p>
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
                    <a class="navbar-brand pt-3" href="#"> <img src="./images/white-bg-logo.png" width="200" height="75"
                            class="img-fluid desktop-logo"></a>
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
                            <a href="/Dissertation/finances" class="nav-link active" aria-current="page">
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
        <!-- Modal -->
        <div class="modal fade" id="updateFinanceModal" tabindex="-1" aria-labelledby="updateFinanceModalLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="updateFinanceModalLabel">Update Finances</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>You can leave any fields that do not apply blank.</p>
                        <form method="post" action="" class="">
                            <div class="form-floating mb-3 col">
                                <input type="text" class="form-control" id="floatingInput" name="savings_current_account"
                                    placeholder="Current Account Balance">
                                <label class="opacity05" for="floatingInput">Current Account Balance</label>
                            </div>
                            <div class="row g-2">
                                <div class="form-floating mb-3 col-8">
                                    <input type="text" class="form-control" id="floatingInput" name="savings_account1"
                                        placeholder="Savings Account #1 Balance">
                                    <label class="opacity05" for="floatingInput">Primary Savings Account</label>
                                </div>
                                <div class="form-floating mb-3 col-4">
                                    <input type="text" class="form-control" id="floatingInput"
                                        name="savings_account1_interest" placeholder="Savings Account #1 Interest">
                                    <label class="opacity05" for="floatingInput">Interest %</label>
                                </div>
                            </div>
                            <div class="row g-2">
                                <div class="form-floating mb-3 col-8">
                                    <input type="text" class="form-control" id="floatingInput" name="savings_account2"
                                        placeholder="Savings Account #2 Balance">
                                    <label class="opacity05" for="floatingInput">Secondary Savings Account</label>
                                </div>
                                <div class="form-floating mb-3 col-4">
                                    <input type="text" class="form-control" id="floatingInput"
                                        name="savings_account2_interest" placeholder="Savings Account #2 Interest">
                                    <label class="opacity05" for="floatingInput">Interest %</label>
                                </div>
                            </div>
                            <div class="row g-2">
                                <div class="form-floating mb-3 col-8">
                                    <input type="text" class="form-control" id="floatingInput" name="savings_account3"
                                        placeholder="Savings Account #3 Balance">
                                    <label class="opacity05" for="floatingInput">Other Savings Account</label>
                                </div>
                                <div class="form-floating mb-3 col-4">
                                    <input type="text" class="form-control" id="floatingInput"
                                        name="savings_account3_interest" placeholder="Savings Account #3 Interest">
                                    <label class="opacity05" for="floatingInput">Interest %</label>
                                </div>
                            </div>
                            <div class="form-floating mb-3 col">
                                <input type="text" class="form-control" id="floatingInput" name="savings_investments"
                                    placeholder="Investment Account Balance">
                                <label class="opacity05" for="floatingInput">Investment Account</label>
                            </div>
                            <div class="form-floating mb-3 col">
                                <input type="text" class="form-control" id="floatingInput" name="savings_other"
                                    placeholder="Other Savings">
                                <label class="opacity05" for="floatingInput">Additional Savings</label>
                            </div>
                            <button type="submit" name="submitFinances" value="1"
                                class="primary-button mt-3 mb-5">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        {if $financesData}

            <div class="container">
                <div class="row">
                    <div class="col text-center pt-5">
                        <h1>Your Finances</h1>
                        <p>Updates your finances to get an overview of your financial net worth and see a complete view of all
                            your assets. </p>
                            <button type="button" class="primary-button mt-3 mb-5" data-bs-toggle="modal"
                            data-bs-target="#updateFinanceModal">
                            Update Finances
                        </button>
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
                        <div class="col">
                            {if $goalSuccess}
                                <div class="alert alert-success" role="alert">
                                    {$goalSuccess}
                                </div>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>

            {if $financesData}
                <div class="container">
                    <div class="section row pb-5 justify-content-center">
                        <div class="detail-box col-md col-11">
                            <h3 class="text-muted">Total funds</h3>
                            <p class="box-value">
                                {assign var="totalFunds" value=$financesData[0]['total_funds']}
                                £{$totalFunds|my_number_format} </p>
                            {if $prevFinancesData}
                                {if $prevFinancesData[0]['total_funds'] < $totalFunds}
                                    <span
                                        class="badge bg-success summary-button">+£{($totalFunds - $prevFinancesData[0]['total_funds'])|my_number_format}</span>

                                {elseif $prevFinancesData[0]['total_funds'] > $totalFunds}
                                    <span
                                        class="badge bg-danger summary-button">-£{($prevFinancesData[0]['total_funds'] - $totalFunds)|my_number_format}</span>

                                {/if}
                            {/if}
                        </div>
                        {if $financesData[0]['savings_current_account']}
                            <div class="detail-box col-md col-11">
                                <h3 class="text-muted">Current Account</h3>
                                <p class="box-value">
                                    £{$financesData[0]['savings_current_account']|my_number_format}</p>
                                {if $prevFinancesData}
                                    {if $prevFinancesData[0]['savings_current_account'] < $financesData[0]['savings_current_account']}
                                        <span class="badge bg-success summary-button">
                                            +£{($financesData[0]['savings_current_account'] - $prevFinancesData[0]['savings_current_account'])|my_number_format}
                                        </span>

                                    {elseif $prevFinancesData[0]['savings_current_account'] > $financesData[0]['savings_current_account']}
                                        <span class="badge bg-danger summary-button">
                                            -£{($prevFinancesData[0]['savings_current_account'] - $financesData[0]['savings_current_account'])|my_number_format}
                                        </span>

                                    {/if}
                                {/if}
                            </div>
                        {/if}
                        {if $financesData[0]['total_savings']}
                            <div class="detail-box col-md col-11">
                                <h3 class="text-muted">Savings</h3>
                                <p class="box-value">
                                    £{$financesData[0]['total_savings']|my_number_format}</p>
                                {if $prevFinancesData}
                                    {if $prevFinancesData[0]['total_savings'] < $financesData[0]['total_savings']}
                                        <span class="badge bg-success summary-button">
                                            +£{($financesData[0]['total_savings'] - $prevFinancesData[0]['total_savings'])|my_number_format}
                                        </span>

                                    {elseif $prevFinancesData[0]['total_savings'] > $financesData[0]['total_savings']}
                                        <span class="badge bg-danger summary-button">
                                            -£{($prevFinancesData[0]['total_savings'] - $financesData[0]['total_savings'])|my_number_format}
                                        </span>

                                    {/if}
                                {/if}
                            </div>
                        {/if}
                        {if $financesData[0]['savings_investments']}
                            <div class="detail-box col-md col-11">
                                <h3 class="text-muted">Investments</h3>
                                <p class="box-value">£{$financesData[0]['savings_investments']|my_number_format}</p>
                                {if $prevFinancesData}
                                    {if $prevFinancesData[0]['savings_investments'] < $financesData[0]['savings_investments']}
                                        <span class="badge bg-success summary-button">
                                            +£{($financesData[0]['savings_investments'] - $prevFinancesData[0]['savings_investments'])|my_number_format}
                                        </span>

                                    {elseif $prevFinancesData[0]['savings_investments'] > $financesData[0]['savings_investments']}
                                        <span class="badge bg-danger summary-button">
                                            -£{($prevFinancesData[0]['savings_investments'] - $financesData[0]['savings_investments'])|my_number_format}
                                        </span>

                                    {/if}
                                {/if}
                            </div>
                        {/if}
                    </div>
                </div>
                <div class="container">
                    <div class="row pt-2 pb-5 mb-5 text-center">
                        <h2 class="mb-5">Your Finances Over Time</h2>
                        <div class="col-md-10 col-12 mx-auto">
                            <div class="d-flex align-items-center justify-content-center">
                                <canvas id="line-chart"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="section row gx-5 m-2">
                        <div class="col-12 col-md-5">
                            <h2>Fund Breakdown</h2>
                            <div>
                                <canvas id="pie-chart"></canvas>
                            </div>
                        </div>
                        <div class="col-12 col-md-7">
                            <h2>Detailed Breakdown</h2>
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col" class="theader">Account</th>
                                        <th scope="col" class="theader">Value</th>
                                        <th scope="col" class="theader">Monthly Interest</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {if $financesData[0]['savings_account1'] > 0}
                                        <tr>
                                            {* Badge colour is determined by int rate *}
                                            <th scope="row">Savings Account 1 Balance
                                                {if $financesData[0]['savings_account1_interest'] <= 1}
                                                    <span class="badge bg-danger">{$financesData[0]['savings_account1_interest']}%
                                                        Int</span>
                                                {else if $financesData[0]['savings_account1_interest'] > 1 AND $financesData[0]['savings_account1_interest'] <= 3}
                                                    <span
                                                        class="badge bg-warning text-dark">{$financesData[0]['savings_account1_interest']}%
                                                        Int</span>
                                                {else if $financesData[0]['savings_account1_interest'] > 3}
                                                    <span class="badge bg-success">{$financesData[0]['savings_account1_interest']}%
                                                        Int</span>
                                                {/if}
                                            </th>
                                            <td>£{$financesData[0]['savings_account1']|my_number_format}</td>
                                            <td>
                                            £{$financesData[0]['savings_account1'] * ($financesData[0]['savings_account1_interest'] / 100)}
                                            </td>
                                        </tr>
                                    {/if}
                                    {if $financesData[0]['savings_account2'] > 0}
                                        <tr>
                                            <th scope="row">Savings Account 2 Balance
                                                {if $financesData[0]['savings_account2_interest'] <= 1}
                                                    <span class="badge bg-danger">{$financesData[0]['savings_account2_interest']}%
                                                        Int</span>
                                                {else if $financesData[0]['savings_account2_interest'] > 1 AND $financesData[0]['savings_account2_interest'] <= 3}
                                                    <span
                                                        class="badge bg-warning text-dark">{$financesData[0]['savings_account2_interest']}%
                                                        Int</span>
                                                {else if $financesData[0]['savings_account2_interest'] > 3}
                                                    <span class="badge bg-success">{$financesData[0]['savings_account2_interest']}%
                                                        Int</span>
                                                {/if}
                                            </th>
                                            <td>£{$financesData[0]['savings_account2']|my_number_format}</td>
                                            <td>
                                            £{round($financesData[0]['savings_account2'] * ($financesData[0]['savings_account2_interest'] / 100), 2)}
                                            </td>
                                        </tr>
                                    {/if}

                                    {if $financesData[0]['savings_account3'] > 0}
                                        <tr>
                                            <th scope="row">Savings Account 3 Balance
                                                {if $financesData[0]['savings_account3_interest'] <= 1}
                                                    <span class="badge bg-danger">{$financesData[0]['savings_account3_interest']}%
                                                        Int</span>
                                                {else if $financesData[0]['savings_account3_interest'] > 1 AND $financesData[0]['savings_account3_interest'] <= 3}
                                                    <span
                                                        class="badge bg-warning text-dark">{$financesData[0]['savings_account3_interest']}%
                                                        Int</span>
                                                {else if $financesData[0]['savings_account3_interest'] > 3}
                                                    <span class="badge bg-success">{$financesData[0]['savings_account3_interest']}%
                                                        Int</span>
                                                {/if}
                                            </th>
                                            <td>£{$financesData[0]['savings_account3']|my_number_format}</td>
                                            <td>
                                            £{$financesData[0]['savings_account3'] * ($financesData[0]['savings_account3_interest'] / 100)}
                                            </td>

                                        </tr>
                                    {/if}
                                    {if $financesData[0]['savings_investments'] > 0}
                                        <tr>
                                            <th scope="row">Savings Investments</th>
                                            <td>£{$financesData[0]['savings_investments']|my_number_format}</td>
                                            <td> £{$financesData[0]['savings_investments'] * round(5 / 100, 2)}
                                                <i class="fa-solid fa-circle-info" type="button" class="btn btn-secondary"
                                                    data-bs-toggle="tooltip" data-bs-placement="right"
                                                    data-bs-title="The average inflation-adjusted annual returns for shares is more than 5%."></i>
                                            </td>
                                        </tr>
                                    {/if}

                                    {if $financesData[0]['savings_current_account'] > 0}
                                        <tr>
                                            <th scope="row">Current Account Balance</th>
                                            <td>£{$financesData[0]['savings_current_account']|my_number_format}</td>
                                            <td></td>

                                        </tr>
                                    {/if}
                                    {if $financesData[0]['savings_other'] > 0}
                                        <tr>
                                            <th scope="row">Savings Other</th>
                                            <td>£{$financesData[0]['savings_other']|my_number_format}</td>
                                            <td></td>

                                        </tr>
                                    {/if}
                                </tbody>
                            </table>
                            <p>You last updated your finances on {$financesData[0]['input_date']}</p>
                        </div>
                    </div>
                </div>
                         <div class="container section text-center mb-5">
                    <div class="row m-3">
                        <h2>Your Goals</h2>
                        <p>Save money more effectively by setting goals.</p>
                        {if !$user_data['savings_goal']}
                            <div class="col icon-box pt-3">
                                <i class="fa-solid fa-wallet text-center pt-3 pb-1"></i>
                                <h3 class="mb-3">Your Savings Goal</h3>
                                <form method="post" action="" class="">
                                    <div class="form-floating mb-3 col">
                                        <input type="text" required class="form-control" id="floatingInput" name="savings_goal"
                                            placeholder="Your Savings Goal">
                                        <label class="opacity05" for="floatingInput">Your Savings Goal</label>
                                    </div>
                                    <button type="submit" name="savingsGoal" value="1" class="primary-button mt-3 mb-5">Set Savings
                                        Goal</button>
                                </form>
                            </div>
                        {else}
                            <div class="col icon-box pt-3">
                                <i class="fa-solid fa-wallet text-center pt-3 pb-1"></i>
                                <h3>Your Savings Goal</h3>
                                {assign var="savingsGoal" value=$user_data['savings_goal']}
                                {if $savingsGoal != 0}
                                    {assign var="progress" value=($financesData[0]['total_savings'] / $savingsGoal) * 100}
                                    {if $progress > 100}
                                        {assign var="progress" value=100}
                                    {/if}
                                {else}
                                    {assign var="progress" value=0}
                                {/if}
                                {assign var="rounded_progress" value=round($progress, 0)}
                                {if $financesData[0]['total_savings'] < $savingsGoal}
                                    <h3 class="blue">£{$financesData[0]['total_savings']|my_number_format} /
                                        £{$user_data['savings_goal']|my_number_format}
                                    </h3>
                                    <div class="progress mt-2" style="height: 30px;">
                                        <div class="progress-bar" role="progressbar"
                                            style="width: {$rounded_progress}%;  background-color:#023045"
                                            aria-valuenow="{$rounded_progress}" aria-valuemin="0" aria-valuemax="100">
                                            {$rounded_progress}%</div>
                                    </div>
                                    <hr>
                                    <div class="accordion accordion-flush" id="accordionFlushExample">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="flush-headingOne">
                                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#savings_goal" aria-expanded="false" aria-controls="savings_goal">
                                                    Update saving goal.
                                                </button>
                                            </h2>
                                            <div id="savings_goal" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                                                data-bs-parent="#accordionFlushExample">
                                                <div class="accordion-body">
                                                    <form method="post" action="" class="">
                                                        <div class="form-floating mb-3 col">
                                                            <input type="text" required class="form-control" id="floatingInput"
                                                                name="savings_goal" placeholder="Your Savings Goal">
                                                            <label class="opacity05" for="floatingInput">Update Your Goal</label>
                                                        </div>
                                                        <button type="submit" name="savingsGoal" value="1"
                                                            class="primary-button mt-3 mb-5">Update Savings
                                                            Goal</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                                {if $financesData[0]['total_savings'] >= $savingsGoal}
                                    <p>Congrats, you hit your goal of £{$savingsGoal} 👏 Set a new goal below.</p>
                                    <hr>
                                    <div class="accordion accordion-flush" id="accordionFlushExample">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="flush-headingOne">
                                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#savings_goal" aria-expanded="false" aria-controls="savings_goal">
                                                    Update saving goal.
                                                </button>
                                            </h2>
                                            <div id="savings_goal" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                                                data-bs-parent="#accordionFlushExample">
                                                <div class="accordion-body">
                                                    <form method="post" action="" class="">
                                                        <div class="form-floating mb-3 col">
                                                            <input type="text" required class="form-control" id="floatingInput"
                                                                name="savings_goal" placeholder="Your Savings Goal">
                                                            <label class="opacity05" for="floatingInput">Update Your Goal</label>
                                                        </div>
                                                        <button type="submit" name="savingsGoal" value="1"
                                                            class="primary-button mt-3 mb-5">Update Savings
                                                            Goal</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                            </div>
                        {/if}
                        {if !$user_data['investment_goal']}
                            <div class="col icon-box pt-3">
                                <i class="fa-solid fa-chart-line text-center pt-3 pb-1"></i>
                                <h3>Your Investment Goal</h3>
                                <form method="post" action="" class="">
                                    <div class="form-floating mb-3 col">
                                        <input type="text" required class="form-control" id="floatingInput" name="investment_goal"
                                            placeholder="Your Investment Goal">
                                        <label class="opacity05" for="floatingInput">Your Investment Goal</label>
                                    </div>
                                    <button type="submit" name="investmentGoal" value="1" class="primary-button mt-3 mb-5">Set
                                        Investment
                                        Goal</button>
                                </form>
                            </div>
                        {else}
                            <div class="col icon-box pt-3">
                                <i class="fa-solid fa-chart-line text-center pt-3 pb-1"></i>
                                <h3 class="mb-3">Your Investment Goal</h3>
                                {assign var="investmentGoal" value=$user_data['investment_goal']}
                                {if $investmentGoal != 0}
                                    {assign var="progress" value=($financesData[0]['savings_investments'] / $investmentGoal) * 100}
                                    {if $progress > 100}
                                        {assign var="progress" value=100}
                                    {/if}
                                {else}
                                    {assign var="progress" value=0}
                                {/if}
                                {assign var="rounded_progress" value=round($progress, 0)}
                                {if $financesData[0]['savings_investments'] < $investmentGoal}
                                    <h3 class="blue">£{$financesData[0]['savings_investments']|my_number_format} /
                                        £{$user_data['investment_goal']|my_number_format}
                                    </h3>
                                    <div class="progress mt-2" style="height: 30px;">
                                        <div class="progress-bar" role="progressbar"
                                            style="width: {$rounded_progress}%;  background-color:#023045"
                                            aria-valuenow="{$rounded_progress}" aria-valuemin="0" aria-valuemax="100">
                                            {$rounded_progress}%</div>
                                    </div>
                                    <hr>
                                    <div class="accordion accordion-flush" id="accordionFlushExample">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="flush-headingOne">
                                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#invest_goal" aria-expanded="false" aria-controls="invest_goal">
                                                    Update investment goal.
                                                </button>
                                            </h2>
                                            <div id="invest_goal" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                                                data-bs-parent="#accordionFlushExample">
                                                <div class="accordion-body">
                                                    <form method="post" action="" class="">
                                                        <div class="form-floating mb-3 col">
                                                            <input type="text" required class="form-control" id="floatingInput"
                                                                name="investment_goal" placeholder="Your Investment Goal">
                                                            <label class="opacity05" for="floatingInput">Update Your Goal</label>
                                                        </div>
                                                        <button type="submit" name="investmentGoal" value="1"
                                                            class="primary-button mt-3 mb-5">Update Investment
                                                            Goal</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                                {if $financesData[0]['savings_investments'] >= $investmentGoal}
                                    <p>Congrats, you hit your goal of £{$investmentGoal} 👏 Set a new goal below.</p>
                                    <hr>
                                    <div class="accordion accordion-flush" id="accordionFlushExample">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="flush-headingOne">
                                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#invest_goal" aria-expanded="false" aria-controls="invest_goal">
                                                    Update investment goal.
                                                </button>
                                            </h2>
                                            <div id="invest_goal" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                                                data-bs-parent="#accordionFlushExample">
                                                <div class="accordion-body">
                                                    <form method="post" action="" class="">
                                                        <div class="form-floating mb-3 col">
                                                            <input type="text" required class="form-control" id="floatingInput"
                                                                name="investment_goal" placeholder="Your Investment Goal">
                                                            <label class="opacity05" for="floatingInput">Update Your Goal</label>
                                                        </div>
                                                        <button type="submit" name="investmentGoal" value="1"
                                                            class="primary-button mt-3 mb-5">Update Investment
                                                            Goal</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                            </div>
                        {/if}
                        {if !$user_data['net_worth_goal']}
                            <div class="col icon-box pt-3">
                                <i class="fa-solid fa-chart-pie text-center pt-3 pb-1"></i>
                                <h3>Your Net Worth Goal</h3>
                                <form method="post" action="" class="">
                                    <div class="form-floating mb-3 col">
                                        <input type="text" required class="form-control" id="floatingInput" name="net_worth_goal"
                                            placeholder="Your Net Worth Goal">
                                        <label class="opacity05" for="floatingInput">Your Net Worth Goal</label>
                                    </div>
                                    <button type="submit" name="networthGoal" value="1" class="primary-button mt-3 mb-5">Set Net Worth
                                        Goal</button>
                                </form>
                            </div>
                        {else}
                            <div class="col icon-box pt-3">
                                <i class="fa-solid fa-chart-pie text-center pt-3 pb-1"></i>
                                <h3 class="mb-3">Your Net Worth Goal</h3>

                                {assign var="networthGoal" value=$user_data['net_worth_goal']}
                                {if $networthGoal != 0}
                                    {assign var="progress" value=($financesData[0]['total_funds']  / $networthGoal) * 100}
                                    {if $progress > 100}
                                        {assign var="progress" value=100}
                                    {/if}
                                {else}
                                    {assign var="progress" value=0}
                                {/if}
                                {assign var="rounded_progress" value=round($progress, 0)}
                                {if $financesData[0]['total_funds'] < $networthGoal}
                                    <h3 class="blue">£{$financesData[0]['total_funds']|my_number_format} /
                                        £{$user_data['net_worth_goal']|my_number_format}
                                    </h3>
                                    <div class="progress mt-2" style="height: 30px;">
                                        <div class="progress-bar" role="progressbar"
                                            style="width: {$rounded_progress}%;  background-color:#023045"
                                            aria-valuenow="{$rounded_progress}" aria-valuemin="0" aria-valuemax="100">
                                            {$rounded_progress}%</div>
                                    </div>
                                    <hr>
                                    <div class="accordion accordion-flush" id="accordionFlushExample">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="flush-headingOne">
                                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#net_worth_goal" aria-expanded="false" aria-controls="net_worth_goal">
                                                    Update net worth goal.
                                                </button>
                                            </h2>
                                            <div id="net_worth_goal" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                                                data-bs-parent="#accordionFlushExample">
                                                <div class="accordion-body">
                                                    <form method="post" action="" class="">
                                                        <div class="form-floating mb-3 col">
                                                            <input type="text" required class="form-control" id="floatingInput"
                                                                name="net_worth_goal" placeholder="Your Net Worth Goal">
                                                            <label class="opacity05" for="floatingInput">Update Your Goal</label>
                                                        </div>
                                                        <button type="submit" name="networthGoal" value="1"
                                                            class="primary-button mt-3 mb-5">Update Net Worth
                                                            Goal</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                                {if $financesData[0]['total_funds'] >= $networthGoal}
                                    <p>Congrats, you hit your goal of £{$networthGoal} 👏 Set a new goal below.</p>
                                    <hr>
                                    <div class="accordion accordion-flush" id="accordionFlushExample">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="flush-headingOne">
                                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#net_worth_goal" aria-expanded="false" aria-controls="net_worth_goal">
                                                    Update net worth goal.
                                                </button>
                                            </h2>
                                            <div id="net_worth_goal" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                                                data-bs-parent="#accordionFlushExample">
                                                <div class="accordion-body">
                                                    <form method="post" action="" class="">
                                                        <div class="form-floating mb-3 col">
                                                            <input type="text" required class="form-control" id="floatingInput"
                                                                name="net_worth_goal" placeholder="Your Net Worth Goal">
                                                            <label class="opacity05" for="floatingInput">Update Your Goal</label>
                                                        </div>
                                                        <button type="submit" name="networthGoal" value="1"
                                                            class="primary-button mt-3 mb-5">Update Net Worth
                                                            Goal</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                            </div>
                        </div>
                    {/if}
                {/if}
            </div>
            </div>
        {else}
            <div class="container mb-5 mt-5 pb-5 pt-5">
            <div class="row justify-content-center align-items-center detail-box pt-5 pb-5">
            <div class=" col-md-8 col-11">
            <h1>{$user_data['user_first_name']}, say hello to your finances!👋</h1>
                        <p>Use the button below to input your financial details to get an overview of your total funds,
                            visualise your finances over time and save money more effectively by setting custom goals.</p>
                        <button type="button" class="primary-button mt-3 mb-5" data-bs-toggle="modal"
                            data-bs-target="#updateFinanceModal">
                            Update Finances
                        </button>
                        <div class="col">
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
                        </div>
                    </div>
                    <div class="col-md-3 col-11">
                    <img src="/Dissertation/images/finance-preview-white.png"
                    width="600" height="400" class="img-fluid rounded-3 shadow-sm">
                    </div>
                </div>
            {/if}
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

    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.0.1/dist/chart.umd.min.js"></script>
    <script>
        const financesData = {$allFinancesData|my_json_encode};

        // Extracting data for chart
        const labels = financesData.map(entry => {
            const date = new Date(entry.input_date);
            return date.toLocaleDateString('en-UK', {
                weekday: 'long',
                year: 'numeric',
                month: 'short',
                day: 'numeric'
            });
        });

        const totalData = financesData.map(entry => entry.savings_current_account + entry.savings_account1 + entry
            .savings_account2 + entry.savings_account3 + entry.savings_investments + entry.savings_other);
        const savingsData = financesData.map(entry => entry.savings_account1 + entry.savings_account2 + entry
            .savings_account3 + entry.savings_other);
        const investmentsData = financesData.map(entry => entry.savings_investments);

        const data = {
            labels: labels,
            datasets: [{
                    label: 'Total',
                    data: totalData,
                    fill: false,
                    borderColor: '#023045',
                    tension: 0.1,
                },
                {
                    label: 'Savings',
                    data: savingsData,
                    fill: false,
                    borderColor: '#cdff1a',
                    tension: 0.1,
                },
                {
                    label: 'Investments',
                    data: investmentsData,
                    fill: false,
                    borderColor: '#74526c',
                    tension: 0.1,
                },
            ],
        };

        const config = {
            type: 'line',
            data: data,
            options: {
                responsive: true,
                interaction: {
                    mode: 'index',
                    intersect: false,
                },
                stacked: false,
                scales: {
                    y: {
                        type: 'linear',
                        display: true,
                        position: 'left',
                    },
                },
                title: {
                    display: true,
                    text: 'Chart JS Line Chart Example',
                },
            },
        };

        new Chart(document.getElementById("line-chart"), config);
    </script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>
    <script>
        const savingsInvestments = {$financesData[0]['savings_investments']};
        const savingsCurrentAccount = {$financesData[0]['savings_current_account']};
        const savingsAccount = {$financesData[0]['savings_account1'] + $financesData[0]['savings_account2']+ $financesData[0]['savings_account3'] + $financesData[0]['savings_other']};

        const data2 = {
            labels: ['Savings', 'Investments', 'Current Account'],
            datasets: [{
                label: 'My First Dataset',
                data: [savingsAccount, savingsInvestments, savingsCurrentAccount],
                backgroundColor: ['#cdff1a', '#74526c', '#023045'],
                hoverOffset: 4,
            }],
        };

        const options = {
            plugins: {
                legend: {
                    position: 'left',
                },
            },
        };

        const chartConfig = {
            type: 'pie',
            data: data2,
            options: options,
        };

        new Chart(document.getElementById("pie-chart"), chartConfig);
    </script>
    </body>
{/block}