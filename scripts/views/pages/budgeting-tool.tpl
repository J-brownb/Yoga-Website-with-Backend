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
                            <a href="/Dissertation/dashboard" class="nav-link link-body-emphasis">
                                <i class="fas fa-home"></i>
                                <p class="tiny">Dashboard</p>
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/budgeting-tool" class="nav-link active mb-2" aria-current="page">
                                <i class="fa-solid fa-wallet"></i>
                                <p class="tiny white">Budgeting</p>
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
                    <a class="navbar-brand pt-3" href="/Dissertation/dashboard"> <img src="./images/white-bg-logo.png"
                            width="200" height="75" class="img-fluid desktop-logo"></a>
                    <ul class="nav nav-pills flex-column mb-auto mt-3">
                        <li class="nav-item">
                            <a href="/Dissertation/dashboard" class="nav-link link-body-emphasis">
                                <i class="fas fa-home"></i>
                                Dashboard
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/budgeting-tool" class="nav-link active" aria-current="page">
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
        <div class="modal fade" id="updateBudgetModal" tabindex="-1" aria-labelledby="updateFinanceModalLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="updateBudgetModalLabel">Update Budget</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="accordion accordion-flush" id="accordionFlushExample">
                            <div class="accordion-item">
                                <p>Fill out your monthly income and outgoings to view your budget. You
                                    can leave any fields that do not apply blank.</p>
                                <h2 class="accordion-header" id="flush-headingOne">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#flush-collapseOne" aria-expanded="false"
                                        aria-controls="flush-collapseOne">
                                        Monthly Income
                                    </button>
                                </h2>
                                <div id="flush-collapseOne" class="accordion-collapse collapse"
                                    aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        <form method="post" action="" class="">
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput" name="income"
                                                    placeholder="Income">
                                                <label class="opacity05" for="floatingInput">Income
                                                    (After Tax)</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="additional_income" placeholder="Additional Income">
                                                <label class="opacity05" for="floatingInput">Additional
                                                    Income</label>
                                            </div>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#flush-collapseTwo" aria-expanded="false"
                                        aria-controls="flush-collapseTwo">
                                        Monthly Outgoings
                                    </button>
                                </h2>
                                <div id="flush-collapseTwo" class="accordion-collapse collapse"
                                    aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        <form method="post" action="" class="">
                                            <h3>Home</h3>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput" name="utilities"
                                                    placeholder="Utilities">
                                                <label class="opacity05" for="floatingInput">Utilities</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="mortgage_rent" placeholder="Mortgage & Rent">
                                                <label class="opacity05" for="floatingInput">Mortgage &
                                                    Rent</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="council_tax" placeholder="Council Tax">
                                                <label class="opacity05" for="floatingInput">Council
                                                    Tax</label>
                                            </div>
                                            <h3>Transport</h3>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="car_and_transport" placeholder="Car & Transport">
                                                <label class="opacity05" for="floatingInput">Car &
                                                    Transport</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput" name="insurance"
                                                    placeholder="Insurance">
                                                <label class="opacity05" for="floatingInput">Insurance</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput" name="internet"
                                                    placeholder="Internet">
                                                <label class="opacity05" for="floatingInput">Internet</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="mobile_phone" placeholder="Mobile Phone">
                                                <label class="opacity05" for="floatingInput">Mobile
                                                    Phone / Landline</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="tv_subscriptions" placeholder="TV Subscriptions">
                                                <label class="opacity05" for="floatingInput">TV Licence
                                                    and TV Subscriptions</label>
                                            </div>
                                            <h3>Essentials</h3>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput" name="shopping"
                                                    placeholder="Shopping">
                                                <label class="opacity05" for="floatingInput">Shopping</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="food_and_drink" placeholder="Food & Drink">
                                                <label class="opacity05" for="floatingInput">Food &
                                                    Drink</label>
                                            </div>
                                            <h3>Lifestyle</h3>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput" name="eating_out"
                                                    placeholder="Eating Out">
                                                <label class="opacity05" for="floatingInput">Eating
                                                    Out</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="health_and_beauty" placeholder="Health & Beauty">
                                                <label class="opacity05" for="floatingInput">Health &
                                                    Beauty</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput" name="clothes"
                                                    placeholder="Clothes">
                                                <label class="opacity05" for="floatingInput">Clothes</label>
                                            </div>
                                            <h3>Financial</h3>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="loan_repayments" placeholder="Loan Repayments">
                                                <label class="opacity05" for="floatingInput">Loan
                                                    Repayments</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="credit_card_repayments" placeholder="Credit Card Repayments">
                                                <label class="opacity05" for="floatingInput">Credit Card
                                                    Repayments</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="regular_savings" placeholder="Regular Savings">
                                                <label class="opacity05" for="floatingInput">Regular
                                                    Savings</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="regular_investments" placeholder="Regular Investments">
                                                <label class="opacity05" for="floatingInput">Regular
                                                    Investments</label>
                                            </div>
                                            <h3>Other</h3>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput" name="other"
                                                    placeholder="Other">
                                                <label class="opacity05" for="floatingInput">Other</label>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button type="submit" name="Submit Budget" value="1"
                            class="primary-button mt-3 mb-5">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        {if $budgetData}
            <div class="container">
                <div class="row">
                    <div class="col text-center pt-5">
                        <h1>Your Budget</h1>
                        <p>Update your budget to see where you are spending the most money and identify where you can
                            save.</p>
                        <!-- Button trigger modal -->
                        <button type="button" class="primary-button mt-3 mb-5" data-bs-toggle="modal"
                            data-bs-target="#updateBudgetModal"> Update Budget </button>
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

                        {* <div class="col position-fixed bottom-0 end-0 p-3">
                    {if $success}
                        <div class="toast align-items-center" role="alert" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">
                            <div class="toast-header">
                                <strong class="me-auto text-success">Success</strong>
                                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                            </div>
                            <div class="toast-body">
                                {$success}
                            </div>
                        </div>
                        <script>
                            document.addEventListener('DOMContentLoaded', function () {
                                var toastEl = document.querySelector('.toast');
                                var toast = new bootstrap.Toast(toastEl);
                                toast.show();
                            });
                        </script>
                    {/if}
                    {if $error}
                        <div class="toast align-items-center" role="alert" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">
                            <div class="toast-header">
                                <strong class="me-auto text-danger">Error</strong>
                                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                            </div>
                            <div class="toast-body">
                                {$error}
                            </div>
                        </div>
                        <script>
                            document.addEventListener('DOMContentLoaded', function () {
                                var toastEl = document.querySelector('.toast');
                                var toast = new bootstrap.Toast(toastEl);
                                toast.show();
                            });
                        </script>
                    {/if}
                </div> *}
                    </div>
                </div>

            </div>
            </div>

            <div class="container pb-5">
                <div class="row pt-5 pb-5 detail-box">
                    <div class="col">
                        <h3 class=text-muted>Income <i class="fa-solid fa-circle-up green"></i>
                        </h3>
                        {assign var="totalIncome" value="{($budgetData[0]['income'] + $budgetData[0]['additional_income'])}"}
                        <p class="box-value">
                            £{$totalIncome|my_number_format}</p>
                        <h3 class=text-muted>Outgoings <i class="fa-solid fa-circle-down red"></i>
                        </h3>
                        {assign var="totalOutgoings" value=$budgetData[0]['utilities'] + $budgetData[0]['car_and_transport'] + $budgetData[0]['food_and_drink'] + $budgetData[0]['mortgage_rent'] + $budgetData[0]['insurance'] + $budgetData[0]['council_tax'] + $budgetData[0]['internet'] + $budgetData[0]['mobile_phone'] + $budgetData[0]['tv_subscriptions'] + $budgetData[0]['shopping'] + $budgetData[0]['eating_out'] + $budgetData[0]['health_and_beauty'] + $budgetData[0]['clothes'] + $budgetData[0]['loan_repayments'] + $budgetData[0]['credit_card_repayments'] + $budgetData[0]['regular_savings'] + $budgetData[0]['regular_investments'] + $budgetData[0]['other']}
                        <p class="box-value">£{$totalOutgoings|my_number_format}</p>
                        <h3 class=text-muted>Remaining</h3>
                        {assign var="remainingFunds" value=($budgetData[0]['income'] + $budgetData[0]['additional_income']) - 
                                                                                                                                                                                                                ($budgetData[0]['utilities'] + $budgetData[0]['car_and_transport'] + 
                                                                                                                                                                                                                 $budgetData[0]['food_and_drink'] + $budgetData[0]['mortgage_rent'] + 
                                                                                                                                                                                                                 $budgetData[0]['insurance'] + $budgetData[0]['council_tax'] + 
                                                                                                                                                                                                                 $budgetData[0]['internet'] + $budgetData[0]['mobile_phone'] + 
                                                                                                                                                                                                                 $budgetData[0]['tv_subscriptions'] + $budgetData[0]['shopping'] + 
                                                                                                                                                                                                                 $budgetData[0]['eating_out'] + $budgetData[0]['health_and_beauty'] + 
                                                                                                                                                                                                                 $budgetData[0]['clothes'] + $budgetData[0]['loan_repayments'] + 
                                                                                                                                                                                                                 $budgetData[0]['credit_card_repayments'] + $budgetData[0]['regular_savings'] + 
                                                                                                                                                                                                                 $budgetData[0]['regular_investments'] + $budgetData[0]['other'])}
                        <p class="box-value">
                            £{$remainingFunds|my_number_format}
                        </p>
                    </div>
                    <div class="col-sm-9">
                        <div>
                            <canvas id="myChart"></canvas>
                        </div>
                    </div>
                </div>
                <div class="container section pb-5">
                    <div class="row pt-5 pb-5">
                        <h2 class="text-center">Your Insights</h2>
                    </div>
                    <div class="row row-cols-1 row-cols-md-3 g-4">
                        {if {$budgetData[0]['income'] + $budgetData[0]['additional_income'] - ($totalOutgoings)}
                            < 0} <div class="col">
                                <div class="card h-100">
                                    <div class="card-body">
                                        <h5 class="card-title purple">You might be overspending <i
                                                class="fa-solid fa-circle-exclamation"></i>
                                        </h5>
                                        <p class="card-text"> Heads up! You are currently spending more than you are earning.
                                            Consider
                                            reviewing your
                                            spending to see where you can cut back.</p>
                                    </div>
                                </div>
                        </div>
                    {else}
                        <div class="col">
                            <div class="card h-100">
                                <div class="card-body">
                                    <h5 class="card-title purple">Your finances are looking healthy <i
                                            class="fa-regular fa-thumbs-up"></i>
                                    </h5>
                                    <p class="card-text">Great! Your earning more than your spending. Consider putting some of this
                                        extra
                                        money aside in your savings.</p>
                                </div>
                            </div>
                        </div>
                    {/if}
                    {if $totalOutgoings}
                        <div class="col">
                            <div class="card h-100">
                                <div class="card-body">
                                    <h5 class="card-title purple">Emergency Fund <i class="fa-solid fa-vault"></i></h5>
                                    <p class="card-text"> To cover 12 months of expenses, you should aim to build up an emergency
                                        fund of
                                        £{($totalOutgoings * 12)|my_number_format}.</p>
                                </div>
                            </div>
                        </div>
                    {/if}
                    {if $totalIncome}
                        <div class="col">
                            <div class="card h-100">
                                <div class="card-body">
                                    <h5 class="card-title purple">Savings <i class="fa-solid fa-piggy-bank"></i></h5>
                                    <p class="card-text">By putting away 5% of your
                                        £{$totalIncome|my_number_format} income
                                        each month, you would save £{($totalIncome * 0.05) * 12|my_number_format} every year!
                                    </p>
                                </div>
                            </div>
                        </div>
                    {/if}
                    {if $topSpend1[0]['category']}
                        <div class="col">
                            <div class="card h-100">
                                <div class="card-body">
                                    <h5 class="card-title purple">Top Spender <i class="fa-solid fa-coins"></i></h5>
                                    <p class="card-text">You spend the most on {$topSpend1[0]['category']} with
                                        £{$topSpend1[0]['max_5_values']|my_number_format} spent, that's
                            £{($topSpend1[0]['max_5_values'] * 12)|my_number_format} per year. Making savings in this
                            category will have the biggest overall impact on your budget.</p>
                    </div>
                </div>
            </div>
            {/if}
            {if $budgetData[0]['loan_repayments']}
            <div class="col">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title purple">Loan Repayments <i class="fa-solid fa-file-invoice"></i></h5>
                        <p class="card-text">You're making loan repayments of £{$budgetData[0]['loan_repayments']} per
                                        month. Loan
                                        repayments often include a high interest rate, so paying these off as soon as financially
                                        possible
                                        is reccomended.</p>
                                </div>
                            </div>
                        </div>
                    {/if}
                    {if $budgetData[0]['credit_card_repayments']}
                        <div class="col">
                            <div class="card h-100">
                                <div class="card-body">
                                    <h5 class="card-title purple">Credit Card Repayments <i class="fa-solid fa-credit-card"></i>
                                    </h5>
                                    <p class="card-text">You're making credit card repayments of
                            £{$budgetData[0]['credit_card_repayments']} per month. Ensure you pay off your credit card
                            in full every month if possible to avoid high interest charges.</p>
                    </div>
                </div>
            </div>
            {/if}
        </div>
    </div>
    {if $topSpend}
    <div class="container section pt-5 pb-5">
        <div class="section row gx-5 m-2">
            <div class="col-12 col-md-5">
                <h2>Budget Breakdown</h2>
                <div>
                    <canvas id="budget-pie"></canvas>
                </div>
            </div>
            <div class="col-12 col-md-7">
            <h2>Top Categories</h2>
                <p>Here's where you spend the most money.</p>
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col" class="theader">Category</th>
                                        <th scope="col" class="theader">Value</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {foreach $topSpend as $row}
                                        <tr>
                                            <th scope="row">{$row['category']}</th>
                                            <td>£{$row['max_5_values']|my_number_format}</td>
                                        </tr>
                                    {/foreach}
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="container section">
                    <div class="row pt-5 pb-5">
                        <h2>Detailed Breakdown</h2>
                        <div class="col">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col" class="theader">Category</th>
                                        <th scope="col" class="theader">Value</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {foreach $allCats as $row}
                                        <tr>
                                            <th scope="row">{$row['category']}</th>
                                            <td>£{$row['max_value']|my_number_format}</td>
                                        </tr>
                                    {/foreach}
                                </tbody>
                            </table>
                            <p>You last updated your budget on {$budgetData[0]['input_date']}</p>
                        </div>
                    </div>
                </div>
            {/if}

        {else}
            <div class="container mb-5 mt-5 pb-5 pt-5">
                <div class="row justify-content-center align-items-center detail-box pt-5 pb-5">
                    <div class=" col-md-8 col-11">
                        <h1>{$user_data['user_first_name']}, say hello to your budget!👋</h1>
                        <p>Use the button below to input your budget details to get insights about where you are spending the
                            most and how much remaining income you have and view customised insighs about your budget.</p>
                        <button type="button" class="primary-button mt-3 mb-5" data-bs-toggle="modal"
                            data-bs-target="#updateBudgetModal"> Update Budget </button>
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
                        <img src="/Dissertation/images/budget-preview-white.png" width="600" height="400"
                            class="img-fluid rounded-3 shadow-sm">

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
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        const ctx = document.getElementById('myChart');
        const income = {$budgetData[0]['income'] + $budgetData[0]['additional_income']}
        const outgoings = {$budgetData[0]['utilities'] + $budgetData[0]['car_and_transport'] + $budgetData[0]['food_and_drink'] + $budgetData[0]['mortgage_rent'] + $budgetData[0]['insurance'] + $budgetData[0]['council_tax'] + $budgetData[0]['internet'] + $budgetData[0]['mobile_phone'] + $budgetData[0]['tv_subscriptions'] + $budgetData[0]['shopping'] + $budgetData[0]['eating_out'] + $budgetData[0]['health_and_beauty'] + $budgetData[0]['clothes'] + $budgetData[0]['loan_repayments'] + $budgetData[0]['credit_card_repayments'] + $budgetData[0]['regular_savings'] + $budgetData[0]['regular_investments'] + $budgetData[0]['other']}
        const remaining = income - outgoings
        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Income', 'Outgoing', 'Remaining'],
                datasets: [{
                    data: [income, outgoings, remaining],
                    backgroundColor: ['#023045'],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    legend: {
                        display: false
                    }
                }
            }
        });
    </script>
    <script>
        const utilities = {$budgetData[0]['utilities']};
        const carAndTransport = {$budgetData[0]['car_and_transport']};
        const foodAndDrink = {$budgetData[0]['food_and_drink']};
        const mortgageRent = {$budgetData[0]['mortgage_rent']};
        const insurance = {$budgetData[0]['insurance']};
        const councilTax = {$budgetData[0]['council_tax']};
        const internet = {$budgetData[0]['internet']};
        const mobilePhone = {$budgetData[0]['mobile_phone']};
        const tvSubscriptions = {$budgetData[0]['tv_subscriptions']};
        const shopping = {$budgetData[0]['shopping']};
        const eatingOut = {$budgetData[0]['eating_out']};
        const healthAndBeauty = {$budgetData[0]['health_and_beauty']};
        const clothes = {$budgetData[0]['clothes']};
        const loanRepayments = {$budgetData[0]['loan_repayments']};
        const creditCardRepayments = {$budgetData[0]['credit_card_repayments']};
        const regularSavings = {$budgetData[0]['regular_savings']};
        const regularInvestments = {$budgetData[0]['regular_investments']};
        const other = {$budgetData[0]['other']};

        const data = {
            labels: ['Utilities', 'Car & Transport', 'Food & Drink', 'Mortgage & Rent', 'Insurance', 'Council Tax',
                'Internet', 'Mobile Phone', 'TV Subscriptions', 'Shopping', 'Eating Out', 'Health & Beauty',
                'Clothes', 'Loan Repayments', 'Credit Card Repayments', 'Regular Savings',
                'Regular Investments',
                'Other'
            ],
            datasets: [{
                data: [utilities, carAndTransport, foodAndDrink, mortgageRent, insurance, councilTax,
                    internet,
                    mobilePhone, tvSubscriptions, shopping, eatingOut, healthAndBeauty, clothes,
                    loanRepayments, creditCardRepayments, regularSavings, regularInvestments, other
                ],
                backgroundColor: ['#023045', '#cdff1a', '#74526c', '#3366cc', '#ffcc00', '#ff6666',
                    '#4d4dff',
                    '#33cc33', '#9933ff', '#ff9933', '#ff5050', '#66ff99', '#6666ff', '#ff6666',
                    '#ff3300',
                    '#ccff66', '#ff9966', '#6699ff'
                ],
                hoverOffset: 4,
            }],
        };

        const options = {
            plugins: {
                legend: {
                    position: 'bottom',
                },
            },
        };

        const chartConfig = {
            type: 'pie',
            data: data,
            options: options,
        };

        new Chart(document.getElementById("budget-pie"), chartConfig);
    </script>

{/block}