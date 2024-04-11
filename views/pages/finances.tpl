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
                            <a href="/Dissertation/finances" class="nav-link active">
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
                            <h1>Your Finances</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultrices lorem at fringilla
                                vehicula.</p>
                            <!-- Button trigger modal -->
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
                            </div>
                        </div>
                    </div>
                    <!-- Modal -->
                    <div class="modal fade" id="updateFinanceModal" tabindex="-1" aria-labelledby="updateFinanceModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="updateFinanceModalLabel">Update Finances</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form method="post" action="" class="">
                                        <div class="form-floating mb-3 col">
                                            <input type="text" class="form-control" id="floatingInput"
                                                name="savings_current_account" placeholder="Current Account Balance">
                                            <label class="opacity05" for="floatingInput">Current Account Balance</label>
                                        </div>
                                        <div class="row g-2">
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="savings_account1" placeholder="Savings Account #1 Balance">
                                                <label class="opacity05" for="floatingInput">Savings Account #1
                                                    Balance</label>
                                            </div>
                                            <div class="form-floating mb-3 col-4">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="savings_account1_interest"
                                                    placeholder="Savings Account #1 Interest">
                                                <label class="opacity05" for="floatingInput">Interest %</label>
                                            </div>
                                        </div>
                                        <div class="row g-2">
                                            <div class="form-floating mb-3 col-8">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="savings_account2" placeholder="Savings Account #2 Balance">
                                                <label class="opacity05" for="floatingInput">Savings Account #2
                                                    Balance</label>
                                            </div>
                                            <div class="form-floating mb-3 col-4">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="savings_account2_interest"
                                                    placeholder="Savings Account #2 Interest">
                                                <label class="opacity05" for="floatingInput">Interest %</label>
                                            </div>
                                        </div>
                                        <div class="row g-2">
                                            <div class="form-floating mb-3 col-8">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="savings_account3" placeholder="Savings Account #3 Balance">
                                                <label class="opacity05" for="floatingInput">Savings Account #3
                                                    Balance</label>
                                            </div>
                                            <div class="form-floating mb-3 col-4">
                                                <input type="text" class="form-control" id="floatingInput"
                                                    name="savings_account3_interest"
                                                    placeholder="Savings Account #3 Interest">
                                                <label class="opacity05" for="floatingInput">Interest %</label>
                                            </div>
                                        </div>
                                        <div class="form-floating mb-3 col">
                                            <input type="text" class="form-control" id="floatingInput"
                                                name="savings_investments" placeholder="Investment Account Balance">
                                            <label class="opacity05" for="floatingInput">Investment Account Balance</label>
                                        </div>
                                        <div class="form-floating mb-3 col">
                                            <input type="text" class="form-control" id="floatingInput" name="savings_other"
                                                placeholder="Other Savings">
                                            <label class="opacity05" for="floatingInput">Other Savings</label>
                                        </div>
                                        <button type="submit" name="Submit Finances" value="1"
                                            class="primary-button mt-3 mb-5">Submit</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    {if $financesData}
                        <div class="section row pt-5 pb-5 text-center">
                            <div class="col-8 mx-auto">
                                <div class="d-flex align-items-center justify-content-center">
                                    <canvas id="line-chart"></canvas>
                                </div>

                            </div>
                        </div>
                        <div class="section row">
                            <div class="col">
                                <h2>At a glance</h2>
                            </div>
                        </div>
                        <div class="section row pt-5 pb-5">
                            <div class="col detail-box">
                                <h3>Total funds</h3>
                                <p>£{$financesData[0]['savings_current_account'] + $financesData[0]['savings_account1'] 
                                                    + $financesData[0]['savings_account2']+ $financesData[0]['savings_account3'] +
                                                    $financesData[0]['savings_investments']+ $financesData[0]['savings_other']}
                                </p>
                            </div>
                            <div class="col detail-box">
                                <h3>Savings</h3>
                                <p>£{$financesData[0]['savings_account1'] + $financesData[0]['savings_account2']+ $financesData[0]['savings_account3'] + $financesData[0]['savings_other']}
                                </p>
                            </div>
                            <div class="col detail-box">
                                <h3>Investments</h3>
                                <p>£{$financesData[0]['savings_investments']}</p>
                            </div>
                        </div>
                        <div class="row section">
                            <div class="col">
                                <h2>Detailed Breakdown</h2>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">Account</th>
                                            <th scope="col">Value</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {if $financesData[0]['savings_current_account'] > 0}
                                            <tr>
                                                <th scope="row">Savings Current Account Balance</th>
                                                <td>£{$financesData[0]['savings_current_account']}</td>
                                            </tr>
                                        {/if}
                                        {if $financesData[0]['savings_account1'] > 0}
                                            <tr>
                                                <th scope="row">Savings Account 1 Balance
                                                <span class="badge bg-secondary">{$financesData[0]['savings_account1_interest']}% Int</span></th>
                                                <td>£{$financesData[0]['savings_account1']}</td>
                                            </tr>
                                        {/if}
                                        {if $financesData[0]['savings_account2'] > 0}
                                            <tr>
                                                <th scope="row">Savings Account 2 Balance
                                                <span class="badge bg-secondary">{$financesData[0]['savings_account2_interest']}% Int</span></th>                                                <td>£{$financesData[0]['savings_account2']}</td>
                                            </tr>
                                        {/if}
                                        {if $financesData[0]['savings_account3'] > 0}
                                            <tr>
                                                <th scope="row">Savings Account 3 Balance
                                                <span class="badge bg-secondary">{$financesData[0]['savings_account3_interest']}% Int</span></th>                                                <td>£{$financesData[0]['savings_account3']}</td>
                                            </tr>
                                        {/if}
                                        {if $financesData[0]['savings_investments'] > 0}
                                            <tr>
                                                <th scope="row">Savings Investments</th>
                                                <td>£{$financesData[0]['savings_investments']}</td>
                                            </tr>
                                        {/if}
                                        {if $financesData[0]['savings_other'] > 0}
                                            <tr>
                                                <th scope="row">Savings Other</th>
                                                <td>£{$financesData[0]['savings_other']}</td>
                                            </tr>
                                        {/if}
                                    </tbody>
                                </table>
                                <p>You last updated your finances on {$financesData[0]['input_date']}</p>
                            {else}
                            </div>
                            <div class="row text-center">
                                <div class="col detail-box pt-5 pb-5">
                                <h2>There's nothing here yet 😭</h2>
                            <p>Update your finances to see more information.</p>
                        </div>
                        {/if}
                    </div>
                </div>

            </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js@4.0.1/dist/chart.umd.min.js"></script>
    <script>
        const financesData = {$allFinancesData|json_encode};

        // Extracting data for chart
        const labels = financesData.map(entry => {
            const date = new Date(entry.input_date);
            return date.toLocaleDateString('en-UK', { weekday: 'long', year: 'numeric', month: 'short',
                day: 'numeric' });
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
    </body>
{/block}