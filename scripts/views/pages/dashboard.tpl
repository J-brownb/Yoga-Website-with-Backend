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
                            <a href="/Dissertation/dashboard" class="nav-link active mb-2">
                                <i class="fas fa-home"></i>
                                <p class="tiny white">Dashboard</p>
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
            {* <button id="dark-mode">Dark</button> *}
        </div>
    </div>
    <!-- Main sidebar -->
    <div class="container-fluid d-none d-sm-block">
        <div class="row">
            <div class="sidebar shadow col-md-3 col-lg-2 d-md-block p-0">
                <div class="d-flex flex-column flex-shrink-0 p-3">
                    <a class="navbar-brand pt-3" href="/Dissertation"> <img src="./images/white-bg-logo.png" width="200"
                            height="75" class="img-fluid desktop-logo"></a>
                    <ul class="nav nav-pills flex-column mb-auto mt-3">
                        <li class="nav-item">
                            <a href="/Dissertation/dashboard" class="nav-link active">
                                <i class="fas fa-home"></i>
                                Dashboard
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/budgeting-tool" class="nav-link link-body-emphasis" aria-current="page">
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
        <div class="container-fluid banner pt-5 pb-5">
            <div class="row pb-5 pt-5">
                <div class="col text-center">
                    <h1 class="white">Welcome, {$user_data['user_first_name']}👋</h1>
                    <h2 class="mb-5 white">Here's how your finances are looking..</h2>
            </div>
        </div>
    </div>
    <div class="container pt-5 pb-5 homepage-boxes">
        <div class="row pt-3 justify-content-center text-center">
            {if $financesData}
            <div class="detail-box col-md-3 col-11">
                <h3 class=text-muted>Total funds</h3>
                <p class="box-value">
                    £{$financesData[0]['total_funds']|my_number_format}</p>
                <hr>
                <p><i class="fa-solid fa-piggy-bank"></i>
                    £{$financesData[0]['total_savings']|my_number_format}
                    |
                    <i class="fa-solid fa-credit-card"></i>
                    £{$financesData[0]['savings_current_account']|my_number_format} |
                    <i class="fa-solid fa-chart-line"></i>
                    £{$financesData[0]['savings_investments']|my_number_format}
                </p>
            </div>
            {else}
            <div class="detail-box col-md-3 col-11">
                <h3 class=text-muted>Total funds</h3>
                <p>Get started by <a href="/Dissertation/finances">submitting your finances!</a></p>
            </div>
            {/if}
            {if $budgetData}
            <div class="detail-box col-md-3 col-11 ">
                <h3 class=text-muted>Income & outgoings</h3>
                <p class="box-value">
                    £{($budgetData[0]['income'] + $budgetData[0]['additional_income'] - ($budgetData[0]['utilities'] + $budgetData[0]['car_and_transport'] + $budgetData[0]['food_and_drink'] + $budgetData[0]['mortgage_rent'] + $budgetData[0]['insurance'] + $budgetData[0]['council_tax'] + $budgetData[0]['internet'] + $budgetData[0]['mobile_phone'] + $budgetData[0]['tv_subscriptions'] + $budgetData[0]['shopping'] + $budgetData[0]['eating_out'] + $budgetData[0]['health_and_beauty'] + $budgetData[0]['clothes'] + $budgetData[0]['loan_repayments'] + $budgetData[0]['credit_card_repayments'] + $budgetData[0]['regular_savings'] + $budgetData[0]['regular_investments'] + $budgetData[0]['other']))|my_number_format}
                </p>
                <hr>
                <p><i class="fa-solid fa-circle-up green"></i>
                    £{$budgetData[0]['income'] + $budgetData[0]['additional_income']|my_number_format} |
                    <i class="fa-solid fa-circle-down red"></i>
                    £{$budgetData[0]['utilities'] + $budgetData[0]['car_and_transport'] + $budgetData[0]['food_and_drink'] + $budgetData[0]['mortgage_rent'] + $budgetData[0]['insurance'] + $budgetData[0]['council_tax'] + $budgetData[0]['internet'] + $budgetData[0]['mobile_phone'] + $budgetData[0]['tv_subscriptions'] + $budgetData[0]['shopping'] + $budgetData[0]['eating_out'] + $budgetData[0]['health_and_beauty'] + $budgetData[0]['clothes'] + $budgetData[0]['loan_repayments'] + $budgetData[0]['credit_card_repayments'] + $budgetData[0]['regular_savings'] + $budgetData[0]['regular_investments'] + $budgetData[0]['other']|my_number_format}
                    {* Remaining:
                                    £{$budgetData[0]['income'] + $budgetData[0]['additional_income'] - ($budgetData[0]['utilities'] + $budgetData[0]['car_and_transport'] + $budgetData[0]['food_and_drink'] + $budgetData[0]['mortgage_rent'] + $budgetData[0]['insurance'] + $budgetData[0]['council_tax'] + $budgetData[0]['internet'] + $budgetData[0]['mobile_phone'] + $budgetData[0]['tv_subscriptions'] + $budgetData[0]['shopping'] + $budgetData[0]['eating_out'] + $budgetData[0]['health_and_beauty'] + $budgetData[0]['clothes'] + $budgetData[0]['loan_repayments'] + $budgetData[0]['credit_card_repayments'] + $budgetData[0]['regular_savings'] + $budgetData[0]['regular_investments'] + $budgetData[0]['other'])}
                                *}
            </div>
            {else}
            <div class="detail-box col-md-3 col-11">
                <h3 class=text-muted>Income & outgoings</h3>
                <p>Get started by <a href="/Dissertation/budgeting-tool">updating your budget.</a></p>
            </div>
            {/if}
            {if {$user_data['user_pay']}}
            <div class="detail-box col-md-3 col-11">
                <h3 class=text-muted>Next payday</h3>
                <p class="box-value">£{$user_data['user_pay']|my_number_format}</p>
                <hr>
                <p><i class="fa-regular fa-clock"></i> {$user_data['user_pay_frequency']} |
                    <i class="fa-solid fa-calendar-day"></i> {$user_data['user_next_payday']}
                </p>
            </div>
            {else}
            <div class="detail-box col-md-3 col-11">
                <h3 class=text-muted>Next payday</h3>
                <p>Visit the <a href="/Dissertation/settings">settings page</a> to update your pay details.</p>
            </div>
            {/if}
        </div>
    </div>
    {if $financesData AND $budgetData}
    <div class="section pt-5 pb-5 container">
        <div class="row text-center">
            <h2>Visualise your finances</h2>
            <div class="col-sm-11 col-md detail-box">
                <h3 class=text-muted>Finances over time</h3>
                <canvas id="line-chart2" class="mt-5 pt-3"></canvas>
            </div>
            <div class="col-sm-11 col-md detail-box">
                <h3 class=text-muted>Budget breakdown</h3>
                <canvas id="budget-pie2" class="mx-5"></canvas>
            </div>
        </div>
    </div>
{/if}
    <div class="container section pt-1 pb-5 text-center">
        <div class="row">
            <h2>Take the next step in your financial journey</h2>
            <div class="detail-box col-md col-11">
                <h3> <i class="fa-solid fa-book"></i> Take a lesson</h3>
                <p>Ready to improve your financial literacy? Complete our lessons on investing, saving and
                    budgeting
                    to earn points.
                </p>
                <a href="/Dissertation/financial-academy"><button class="primary-button">Start
                        Learning</button></a>
            </div>
            <div class="detail-box col-md col-11">
                <h3><i class="fa-solid fa-chart-pie"></i> Update finances</h3>
                <p>Updates your finances to get an overview of your financial net worth and see a complete view
                    of
                    all your assets.
                </p>
                <a href="/Dissertation/finances"><button class="primary-button">Update Finances</button></a>
            </div>
            <div class="detail-box col-md col-11">
                <h3><i class="fa-solid fa-wallet"></i> Update budget</h3>
                <p>Update your budget to see where you are spending the most money and identify where you can
                    save.
                </p>
                <a href="/Dissertation/budgeting-tool"><button class="primary-button">Update Budget</button></a>
            </div>
            <div class="detail-box col-md col-11">
                <h3><i class="fa-solid fa-chart-line"></i> Search stocks</h3>
                <p>Use our stock market API to get fundamental information of stocks for 30+ Countries and
                    25,000+
                    stocks.
                </p>
                <a href="/Dissertation/stock-viewer"><button class="primary-button">Search Stocks</button></a>
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

    new Chart(document.getElementById("line-chart2"), config);

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

    const lineData = {
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
                position: 'right',
                responsive: false,
            },
        },
    };

    const chartConfig = {
        type: 'pie',
        data: lineData,
        options: options,
    };

    new Chart(document.getElementById("budget-pie2"), chartConfig);
</script>
{* <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>
            <script>
const savingsInvestments = {$financesData[0]['savings_investments']};
const savingsCurrentAccount = {$financesData[0]['savings_current_account']};
const savingsAccount = {$financesData[0]['savings_account1'] + $financesData[0]['savings_account2']+ $financesData[0]['savings_account3'] + $financesData[0]['savings_other']};

                const data = {
                    labels: ['Savings', 'Investments', 'Current Account'],
                    datasets: [{
                        label: 'My First Dataset',
                        data: [savingsAccount, savingsInvestments, savingsCurrentAccount],
                        backgroundColor: ['#023045', '#cdff1a', '#74526c'],
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
                    data: data,
                    options: options,
                };

                new Chart(document.getElementById("pie-chart"), chartConfig);
            </script> *}
{/block}