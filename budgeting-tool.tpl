{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar Nav -->
            <div class="col-md-3 col-lg-2 d-md-block p-0 bg-body-tertiary">
                <div class="d-flex flex-column flex-shrink-0 p-3">
                    <a href="/"
                        class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                        <span class="fs-4">Logo</span>
                    </a>
                    <hr>
                    <ul class="nav nav-pills flex-column mb-auto">
                        <li class="nav-item">
                            <a href="/Dissertation/" class="nav-link link-body-emphasis" aria-current="page">
                                <i class="fas fa-home me-2"></i>
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/budgeting-tool" class="nav-link active">
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
            <main class="pt-3 mt-2 col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div class="container">
                    <div class="row pb-5">
                        <div class="col text-center pt-5">
                            <h1>Your Budget</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultrices lorem at fringilla
                                vehicula.</p>
                            <!-- Button trigger modal -->
                            <button type="button" class="primary-button mt-3 mb-5" data-bs-toggle="modal"
                                data-bs-target="#updateBudgetModal"> Update Budget </button>
                            <div class="col">
                                {if $success}
                                    <div class="alert alert-success" role="alert">
                                        {$success}
                                    </div>
                                {/if}
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="updateBudgetModal" tabindex="-1"
                                aria-labelledby="updateFinanceModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="updateBudgetModalLabel">Update Budget</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="accordion accordion-flush" id="accordionFlushExample">
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="flush-headingOne">
                                                        <button class="accordion-button collapsed" type="button"
                                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
                                                            aria-expanded="false" aria-controls="flush-collapseOne">
                                                            Income
                                                        </button>
                                                    </h2>
                                                    <div id="flush-collapseOne" class="accordion-collapse collapse"
                                                        aria-labelledby="flush-headingOne"
                                                        data-bs-parent="#accordionFlushExample">
                                                        <div class="accordion-body">
                                                            <form method="post" action="" class="">
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="income"
                                                                        placeholder="Income">
                                                                    <label class="opacity05" for="floatingInput">Income
                                                                        (After Tax)</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="additional_income"
                                                                        placeholder="Additional Income">
                                                                    <label class="opacity05" for="floatingInput">Additional
                                                                        Income</label>
                                                                </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="flush-headingTwo">
                                                        <button class="accordion-button collapsed" type="button"
                                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
                                                            aria-expanded="false" aria-controls="flush-collapseTwo">
                                                            Outgoings
                                                        </button>
                                                    </h2>
                                                    <div id="flush-collapseTwo" class="accordion-collapse collapse"
                                                        aria-labelledby="flush-headingTwo"
                                                        data-bs-parent="#accordionFlushExample">
                                                        <div class="accordion-body">
                                                            <form method="post" action="" class="">
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="utilities"
                                                                        placeholder="Utilities">
                                                                    <label class="opacity05"
                                                                        for="floatingInput">Utilities</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="car_and_transport"
                                                                        placeholder="Car & Transport">
                                                                    <label class="opacity05" for="floatingInput">Car &
                                                                        Transport</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="food_and_drink"
                                                                        placeholder="Food & Drink">
                                                                    <label class="opacity05" for="floatingInput">Food &
                                                                        Drink</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="mortgage_rent"
                                                                        placeholder="Mortgage & Rent">
                                                                    <label class="opacity05" for="floatingInput">Mortgage &
                                                                        Rent</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="insurance"
                                                                        placeholder="Insurance">
                                                                    <label class="opacity05"
                                                                        for="floatingInput">Insurance</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="council_tax"
                                                                        placeholder="Council Tax">
                                                                    <label class="opacity05" for="floatingInput">Council
                                                                        Tax</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="internet"
                                                                        placeholder="Internet">
                                                                    <label class="opacity05"
                                                                        for="floatingInput">Internet</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="mobile_phone"
                                                                        placeholder="Mobile Phone">
                                                                    <label class="opacity05" for="floatingInput">Mobile
                                                                        Phone</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="tv_subscriptions"
                                                                        placeholder="TV Subscriptions">
                                                                    <label class="opacity05" for="floatingInput">TV
                                                                        Subscriptions</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="shopping"
                                                                        placeholder="Shopping">
                                                                    <label class="opacity05"
                                                                        for="floatingInput">Shopping</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="eating_out"
                                                                        placeholder="Eating Out">
                                                                    <label class="opacity05" for="floatingInput">Eating
                                                                        Out</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="health_and_beauty"
                                                                        placeholder="Health & Beauty">
                                                                    <label class="opacity05" for="floatingInput">Health &
                                                                        Beauty</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="clothes"
                                                                        placeholder="Clothes">
                                                                    <label class="opacity05"
                                                                        for="floatingInput">Clothes</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="loan_repayments"
                                                                        placeholder="Loan Repayments">
                                                                    <label class="opacity05" for="floatingInput">Loan
                                                                        Repayments</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="credit_card_repayments"
                                                                        placeholder="Credit Card Repayments">
                                                                    <label class="opacity05" for="floatingInput">Credit Card
                                                                        Repayments</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="regular_savings"
                                                                        placeholder="Regular Savings">
                                                                    <label class="opacity05" for="floatingInput">Regular
                                                                        Savings</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="regular_investments"
                                                                        placeholder="Regular Investments">
                                                                    <label class="opacity05" for="floatingInput">Regular
                                                                        Investments</label>
                                                                </div>
                                                                <div class="form-floating mb-3 col">
                                                                    <input type="text" class="form-control"
                                                                        id="floatingInput" name="other" placeholder="Other">
                                                                    <label class="opacity05"
                                                                        for="floatingInput">Other</label>
                                                                </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="date" class="form-control" id="floatingInput" name="input_date"
                                                    placeholder="Date">
                                                <label class="opacity05" for="floatingInput">Date</label>
                                            </div>
                                            <button type="submit" name="Submit Budget" value="1"
                                                class="primary-button mt-3 mb-5">Submit</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row pt-5 pb-5">
                    <div class="col">
                        <p>Income: {if $budgetData}
                                £{$budgetData[0]['income'] + $budgetData[0]['additional_income']}</p>
                        {else}
                            </p>No data found</p>
                        {/if}
                        <p>Outgoings: {if $budgetData}
                                £{$budgetData[0]['utilities'] + $budgetData[0]['car_and_transport'] + $budgetData[0]['food_and_drink'] + $budgetData[0]['mortgage_rent'] + $budgetData[0]['insurance'] + $budgetData[0]['council_tax'] + $budgetData[0]['internet'] + $budgetData[0]['mobile_phone'] + $budgetData[0]['tv_subscriptions'] + $budgetData[0]['shopping'] + $budgetData[0]['eating_out'] + $budgetData[0]['health_and_beauty'] + $budgetData[0]['clothes'] + $budgetData[0]['loan_repayments'] + $budgetData[0]['credit_card_repayments'] + $budgetData[0]['regular_savings'] + $budgetData[0]['regular_investments'] + $budgetData[0]['other']}
                            {else}
                            </p>No data found</p>
                        {/if}
                        <p>Remaining: {if $budgetData}
                                £{$budgetData[0]['income'] + $budgetData[0]['additional_income'] - ($budgetData[0]['utilities'] + $budgetData[0]['car_and_transport'] + $budgetData[0]['food_and_drink'] + $budgetData[0]['mortgage_rent'] + $budgetData[0]['insurance'] + $budgetData[0]['council_tax'] + $budgetData[0]['internet'] + $budgetData[0]['mobile_phone'] + $budgetData[0]['tv_subscriptions'] + $budgetData[0]['shopping'] + $budgetData[0]['eating_out'] + $budgetData[0]['health_and_beauty'] + $budgetData[0]['clothes'] + $budgetData[0]['loan_repayments'] + $budgetData[0]['credit_card_repayments'] + $budgetData[0]['regular_savings'] + $budgetData[0]['regular_investments'] + $budgetData[0]['other'])}
                            {else}
                            </p>No data found</p>
                        {/if}
                    </div>

                    <div class="col">
                        <div>
                            {if $budgetData}
                                <canvas id="myChart"></canvas>
                            {else}
                                </p>No data found</p>
                            {/if}
                        </div>
                    </div>
                </div>
                <div class="row pt-5 pb-5">
                    <div class="col">
                        <h2>Budget Breakdown</h2>
                        <div>
                            {if $budgetData}

                                <canvas id="budget-pie"></canvas>
                            {else}
                                </p>No data found</p>
                            {/if}
                        </div>
                    </div>
                    <div class="col">
                        <h2>Top Categories</h2>
                        <p>this needs to be updated to actually show the top values</p>
                        {if $budgetData}
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">Category</th>
                                        <th scope="col">Value</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">Utilities</th>
                                        <td>£{$budgetData[0]['utilities']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Car & Transport</th>
                                        <td>£{$budgetData[0]['car_and_transport']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Food & Drink</th>
                                        <td>£{$budgetData[0]['food_and_drink']}</td>
                                    </tr>
                                </tbody>
                        </table> 
                        {else}
                            </p>No data found</p>
                        {/if}
                    </div>
                </div>
                <div class="row pt-5 pb-5">
                    <h2>Detailed Breakdown</h2>
                    <div class="col">
                        {if $budgetData}
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">Category</th>
                                        <th scope="col">Value</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">Income</th>
                                        <td>£{$budgetData[0]['income']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Additional Income</th>
                                        <td>£{$budgetData[0]['additional_income']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Utilities</th>
                                        <td>£{$budgetData[0]['utilities']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Car & Transport</th>
                                        <td>£{$budgetData[0]['car_and_transport']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Food & Drink</th>
                                        <td>£{$budgetData[0]['food_and_drink']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Mortgage & Rent</th>
                                        <td>£{$budgetData[0]['mortgage_rent']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Insurance</th>
                                        <td>£{$budgetData[0]['insurance']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Council Tax</th>
                                        <td>£{$budgetData[0]['council_tax']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Internet</th>
                                        <td>£{$budgetData[0]['internet']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Mobile Phone</th>
                                        <td>£{$budgetData[0]['mobile_phone']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">TV Subscriptions</th>
                                        <td>£{$budgetData[0]['tv_subscriptions']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Shopping</th>
                                        <td>£{$budgetData[0]['shopping']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Eating Out</th>
                                        <td>£{$budgetData[0]['eating_out']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Health & Beauty</th>
                                        <td>£{$budgetData[0]['health_and_beauty']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Clothes</th>
                                        <td>£{$budgetData[0]['clothes']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Loan Repayments</th>
                                        <td>£{$budgetData[0]['loan_repayments']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Credit Card Repayments</th>
                                        <td>£{$budgetData[0]['credit_card_repayments']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Regular Savings</th>
                                        <td>£{$budgetData[0]['regular_savings']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Regular Investments</th>
                                        <td>£{$budgetData[0]['regular_investments']}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Other</th>
                                        <td>£{$budgetData[0]['other']}</td>
                                    </tr>
                                </tbody>
                            </table>
                        {else}
                            </p>No data found</p>
                        {/if}
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
                'Clothes', 'Loan Repayments', 'Credit Card Repayments', 'Regular Savings', 'Regular Investments',
                'Other'
            ],
            datasets: [{
                label: 'Outgoings',
                data: [utilities, carAndTransport, foodAndDrink, mortgageRent, insurance, councilTax, internet,
                    mobilePhone, tvSubscriptions, shopping, eatingOut, healthAndBeauty, clothes,
                    loanRepayments, creditCardRepayments, regularSavings, regularInvestments, other
                ],
                backgroundColor: ['#023045', '#cdff1a', '#74526c', '#3366cc', '#ffcc00', '#ff6666', '#4d4dff',
                    '#33cc33', '#9933ff', '#ff9933', '#ff5050', '#66ff99', '#6666ff', '#ff6666', '#ff3300',
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